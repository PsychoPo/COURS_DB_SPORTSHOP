unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, dateutils,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PopupMenu1: TPopupMenu;
    PM_add_sale: TMenuItem;
    PM_add_supply: TMenuItem;
    PM_Edit_Operation: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    E_Filter: TEdit;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    B_NA_ColorSel: TButton;
    B_NA_FontSel: TButton;
    p_NA_record: TPanel;
    B_A_ColorSel: TButton;
    B_A_FontSel: TButton;
    p_A_record: TPanel;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PM_add_saleClick(Sender: TObject);
    procedure PM_add_supplyClick(Sender: TObject);
    procedure PM_Edit_OperationClick(Sender: TObject);
    procedure E_FilterChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpinEdit1Change(Sender: TObject);
    procedure B_NA_ColorSelClick(Sender: TObject);
    procedure B_NA_FontSelClick(Sender: TObject);
    procedure B_A_ColorSelClick(Sender: TObject);
    procedure B_A_FontSelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  IsAppStartedFlag:boolean = false;
  CSort_st: Integer = -1; // ���������������� �������� �1, ��� ���
  // ��� ������� ��������� �� ���� ����������
  OrderBy_field: string; // �������� ���������� ��� SQL-�������
  CSort_op: Integer = -1; // ���������������� �������� �1, ��� ���
  // ��� ������� ��������� �� ���� ����������

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

procedure DisplayForm5();
begin
 // ���������� ���� (Trunc "��������" �����)
 Form5.DatePicker1.Date :=
 Trunc(DataModule2.T_operationsoDateTime.value);
 // ���������� �������
 Form5.TimePicker1.Time :=
 TimeOf(DataModule2.T_operationsoDateTime.value);
 // ����� ������ �����
 Form5.ShowModal;
end;

procedure TForm1.B_A_ColorSelClick(Sender: TObject);
begin
 // ������� �������� �������� ����� � ������ ColorDialog1
 ColorDialog1.Color := p_A_record.Color;
 // ���� ����������� ������ ������ �����
 if ColorDialog1.Execute then
 // �� ��������� ���� ������ ������� - p_A_record
 p_A_record.Color := ColorDialog1.Color;
 DBGrid1.Invalidate;
end;

procedure TForm1.B_A_FontSelClick(Sender: TObject);
begin
 // ������� ��������� �������� ������ � ������ FontDialog1
 FontDialog1.Font := p_A_record.Font;
 // ���� ����������� ������ ������ �����
 if FontDialog1.Execute then
 // �� ��������� ����� ������ ������� - p_A_record
 p_A_record.Font := FontDialog1.Font;
 DBGrid1.Invalidate;
end;

procedure TForm1.B_NA_ColorSelClick(Sender: TObject);
begin
 // ������� �������� �������� ����� � ������ ColorDialog1
 ColorDialog1.Color := p_NA_record.Color;
 // ���� ����������� ������ ������ �����
 if ColorDialog1.Execute then
 // �� ��������� ���� ������ ������� - p_NA_record
 p_NA_record.Color := ColorDialog1.Color;
 // ���������� (�����������) DBGrid1
 DBGrid1.Invalidate;
end;

procedure TForm1.B_NA_FontSelClick(Sender: TObject);
begin
 // ������� ��������� �������� ������ � ������ FontDialog1
 FontDialog1.Font := p_NA_record.Font;
 // ���� ����������� ������ ������ �����
 if FontDialog1.Execute then
 // �� ��������� ����� ������ ������� - p_NA_record
 p_NA_record.Font := FontDialog1.Font;
 DBGrid1.Invalidate;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  // ���������� �������
  DataModule2.Q_v_goods_operations.Filtered := false;
  // ������������ ������ ����������
  DataModule2.Q_v_goods_operations.Filter := 'oDateTime >= ' +
  QuotedStr(FormatDateTime('YYYY-MM-DD', DateTimePicker1.Date)) +
  ' and oDateTime <= ' + QuotedStr(FormatDateTime('YYYY-MM-DD HH:MM:SS',
  DateTimePicker2.DateTime));
  // ������� ��������� ���������� ������� ��� � ��������� CheckBox1
  DataModule2.Q_v_goods_operations.Filtered := CheckBox1.Checked;
end;

procedure TForm1.DateTimePicker1Change(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

procedure TForm1.DateTimePicker2Change(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 with DBGrid1.Canvas do
 begin // ��������, �� ������ �� �������� ���� sCount
 // ��� �������� ������������� � SpinEdit1
 if (DataModule2.Q_v_storagesCount.value <= SpinEdit1.value) then
 // ���� ������� �����������, �� ������� ������ ������
 begin
 // ��������� ���������� ������ � ���� �� ������ p_NA_record
 Font := p_NA_record.Font;
 Brush.Color := p_NA_record.Color;
 if (gdSelected in State) then // ���� ������ �������
 begin
 // ��������� ���������� ������ � ���� �� ������ p_A_record
 Font := p_A_record.Font;
 Brush.Color := p_A_record.Color;
 end;
 end;
 end; // With
 // �������� ��������� ���� ����������� �������
 DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;


procedure TForm1.DBGrid1TitleClick(Column: TColumn);
var
 sorttype: string;
begin
 // ������� ��������� ��� �������, � ������� �������� � ������� ���
if CSort_st >= 0 then
 begin
 DBGrid1.Columns[CSort_st].Title.Font.Color := clBlack;
 DBGrid1.Columns[CSort_st].Title.Font.Style :=
 Column.Title.Font.Style - [fsBold];
 end;
 // ��������� �������� ���������� ��� ������ ��������
 // (������������� ���������� �� ����������� ASC)
 sorttype := '';
 // �������� ������ ������������ ������� � ���������� ����������
 CSort_st := Column.Index;
 // ��������, �� ����������� �� ���������� �� ��������
 // ��� ������� ����
 if OrderBy_field <> Column.FieldName + ' DESC' then
 begin
 // ���� �������� �� �����������, �� ������, ����������� ��
 // �� ����� ���� ��� ���
 if OrderBy_field = Column.FieldName then
 // ���� ���������� �� ������� ���� ��� ����, �� ��������
 // ��� ����������
 sorttype := ' DESC';
 // ������� ����� ������ ��������� ��� ����������� ���� ����������
 Column.Title.Font.Style := Column.Title.Font.Style + [fsBold];
 if sorttype = '' then
 Column.Title.Font.Color := clGreen // �� �����������
 else
 Column.Title.Font.Color := clBlue; // �� ��������
 // ��������� ���������� ��� ���� � �������� ����������
 OrderBy_field := Column.FieldName + sorttype;
 end
 else
 // ���� � ������� ��� �������������� ���������� �� ��������,
 // �� �������� ����������
 OrderBy_field := '';
 // ��������� ����� �������� ������ �� ������������� �������
 // ���� ����������� �� �������
 E_FilterChange(self);
end;

procedure TForm1.DBGrid2TitleClick(Column: TColumn);
var
 sorttype: string;
begin
 // ������� ��������� ��� �������, � ������� �������� � ������� ���
 if CSort_op >= 0 then
 begin
 DBGrid2.Columns[CSort_op].Title.Font.Color := clBlack;
 DBGrid2.Columns[CSort_op].Title.Font.Style :=
 Column.Title.Font.Style - [fsBold];
 end;
 // ��������� �������� ���������� ��� ������ ��������
 // (������������� ���������� �� ����������� ASC)
 sorttype := '';
 // �������� ������ ������������ �������
 CSort_op := Column.Index;
 // ��������, �� ����������� �� ���������� �� ��������
 // ��� ������� ����
 if DataModule2.Q_v_goods_operations.Sort <> Column.FieldName +
 ' DESC' then
 begin
 // ���� �������� �� �����������, �� ������, ����������� ��
 // �� ����� ���� ��� ���
 if DataModule2.Q_v_goods_operations.Sort = Column.FieldName then
 // ���� ���������� �� ������� ���� ��� ����, �� ��������
 // ��� ����������
 sorttype := ' DESC';
 // ������� ����� ������ ��������� ��� ����������� ���� ����������
 Column.Title.Font.Style := Column.Title.Font.Style + [fsBold];
 if sorttype = '' then
 Column.Title.Font.Color := clGreen // �� �����������
 else
 Column.Title.Font.Color := clBlue; // �� ��������
 // ���������� ���������� ��� ���� � �������� ����������
 DataModule2.Q_v_goods_operations.Sort :=
 Column.FieldName + sorttype;
 end
 else
 // ���� � ������� ��� �������������� ���������� �� ��������,
 // �� �������� ����������
 DataModule2.Q_v_goods_operations.Sort := '';
end;

procedure TForm1.E_FilterChange(Sender: TObject);
var
 baseSQL, filter_s: string;
 orderBy_s: string; // ����������� (���������� ����������)
begin
 DataModule2.Q_v_storage.DisableControls;
 DataModule2.Q_v_storage.Active := false;
 baseSQL := 'SELECT * FROM view_storage ';
 filter_s := '';
 orderBy_s :=''; // ����������� (������� ������� ��������)
 if length(E_Filter.Text) > 0 then
 filter_s := 'WHERE tgName LIKE ' + QuotedStr('%' + E_Filter.Text +
 '%') + ' OR gcName LIKE ' + QuotedStr('%' + E_Filter.Text + '%');
 // ����������� (�������� ������� �� ���� ����������)
 if length(OrderBy_field) > 0 then
 // ������� ������ � ���������� ����������,
 // ���� ���� �������� OrderBy_field ������ 0
 orderBy_s := ' ORDER BY ' + OrderBy_field;
 DataModule2.Q_v_storage.SQL.Text := baseSQL + filter_s + orderBy_s;
 DataModule2.Q_v_storage.Active := true;
 DataModule2.Q_v_storage.EnableControls;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  IsAppStartedFlag := true;
  Form7.Hide;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IsAppStartedFlag := false;
  Form7.Show;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  DataModule2.frxReport4.ShowReport();
end;

procedure TForm1.N2Click(Sender: TObject);
begin
   Close;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Form6.ShowModal;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  DataModule2.frxReport1.ShowReport();
end;

procedure TForm1.N8Click(Sender: TObject);
begin
 DataModule2.frxReport2.ShowReport();
end;

procedure TForm1.N9Click(Sender: TObject);
begin
 DataModule2.frxReport3.ShowReport();
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  // ��������� ����� � ���������� �����������
 DataModule2.Q_v_goods_operations.DisableControls;
 // ������������ �� Q_v_goods_operations
 DataModule2.Q_v_goods_operations.active := false;
 // ������� SQL ��� � �� Q_v_goods_operations
 DataModule2.Q_v_goods_operations.SQL.Clear;
 // ��������� ������� ����� SQL ������� �� ����� ������
 DataModule2.Q_v_goods_operations.SQL.Add
 ('SELECT * FROM view_goods_operations ');
 // � ����������� �� ���������� �������� � RadioGroup1 ���������
 // ������� ������� � SQL ������
 if RadioGroup1.ItemIndex = 1 then
 DataModule2.Q_v_goods_operations.SQL.Add('WHERE oIsSale = 1 ');
 if RadioGroup1.ItemIndex = 2 then
 DataModule2.Q_v_goods_operations.SQL.Add('WHERE oIsSale = 0 ');
 // ���������� �� Q_v_goods_operations

 DataModule2.Q_v_goods_operations.active := true;
 // �������� ����� � ���������� �����������
 DataModule2.Q_v_goods_operations.EnableControls;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  DBGrid1.Invalidate;
end;

procedure TForm1.PM_add_saleClick(Sender: TObject);
begin
  // ������� Now() ���������� ������� ���� � �����
  DataModule2.T_operations.AppendRecord([nil, Now(), 1]);
  DisplayForm5();
end;

procedure TForm1.PM_add_supplyClick(Sender: TObject);
begin
  DataModule2.T_operations.AppendRecord([nil, Now(), 0]);
  DisplayForm5();
end;

procedure TForm1.PM_Edit_OperationClick(Sender: TObject);
begin
  DisplayForm5();
end;

end.
