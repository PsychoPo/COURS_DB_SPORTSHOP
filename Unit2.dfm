object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 640
  Width = 887
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Exte' +
      'nded Properties="Driver=MySQL ODBC 5.3 Unicode Driver;SERVER=loc' +
      'alhost;UID=root;DATABASE=goodsmanager;PORT=3306;COLUMN_SIZE_S32=' +
      '1"'
    Left = 56
    Top = 56
  end
  object T_goods_catalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforePost = T_goods_catalogBeforePost
    AfterPost = T_goods_catalogAfterPost
    AfterDelete = T_goods_catalogAfterDelete
    TableName = 'goods_catalog'
    Left = 152
    Top = 56
    object T_goods_catalogIDgc: TAutoIncField
      FieldName = 'IDgc'
      ReadOnly = True
    end
    object T_goods_cataloggcName: TWideStringField
      FieldName = 'gcName'
      Size = 100
    end
    object T_goods_catalogIDtg: TIntegerField
      FieldName = 'IDtg'
    end
    object T_goods_cataloggcDescription: TWideStringField
      FieldName = 'gcDescription'
      Size = 255
    end
    object T_goods_cataloggcPhoto: TBlobField
      FieldName = 'gcPhoto'
    end
    object T_goods_cataloggcCost: TBCDField
      FieldName = 'gcCost'
      OnSetText = T_goods_cataloggcCostSetText
      Precision = 10
      Size = 2
    end
  end
  object T_type_goods: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'type_goods'
    Left = 152
    Top = 120
  end
  object T_supliers_catalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'suppliers_catalog'
    Left = 152
    Top = 184
    object T_supliers_catalogIDsc: TAutoIncField
      FieldName = 'IDsc'
      ReadOnly = True
    end
    object T_supliers_catalogscName: TStringField
      FieldName = 'scName'
      OnGetText = T_supliers_catalogscNameGetText
      Size = 50
    end
    object T_supliers_catalogscAddress: TStringField
      FieldName = 'scAddress'
      Size = 100
    end
    object T_supliers_catalogscPhone: TStringField
      FieldName = 'scPhone'
      EditMask = '!\+7-000-000-0000;0;_'
      Size = 15
    end
    object T_supliers_catalogscEmail: TStringField
      FieldName = 'scEmail'
      OnValidate = T_supliers_catalogscEmailValidate
      Size = 50
    end
  end
  object T_operations: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_operationsAfterPost
    AfterDelete = T_operationsAfterDelete
    TableName = 'operations'
    Left = 152
    Top = 248
    object T_operationsIDoperation: TAutoIncField
      FieldName = 'IDoperation'
      ReadOnly = True
    end
    object T_operationsoDateTime: TDateTimeField
      FieldName = 'oDateTime'
    end
    object T_operationsoIsSale: TSmallintField
      FieldName = 'oIsSale'
    end
    object T_operationsIDsc: TIntegerField
      FieldName = 'IDsc'
    end
  end
  object T_op_goods_list: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforePost = T_op_goods_listBeforePost
    AfterPost = T_op_goods_listAfterPost
    AfterDelete = T_op_goods_listAfterDelete
    IndexFieldNames = 'IDoperation'
    MasterFields = 'IDoperation'
    MasterSource = DS_T_operations
    TableName = 'op_goods_list'
    Left = 152
    Top = 312
    object T_op_goods_listIDoperation: TIntegerField
      FieldName = 'IDoperation'
    end
    object T_op_goods_listIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object T_op_goods_listocCount: TIntegerField
      FieldName = 'ocCount'
      OnChange = T_op_goods_listocCountChange
    end
  end
  object T_storage: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'storage'
    Left = 152
    Top = 376
  end
  object DS_T_goods_catalog: TDataSource
    DataSet = T_goods_catalog
    Left = 272
    Top = 56
  end
  object DS_T_type_goods: TDataSource
    DataSet = T_type_goods
    Left = 272
    Top = 120
  end
  object DS_T_supliers_catalog: TDataSource
    DataSet = T_supliers_catalog
    Left = 272
    Top = 184
  end
  object DS_T_operations: TDataSource
    DataSet = T_operations
    Left = 272
    Top = 248
  end
  object DS_T_op_goods_list: TDataSource
    DataSet = T_op_goods_list
    Left = 272
    Top = 312
  end
  object DS_T_storage: TDataSource
    DataSet = T_storage
    Left = 272
    Top = 376
  end
  object Q_v_goods_catalog: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_goods_catalogAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_goods_catalog')
    Left = 384
    Top = 56
    object Q_v_goods_catalogIDgc: TAutoIncField
      FieldName = 'IDgc'
      ReadOnly = True
    end
    object Q_v_goods_cataloggcName: TWideStringField
      FieldName = 'gcName'
      Size = 100
    end
    object Q_v_goods_catalogtgName: TWideStringField
      FieldName = 'tgName'
      Size = 50
    end
    object Q_v_goods_cataloggcDescription: TWideStringField
      FieldName = 'gcDescription'
      Size = 255
    end
    object Q_v_goods_cataloggcPhoto: TBlobField
      FieldName = 'gcPhoto'
    end
    object Q_v_goods_cataloggcCost: TBCDField
      FieldName = 'gcCost'
      Precision = 10
      Size = 2
    end
  end
  object Q_v_goods_operations: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_goods_operationsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM view_goods_operations')
    Left = 384
    Top = 120
    object Q_v_goods_operationsIDoperation: TAutoIncField
      FieldName = 'IDoperation'
      ReadOnly = True
    end
    object Q_v_goods_operationsoDateTime: TDateTimeField
      FieldName = 'oDateTime'
    end
    object Q_v_goods_operationsoIsSale: TSmallintField
      FieldName = 'oIsSale'
    end
    object Q_v_goods_operationsopType: TWideStringField
      FieldName = 'opType'
      Size = 8
    end
    object Q_v_goods_operationsoFullCost: TFMTBCDField
      FieldName = 'oFullCost'
      Precision = 42
      Size = 2
    end
    object Q_v_goods_operationsscName: TWideStringField
      FieldName = 'scName'
      Size = 50
    end
  end
  object Q_v_storage: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM view_storage')
    Left = 384
    Top = 184
    object Q_v_storageIDstorage: TAutoIncField
      FieldName = 'IDstorage'
      ReadOnly = True
    end
    object Q_v_storageIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object Q_v_storagegcName: TWideStringField
      FieldName = 'gcName'
      Size = 100
    end
    object Q_v_storageIDtg: TIntegerField
      FieldName = 'IDtg'
    end
    object Q_v_storagetgName: TWideStringField
      FieldName = 'tgName'
      Size = 50
    end
    object Q_v_storagesCount: TIntegerField
      FieldName = 'sCount'
    end
  end
  object DS_Q_v_goods_catalog: TDataSource
    DataSet = Q_v_goods_catalog
    Left = 512
    Top = 56
  end
  object DS_Q_v_goods_operations: TDataSource
    DataSet = Q_v_goods_operations
    Left = 512
    Top = 120
  end
  object DS_Q_v_storage: TDataSource
    DataSet = Q_v_storage
    Left = 512
    Top = 184
  end
  object Q_v_operation_goods_list: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_operation_goods_listAfterScroll
    DataSource = DS_Q_v_goods_operations
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 240
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM view_operation_goods_list'
      'WHERE view_operation_goods_list.IDoperation = :IDoperation')
    Left = 384
    Top = 248
    object Q_v_operation_goods_listIDoperation: TIntegerField
      FieldName = 'IDoperation'
    end
    object Q_v_operation_goods_listIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object Q_v_operation_goods_listtgName: TWideStringField
      FieldName = 'tgName'
      Size = 50
    end
    object Q_v_operation_goods_listgcName: TWideStringField
      FieldName = 'gcName'
      Size = 100
    end
    object Q_v_operation_goods_listocCount: TIntegerField
      FieldName = 'ocCount'
    end
    object Q_v_operation_goods_listgcCost: TBCDField
      FieldName = 'gcCost'
      Precision = 10
      Size = 2
    end
    object Q_v_operation_goods_listogcFCost: TFMTBCDField
      FieldName = 'ogcFCost'
      Precision = 20
      Size = 2
    end
  end
  object DS_Q_v_operation_goods_list: TDataSource
    DataSet = Q_v_operation_goods_list
    Left = 512
    Top = 248
  end
  object Q_v_operations_fullcost: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DS_T_operations
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 240
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM view_operations_fullcost'
      'WHERE view_operations_fullcost.IDoperation = :IDoperation')
    Left = 384
    Top = 312
    object Q_v_operations_fullcostIDoperation: TIntegerField
      FieldName = 'IDoperation'
    end
    object Q_v_operations_fullcostoFullCost: TFMTBCDField
      FieldName = 'oFullCost'
      Precision = 42
      Size = 2
    end
  end
  object DS_Q_v_operations_fullcost: TDataSource
    DataSet = Q_v_operations_fullcost
    Left = 512
    Top = 312
  end
  object Q_v_selector_goods: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DS_T_operations
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 240
        Precision = 255
        Value = 1
      end
      item
        Name = 'IDgcSelected'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 255
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT IDgc, sNameCost, sCount'
      'FROM view_selector_goods'
      'WHERE view_selector_goods.IDgc NOT IN'
      ' (SELECT IDgc FROM view_operation_goods_list'
      ' WHERE view_operation_goods_list.IDoperation = :IDoperation)'
      'or view_selector_goods.IDgc = :IDgcSelected')
    Left = 384
    Top = 376
    object Q_v_selector_goodsIDgc: TAutoIncField
      FieldName = 'IDgc'
      ReadOnly = True
    end
    object Q_v_selector_goodssNameCost: TWideStringField
      FieldName = 'sNameCost'
      Size = 118
    end
    object Q_v_selector_goodssCount: TIntegerField
      FieldName = 'sCount'
      DisplayFormat = ' "('#1044#1086#1089#1090#1091#1087#1085#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077':" 0 "'#1096#1090'.)"'
    end
  end
  object DS_Q_v_selector_goods: TDataSource
    DataSet = Q_v_selector_goods
    Left = 512
    Top = 376
  end
  object Q_avg_cost_by_type: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      ' view_goods_catalog.tgName,'
      ' AVG(view_goods_catalog.gcCost) AS avgCost'
      'FROM view_goods_catalog'
      'GROUP BY view_goods_catalog.tgName')
    Left = 384
    Top = 440
  end
  object Q_sales_by_days: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      ' CAST(view_goods_operations.oDateTime AS date) AS oSaleDate,'
      ' SUM(view_goods_operations.oFullCost) AS oDayCost'
      'FROM view_goods_operations'
      'WHERE view_goods_operations.oIsSale = 1'
      'GROUP BY oSaleDate')
    Left = 384
    Top = 504
  end
  object Q_storage_count: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  view_storage.IDstorage,'
      '  view_storage.IDgc,'
      '  view_storage.gcName,'
      '  view_storage.IDtg,'
      '  view_storage.tgName,'
      '  view_storage.sCount'
      'FROM view_storage')
    Left = 384
    Top = 568
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_v_goods_catalog
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44890.739606608800000000
    ReportOptions.LastChange = 44890.745430937500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 760
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1090#1086#1074#1072#1088#1086#1074)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 109.606370000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'gcName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."gcName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'tgName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."tgName"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'gcCost'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."gcCost"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 664.819327000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44890.745746990700000000
    ReportOptions.LastChange = 44890.745746990700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 760
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 2
      ColumnWidth = 95.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '95')
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 102.047310000000000000
        Width = 359.055350000000000000
        Child = frxReport2.Child1
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        KeepChild = True
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1088#1090#1080#1082#1091#1083':')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088':')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 60.472480000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077':')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 7.559060000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'IDgc'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."IDgc"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 34.015770000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'gcName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."gcName"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 60.472480000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'gcDescription'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."gcDescription"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 664.819327000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 211.653680000000000000
        Width = 359.055350000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100':')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'gcCost'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."gcCost"]')
          ParentFont = False
        end
      end
    end
  end
  object op_master: TfrxDBDataset
    UserName = 'op_master'
    CloseDataSource = False
    DataSet = Q_v_goods_operations
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 184
  end
  object op_detail: TfrxDBDataset
    UserName = 'op_detail'
    CloseDataSource = False
    DataSet = Q_v_operation_goods_list
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 248
  end
  object frxReport3: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44890.772723449100000000
    ReportOptions.LastChange = 44890.772723449100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 760
    Top = 184
    Datasets = <
      item
        DataSet = op_master
        DataSetName = 'op_master'
      end
      item
        DataSet = op_detail
        DataSetName = 'op_detail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        DataSet = op_master
        DataSetName = 'op_master'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080':')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 7.559060000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'oDateTime'
          DataSet = op_master
          DataSetName = 'op_master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_master."oDateTime"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'opType'
          DataSet = op_master
          DataSetName = 'op_master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_master."opType"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 71.811070000000000000
        Width = 740.409927000000000000
        DataSet = op_detail
        DataSetName = 'op_detail'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'tgName'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."tgName"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'gcName'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."gcName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'gcCost'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."gcCost"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'gcCost'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."gcCost"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ogcFCost'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[op_detail."ogcFCost"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = Q_v_storage
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 312
  end
  object frxReport4: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44890.782909421300000000
    ReportOptions.LastChange = 44890.782909421300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 760
    Top = 312
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset2."tgName"'
        DrillDown = True
        KeepTogether = True
        ReprintOnNewPage = True
        ResetPageNumbers = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."tgName"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 578.268090000000000000
          Height = 22.677180000000000000
          DataField = 'gcName'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBDataset2."sCount"> < 6'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."gcName"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataField = 'sCount'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBDataset2."sCount"> < 6'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."sCount"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086': [SUM(<frxDBDataset2."sCount">, MasterData1)] '#1077#1076'.')
          ParentFont = False
        end
      end
    end
  end
  object T_admins: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'admins'
    Left = 152
    Top = 440
    object T_adminsIDad: TAutoIncField
      FieldName = 'IDad'
      ReadOnly = True
    end
    object T_adminsLogin: TWideStringField
      FieldName = 'Login'
      Size = 255
    end
    object T_adminsPassword: TWideStringField
      FieldName = 'Password'
      Size = 255
    end
  end
  object DS_T_admins: TDataSource
    DataSet = T_admins
    Left = 272
    Top = 440
  end
end
