object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072#1084#1080
  ClientHeight = 808
  ClientWidth = 1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1081
    Height = 808
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 878
    ExplicitHeight = 628
    object TabSheet1: TTabSheet
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      object Label1: TLabel
        Left = 0
        Top = 495
        Width = 1073
        Height = 13
        Align = alBottom
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
        ExplicitTop = 263
        ExplicitWidth = 53
      end
      object DBText1: TDBText
        AlignWithMargins = True
        Left = 3
        Top = 511
        Width = 1067
        Height = 26
        Align = alBottom
        AutoSize = True
        DataField = 'gcDescription'
        DataSource = DataModule2.DS_T_goods_catalog
        WordWrap = True
        ExplicitTop = 279
        ExplicitWidth = 858
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 617
        Height = 495
        Align = alLeft
        DataSource = DataModule2.DS_Q_v_goods_catalog
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcName'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 374
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcCost'
            Title.Caption = #1062#1077#1085#1072
            Width = 85
            Visible = True
          end>
      end
      object InsertEditDeletePanel: TPanel
        Left = 0
        Top = 540
        Width = 1073
        Height = 108
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 360
        ExplicitWidth = 870
        object InsertButton: TButton
          Left = 131
          Top = 3
          Width = 108
          Height = 32
          Caption = #1042#1089#1090#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = InsertButtonClick
        end
        object EditButton: TButton
          Left = 261
          Top = 3
          Width = 108
          Height = 32
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = EditButtonClick
        end
        object DeleteButton: TButton
          Left = 3
          Top = 3
          Width = 108
          Height = 32
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = DeleteButtonClick
        end
        object E_dFormat: TEdit
          Left = 417
          Top = 3
          Width = 73
          Height = 21
          Alignment = taCenter
          TabOrder = 3
          Text = '#.00 '#8381
        end
        object GroupBox1: TGroupBox
          Left = 261
          Top = 41
          Width = 356
          Height = 56
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1094#1077#1085#1077
          TabOrder = 4
          object Label6: TLabel
            Left = 8
            Top = 24
            Width = 42
            Height = 13
            Caption = #1059#1089#1083#1086#1074#1080#1077
          end
          object Label7: TLabel
            Left = 116
            Top = 24
            Width = 48
            Height = 13
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          end
          object ComboCostCondition: TComboBox
            Left = 56
            Top = 24
            Width = 54
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = '>'
            OnChange = ComboCostConditionChange
            Items.Strings = (
              '>'
              '>='
              '='
              '<>'
              '<'
              '<=')
          end
          object SpinCostValue: TSpinEdit
            Left = 170
            Top = 24
            Width = 72
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
            OnChange = SpinCostValueChange
          end
          object ChkCostFilter: TCheckBox
            Left = 264
            Top = 24
            Width = 97
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 2
            OnClick = ChkCostFilterClick
          end
        end
        object B_setFormat: TButton
          Left = 496
          Top = 3
          Width = 121
          Height = 22
          Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1086#1088#1084#1072#1090
          TabOrder = 5
          OnClick = B_setFormatClick
        end
      end
      object PanelToInputValues: TPanel
        Left = 0
        Top = 648
        Width = 1073
        Height = 132
        Align = alBottom
        TabOrder = 2
        Visible = False
        ExplicitTop = 468
        ExplicitWidth = 870
        object Label2: TLabel
          Left = 3
          Top = 6
          Width = 57
          Height = 13
          Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
        end
        object Label3: TLabel
          Left = 168
          Top = 6
          Width = 48
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        end
        object Label4: TLabel
          Left = 496
          Top = 5
          Width = 26
          Height = 13
          Caption = #1062#1077#1085#1072
        end
        object Label5: TLabel
          Left = 3
          Top = 69
          Width = 49
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 3
          Top = 24
          Width = 145
          Height = 21
          DataField = 'IDtg'
          DataSource = DataModule2.DS_T_goods_catalog
          KeyField = 'IDtg'
          ListField = 'tgName'
          ListSource = DataModule2.DS_T_type_goods
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 168
          Top = 24
          Width = 314
          Height = 21
          DataField = 'gcName'
          DataSource = DataModule2.DS_T_goods_catalog
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 496
          Top = 24
          Width = 121
          Height = 21
          DataField = 'gcCost'
          DataSource = DataModule2.DS_T_goods_catalog
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 58
          Top = 64
          Width = 353
          Height = 21
          DataField = 'gcDescription'
          DataSource = DataModule2.DS_T_goods_catalog
          TabOrder = 3
        end
        object PostButton: TButton
          Left = 417
          Top = 59
          Width = 97
          Height = 70
          Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
          TabOrder = 4
          OnClick = PostButtonClick
        end
        object CancelButton: TButton
          Left = 520
          Top = 59
          Width = 97
          Height = 70
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          TabOrder = 5
          OnClick = CancelButtonClick
        end
        object B_SetImage: TButton
          Left = 3
          Top = 91
          Width = 162
          Height = 38
          Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091' '
          TabOrder = 6
          OnClick = B_SetImageClick
        end
        object B_ClearImage: TButton
          Left = 209
          Top = 91
          Width = 162
          Height = 38
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
          TabOrder = 7
          OnClick = B_ClearImageClick
        end
      end
      object Goods_Image: TDBImage
        AlignWithMargins = True
        Left = 623
        Top = 3
        Width = 447
        Height = 489
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'gcPhoto'
        DataSource = DataModule2.DS_T_goods_catalog
        Proportional = True
        Stretch = True
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1080#1087' '#1085#1086#1084#1077#1088'/'#1090#1086#1074#1072#1088
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1073
        Height = 780
        Align = alClient
        DataSource = DataModule2.DS_T_type_goods
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDtg'
            Title.Caption = #1053#1086#1084#1077#1088' '#1090#1080#1087#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
            Visible = True
          end>
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 820
    Top = 308
  end
end
