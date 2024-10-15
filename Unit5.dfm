object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
  ClientHeight = 443
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object P_EditOperationInfo: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GB_DateTime: TGroupBox
      Left = 8
      Top = 8
      Width = 337
      Height = 57
      Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
      TabOrder = 0
      object DatePicker1: TDatePicker
        Left = 11
        Top = 22
        Height = 21
        Date = 44876.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
        OnChange = DatePicker1Change
      end
      object TimePicker1: TTimePicker
        Left = 176
        Top = 22
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 44876.036816990740000000
        TimeFormat = 'hh:mm:ss'
        OnChange = TimePicker1Change
      end
    end
    object GB_Supplier: TGroupBox
      Left = 351
      Top = 8
      Width = 274
      Height = 57
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      TabOrder = 1
      object DBL_supplier: TDBLookupComboBox
        Left = 16
        Top = 22
        Width = 249
        Height = 21
        DataField = 'IDsc'
        DataSource = DataModule2.DS_T_operations
        KeyField = 'IDsc'
        ListField = 'scName'
        ListSource = DataModule2.DS_T_supliers_catalog
        TabOrder = 0
      end
    end
    object B_ModifyOperationInfo: TButton
      Left = 631
      Top = 8
      Width = 87
      Height = 57
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = B_ModifyOperationInfoClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 726
    Height = 192
    Align = alTop
    DataSource = DataModule2.DS_Q_v_operation_goods_list
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gcName'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 309
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ocCount'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gcCost'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ogcFCost'
        Title.Caption = #1057#1091#1084#1084#1072
        Visible = True
      end>
  end
  object P_BaseControl: TPanel
    Left = 0
    Top = 312
    Width = 726
    Height = 80
    Align = alBottom
    TabOrder = 2
    object DBText1: TDBText
      Left = 617
      Top = 18
      Width = 65
      Height = 17
      DataField = 'oFullCost'
      DataSource = DataModule2.DS_Q_v_operations_fullcost
    end
    object Label1: TLabel
      Left = 519
      Top = 16
      Width = 92
      Height = 13
      Caption = #1055#1086#1083#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
    end
    object B_AppendGoods: TButton
      Left = 19
      Top = 8
      Width = 145
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1086#1074#1072#1088
      TabOrder = 0
      OnClick = B_AppendGoodsClick
    end
    object B_ModifyGoods: TButton
      Left = 184
      Top = 8
      Width = 145
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1086#1074#1072#1088
      TabOrder = 1
      OnClick = B_ModifyGoodsClick
    end
    object B_DeleteGoods: TButton
      Left = 351
      Top = 8
      Width = 145
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      TabOrder = 2
      OnClick = B_DeleteGoodsClick
    end
    object B_CompleteModifyOperation: TButton
      Left = 519
      Top = 41
      Width = 194
      Height = 33
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1077
      TabOrder = 3
      OnClick = B_CompleteModifyOperationClick
    end
  end
  object P_ModifyData: TPanel
    Left = 0
    Top = 392
    Width = 726
    Height = 51
    Align = alBottom
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 19
      Top = 5
      Width = 87
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
    end
    object Label3: TLabel
      Left = 394
      Top = 5
      Width = 60
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object DBText2: TDBText
      Left = 495
      Top = 6
      Width = 218
      Height = 17
      DataField = 'sCount'
      DataSource = DataModule2.DS_Q_v_selector_goods
    end
    object DBEdit: TDBEdit
      Left = 394
      Top = 24
      Width = 79
      Height = 21
      DataField = 'ocCount'
      DataSource = DataModule2.DS_T_op_goods_list
      MaxLength = 10
      TabOrder = 0
    end
    object DBL_goods_selector: TDBLookupComboBox
      Left = 19
      Top = 24
      Width = 350
      Height = 21
      DataField = 'IDgc'
      DataSource = DataModule2.DS_T_op_goods_list
      KeyField = 'IDgc'
      ListField = 'sNameCost'
      ListSource = DataModule2.DS_Q_v_selector_goods
      TabOrder = 1
    end
    object B_SaveData: TButton
      Left = 495
      Top = 24
      Width = 106
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 2
      OnClick = B_SaveDataClick
    end
    object B_CancelModify: TButton
      Left = 607
      Top = 24
      Width = 106
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 3
      OnClick = B_CancelModifyClick
    end
  end
end
