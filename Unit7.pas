unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Hash;

type
  TForm7 = class(TForm)
    E_Login: TEdit;
    E_Pass: TEdit;
    B_Auth: TButton;
    L_Invalid: TLabel;
    B_Reg: TButton;
    procedure B_AuthClick(Sender: TObject);
    procedure B_RegClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit8;

function MD5Hash(const AData: string): string;
begin
  Result := THashMD5.GetHashString(AData);
end;

function HashSHA1(const AValue: string): string;
begin
  Result := THashSHA1.GetHashString(AValue);
end;

procedure TForm7.B_AuthClick(Sender: TObject);
  var
  login, pass: string;
  found: Boolean;
begin
  found := False;

  DataModule2.T_admins.First;

  while not DataModule2.T_admins.Eof do
  begin
  login := DataModule2.T_adminsLogin.Value;
  pass := DataModule2.T_adminsPassword.Value;

  if (HashSHA1(MD5Hash(E_Login.Text)) = login) and (HashSHA1(MD5Hash(E_Pass.Text)) = pass) then
    begin
    found := True;
    Break;
    end;

  DataModule2.T_admins.Next;

  end;

    if found then
    begin
     L_Invalid.Visible:=False;
     E_Login.Text:='';
     E_Pass.Text:='';
     Form1.Show;
    end
    else
    begin
     L_Invalid.Visible:=True;
     E_Login.Text:='';
     E_Pass.Text:='';
    end;

end;


procedure TForm7.B_RegClick(Sender: TObject);
begin

Form8.Show;

Form7.Hide;

end;

end.
