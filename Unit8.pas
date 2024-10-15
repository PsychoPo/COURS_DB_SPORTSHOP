unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Hash; //IdHash, IdHashMessageDigest

type
  TForm8 = class(TForm)
    B_Register: TButton;
    E_L: TEdit;
    E_P: TEdit;
    L_Tip: TLabel;
    procedure B_RegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit1, Unit2;

function MD5Hash(const AData: string): string;
begin
  Result := THashMD5.GetHashString(AData);
end;
//var
//  MD5: TIdHashMessageDigest5;
//begin
//  MD5 := TIdHashMessageDigest5.Create;
//  try
//    Result := MD5.HashStringAsHex(AData);
//  finally
//    MD5.Free;
//  end;
//end;

function HashSHA1(const AValue: string): string;
begin
  Result := THashSHA1.GetHashString(AValue);
end;

procedure TForm8.B_RegisterClick(Sender: TObject);
var
  Login_Hashed: string;
  Password_Hashed: string;
begin

  if (E_L.Text = '') or (E_P.Text = '') then
    L_Tip.Caption := 'Поля логина или пароля пусты!'
  else if (Length(E_L.Text) <= 8) or (Length(E_P.Text) <= 8) then
      L_Tip.Caption := 'В вашем логине или пароле менее 9 символов!'
    else
      begin
        Login_Hashed := HashSHA1(MD5Hash(E_L.Text));
        Password_Hashed := HashSHA1(MD5Hash(E_P.Text));

        DataModule2.T_admins.Insert;
        DataModule2.T_admins.FieldByName('Login').AsString := Login_Hashed;
        DataModule2.T_admins.FieldByName('Password').AsString := Password_Hashed;
        DataModule2.T_admins.Post;

        ShowMessage('Логин и пароль успешно сохранены в базе данных.');

        Form1.Show;
        Form8.Close;
        L_Tip.Caption := '';
        E_L.Text := '';
        E_P.Text := '';
      end;
end;

end.
