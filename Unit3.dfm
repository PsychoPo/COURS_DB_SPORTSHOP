object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 231
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 686
    Height = 231
    Align = alClient
    DataSource = DataModule2.DS_T_supliers_catalog
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDsc'
        Title.Caption = #8470
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scName'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scAddress'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scPhone'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scEmail'
        Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1072#1076#1088#1077#1089
        Width = 153
        Visible = True
      end>
  end
end
