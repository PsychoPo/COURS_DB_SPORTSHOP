unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm6 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    DBChart2: TDBChart;
    Series2: TLineSeries;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Label1: TLabel;
    DBChart3: TDBChart;
    Series3: THorizBarSeries;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit3, Unit4, Unit5;

procedure TForm6.Button1Click(Sender: TObject);
begin
 // ��������� ������ �������� � �������� ������
 DBLookupComboBox1.KeyValue := null;
 //��������� ���������� ������� OnCloseUp � ���������� DBLookupCombo Box1
 DBLookupComboBox1CloseUp(nil);
end;


procedure TForm6.DBLookupComboBox1CloseUp(Sender: TObject);
var
 baseSQL, filter_s: string;
begin
 baseSQL := 'SELECT * FROM view_storage ';
 filter_s := '';
 if DBLookupComboBox1.KeyValue <> null then
 filter_s := 'WHERE IDtg = ' + inttostr(DBLookupComboBox1.KeyValue);
 DataModule2.Q_storage_count.sql.text := baseSQL + filter_s;
 DataModule2.Q_storage_count.Active := true;
 DBChart3.RefreshData;
end;


end.
