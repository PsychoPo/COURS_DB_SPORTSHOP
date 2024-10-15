object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1054#1089#1085#1086#1074#1085#1086#1077' '#1084#1077#1085#1102
  ClientHeight = 548
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 733
    Height = 548
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
      object DBGrid1: TDBGrid
        Left = 0
        Top = 164
        Width = 725
        Height = 356
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataModule2.DS_Q_v_storage
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'gcName'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 363
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1058#1080#1087
            Width = 239
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sCount'
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Width = 83
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 725
        Height = 158
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 143
          Height = 13
          Caption = #1042#1099#1073#1086#1088' '#1079#1072#1087#1080#1089#1077#1081' '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1093
        end
        object Label4: TLabel
          Left = 8
          Top = 38
          Width = 253
          Height = 13
          Caption = #1055#1086#1076#1089#1074#1077#1090#1082#1072' '#1094#1074#1077#1090#1086#1084' '#1079#1085#1072#1095#1077#1085#1080#1081' '#1084#1077#1085#1100#1096#1077' '#1083#1080#1073#1086' '#1088#1072#1074#1085#1099#1093
        end
        object E_Filter: TEdit
          Left = 168
          Top = 8
          Width = 257
          Height = 21
          TabOrder = 0
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1090#1086#1074#1072#1088#1072' '#1080#1083#1080' '#1077#1075#1086' '#1090#1080#1087
          OnChange = E_FilterChange
        end
        object SpinEdit1: TSpinEdit
          Left = 267
          Top = 35
          Width = 57
          Height = 22
          MaxValue = 1000
          MinValue = 1
          TabOrder = 1
          Value = 1
          OnChange = SpinEdit1Change
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 75
          Width = 316
          Height = 83
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1076#1089#1074#1077#1090#1082#1080' '#1079#1072#1087#1080#1089#1077#1081
          TabOrder = 2
          object B_NA_ColorSel: TButton
            Left = 3
            Top = 24
            Width = 110
            Height = 56
            Caption = #1042#1099#1073#1086#1088' '#1094#1074#1077#1090#1072
            TabOrder = 0
            OnClick = B_NA_ColorSelClick
          end
          object B_NA_FontSel: TButton
            Left = 119
            Top = 24
            Width = 110
            Height = 56
            Caption = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
            TabOrder = 1
            OnClick = B_NA_FontSelClick
          end
          object p_NA_record: TPanel
            Left = 235
            Top = 32
            Width = 69
            Height = 35
            BevelInner = bvLowered
            Caption = #1090#1077#1082#1089#1090
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 330
          Top = 75
          Width = 316
          Height = 83
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1076#1089#1074#1077#1090#1082#1080' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1079#1072#1087#1080#1089#1080
          TabOrder = 3
          object B_A_ColorSel: TButton
            Left = 3
            Top = 24
            Width = 110
            Height = 56
            Caption = #1042#1099#1073#1086#1088' '#1094#1074#1077#1090#1072
            TabOrder = 0
            OnClick = B_A_ColorSelClick
          end
          object B_A_FontSel: TButton
            Left = 119
            Top = 24
            Width = 110
            Height = 56
            Caption = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
            TabOrder = 1
            OnClick = B_A_FontSelClick
          end
          object p_A_record: TPanel
            Left = 235
            Top = 32
            Width = 69
            Height = 33
            Caption = #1090#1077#1082#1089#1090
            Color = clMaroon
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 1
      object Label1: TLabel
        Left = 0
        Top = 362
        Width = 725
        Height = 13
        Align = alBottom
        Alignment = taCenter
        Caption = #1057#1086#1089#1090#1072#1074' '#1086#1087#1077#1088#1072#1094#1080#1080
        ExplicitWidth = 87
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 60
        Width = 719
        Height = 296
        Align = alTop
        DataSource = DataModule2.DS_Q_v_goods_operations
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'oDateTime'
            Title.Caption = #1044#1072#1090#1072
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'opType'
            Title.Caption = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'oFullCost'
            Title.Caption = #1055#1086#1083#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'scName'
            Title.Caption = #1048#1084#1103
            Width = 332
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 378
        Width = 719
        Height = 139
        Align = alBottom
        DataSource = DataModule2.DS_Q_v_operation_goods_list
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1058#1080#1087
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcName'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 315
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocCount'
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcCost'
            Title.Caption = #1062#1077#1085#1072' '#1079#1072' '#1096#1090#1091#1082#1091
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ogcFCost'
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 91
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 725
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object RadioGroup1: TRadioGroup
          Left = 0
          Top = 0
          Width = 281
          Height = 57
          Align = alLeft
          Caption = #1042#1099#1073#1086#1088' '#1086#1087#1077#1088#1072#1094#1080#1080
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #1042#1089#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
            #1055#1088#1086#1076#1072#1078#1080
            #1055#1086#1089#1090#1072#1074#1082#1080)
          TabOrder = 0
          OnClick = RadioGroup1Click
        end
        object GroupBox1: TGroupBox
          Left = 320
          Top = 0
          Width = 405
          Height = 57
          Align = alRight
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          TabOrder = 1
          object Label3: TLabel
            Left = 207
            Top = 22
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object CheckBox1: TCheckBox
            Left = 3
            Top = 22
            Width = 97
            Height = 17
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 96
            Top = 22
            Width = 105
            Height = 21
            Date = 44876.000000000000000000
            Time = 44876.000000000000000000
            TabOrder = 1
            OnChange = DateTimePicker1Change
          end
          object DateTimePicker2: TDateTimePicker
            Left = 225
            Top = 22
            Width = 105
            Height = 21
            Date = 44876.000000000000000000
            Time = 0.999988425923220300
            TabOrder = 2
            OnChange = DateTimePicker2Change
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 588
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072#1084#1080
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1040#1085#1072#1083#1080#1090#1080#1095#1077#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077
      object N6: TMenuItem
        Caption = #1043#1088#1072#1092#1080#1082#1080
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1050#1072#1090#1072#1083#1086#1075' '#1090#1086#1074#1072#1088#1086#1074'"'
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1069#1090#1080#1082#1077#1090#1082#1072'"'
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1103#1084
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1086' '#1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1079#1072#1087#1072#1089#1072#1093
        OnClick = N10Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 556
    object PM_add_sale: TMenuItem
      Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1087#1088#1086#1076#1072#1078#1091
      OnClick = PM_add_saleClick
    end
    object PM_add_supply: TMenuItem
      Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1087#1086#1089#1090#1072#1074#1082#1091
      OnClick = PM_add_supplyClick
    end
    object PM_Edit_Operation: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
      OnClick = PM_Edit_OperationClick
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 524
  end
  object ColorDialog1: TColorDialog
    Left = 492
  end
end
