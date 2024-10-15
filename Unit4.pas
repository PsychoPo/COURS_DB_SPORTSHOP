unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.Samples.Spin,
  Vcl.ExtDlgs;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    DBText1: TDBText;
    InsertEditDeletePanel: TPanel;
    PanelToInputValues: TPanel;
    InsertButton: TButton;
    EditButton: TButton;
    DeleteButton: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    PostButton: TButton;
    CancelButton: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    E_dFormat: TEdit;
    B_setFormat: TButton;
    GroupBox1: TGroupBox;
    ComboCostCondition: TComboBox;
    SpinCostValue: TSpinEdit;
    ChkCostFilter: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Goods_Image: TDBImage;
    B_SetImage: TButton;
    B_ClearImage: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure InsertButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure PostButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure B_setFormatClick(Sender: TObject);
    procedure ChkCostFilterClick(Sender: TObject);
    procedure SpinCostValueChange(Sender: TObject);
    procedure ComboCostConditionChange(Sender: TObject);
    procedure B_SetImageClick(Sender: TObject);
    procedure B_ClearImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3;

procedure TForm4.B_ClearImageClick(Sender: TObject);
begin
// �������� ����� ������� ����
DataModule2.T_goods_cataloggcPhoto.Clear;
// ��������� �������� nil ��� ��������
Goods_Image.Picture := nil;
end;

procedure TForm4.B_setFormatClick(Sender: TObject);
begin
  DataModule2.Q_v_goods_cataloggcCost.DisplayFormat := E_dFormat.Text;
end;

procedure TForm4.B_SetImageClick(Sender: TObject);
begin
// �������� ����������� �� ���������� ����
if OpenPictureDialog1.Execute then
// � ������ ���� ������������ ����� �� ������ Ok
 // � ���������� ���� ��������� ���������� �� ��������� ����
if FileExists(OpenPictureDialog1.FileName) then
begin
// ��������� ��������� ���� � ��������� Goods_Image
Goods_Image.Picture.LoadFromFile(OpenPictureDialog1.FileName);
// ��������� ��������� ���� � ���� gcPhoto
DataModule2.T_goods_cataloggcPhoto.LoadFromFile
(OpenPictureDialog1.FileName);
end;
end;


procedure TForm4.CancelButtonClick(Sender: TObject);
begin
  if DataModule2.T_goods_catalog.State in [dsInsert, dsEdit] then
    begin
    // �������� �������� ������
    DataModule2.T_goods_catalog.Cancel;
    InsertEditDeletePanel.Visible := True;
    PanelToInputValues.Visible := False;
    DBGrid1.Enabled := True;
    end;
end;

procedure TForm4.ChkCostFilterClick(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 DataModule2.Q_v_goods_catalog.Active := False;
 baseSQL := 'SELECT * FROM view_goods_catalog';
 DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL;
 filter_s := '';
 if ChkCostFilter.Checked then
 begin
 // ������������ ������� �������
 filter_s := ' WHERE gcCost ' + ComboCostCondition.Text + ' ' +
 IntToStr(SpinCostValue.Value);
 DataModule2.Q_v_goods_catalog.SQL.Text := baseSQL + filter_s;
 end;
 DataModule2.Q_v_goods_catalog.Active := True;
end;

procedure TForm4.ComboCostConditionChange(Sender: TObject);
begin
  ChkCostFilterClick(nil);
end;

procedure TForm4.DeleteButtonClick(Sender: TObject);
begin
  if DataModule2.T_goods_catalog.State = dsBrowse then
    if MessageDlg('����������� �������� ������', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
      DataModule2.T_goods_catalog.Delete;
end;

procedure TForm4.EditButtonClick(Sender: TObject);
begin
  if DataModule2.T_goods_catalog.State = dsBrowse then
    begin
      DBGrid1.Enabled := False;
      InsertEditDeletePanel.Visible := False;
      PanelToInputValues.Visible := True;
      // ��������� �� � ����� �������������� ������, ���������
      // ����� Edit
      DataModule2.T_goods_catalog.Edit;
    end;
end;

procedure TForm4.InsertButtonClick(Sender: TObject);
begin
if DataModule2.T_goods_catalog.State = dsBrowse then
begin
// �������� ������������ ��������
Goods_Image.Picture := nil;
// ��������� ����������� ��������� ������� ��
// � ���������� DBGrid1
DBGrid1.Enabled := False;
// ������� ��������� ������ � �������� ��������, ��������,
// �������
InsertEditDeletePanel.Visible := False;
// ������� ������� ������ ��� ����� �������� � ������
PanelToInputValues.Visible := True;
// ��������� �� � ����� ���������� ������, ���������
// ����� Append
DataModule2.T_goods_catalog.Append;
end;
end;
procedure TForm4.PostButtonClick(Sender: TObject);
begin
  if DataModule2.T_goods_catalog.State in [dsInsert, dsEdit] then
    begin
      // �������� �������� ����������
      DataModule2.T_goods_catalog.Post;
      // ������� ������� ������ � �������� ��������, ��������,
      // �������
      InsertEditDeletePanel.Visible := True;
      // ������� ��������� ������ ��� ����� �������� � ������
      PanelToInputValues.Visible := False;
      // ������� ����������� ��������� ������� ��
      // � ���������� DBGrid1
      DBGrid1.Enabled := True;
    end;
end;

procedure TForm4.SpinCostValueChange(Sender: TObject);
begin
  ChkCostFilterClick(nil);
end;

end.
