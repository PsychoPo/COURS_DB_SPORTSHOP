object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082#1080
  ClientHeight = 789
  ClientWidth = 1091
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
    Width = 1091
    Height = 789
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1086#1083'-'#1074#1086' '#1090#1086#1074#1072#1088#1072
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 1083
        Height = 761
        Title.Text.Strings = (
          'TDBChart')
        View3D = False
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          HoverElement = []
          Legend.Visible = False
          Marks.Style = smsValue
          Marks.OnTop = True
          DataSource = DataModule2.Q_avg_cost_by_type
          ShowInLegend = False
          XLabelsSource = 'tgName'
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'avgCost'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1080
      ImageIndex = 1
      object DBChart2: TDBChart
        Left = 0
        Top = 0
        Width = 1083
        Height = 761
        Title.Text.Strings = (
          #1055#1088#1086#1076#1072#1078#1080)
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMinimum = False
        View3D = False
        View3DOptions.Orthogonal = False
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 715
        ExplicitHeight = 401
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: TLineSeries
          HoverElement = [heCurrent]
          DataSource = DataModule2.Q_sales_by_days
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'oSaleDate'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'oDayCost'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1082#1083#1072#1076
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1083
        Height = 49
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 715
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 105
          Height = 13
          Caption = #1059#1082#1072#1078#1080#1090#1077' '#1090#1080#1087' '#1090#1086#1074#1072#1088#1072
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 128
          Top = 16
          Width = 145
          Height = 21
          KeyField = 'IDtg'
          ListField = 'tgName'
          ListSource = DataModule2.DS_T_type_goods
          TabOrder = 0
          OnCloseUp = DBLookupComboBox1CloseUp
        end
        object Button1: TButton
          Left = 296
          Top = 0
          Width = 409
          Height = 49
          Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object DBChart3: TDBChart
        Left = 0
        Top = 55
        Width = 1083
        Height = 706
        Title.Text.Strings = (
          #1050#1086#1083'-'#1074#1086' '#1090#1086#1074#1072#1088#1072' '#1085#1072' '#1089#1082#1083#1072#1076#1077)
        BottomAxis.Title.Caption = #1050#1086#1083'-'#1074#1086', '#1096#1090'.'
        LeftAxis.Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
        Align = alBottom
        TabOrder = 1
        Anchors = [akLeft, akTop, akRight, akBottom]
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series3: THorizBarSeries
          HoverElement = []
          BarBrush.Gradient.Direction = gdLeftRight
          Marks.OnTop = True
          DataSource = DataModule2.Q_storage_count
          XLabelsSource = 'gcName'
          Gradient.Direction = gdLeftRight
          XValues.Name = 'Bar'
          XValues.Order = loNone
          XValues.ValueSource = 'sCount'
          YValues.Name = 'Y'
          YValues.Order = loAscending
        end
      end
    end
  end
end
