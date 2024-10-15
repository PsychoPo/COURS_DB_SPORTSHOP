object Form7: TForm7
  Left = 0
  Top = 0
  ActiveControl = E_Login
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 205
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object L_Invalid: TLabel
    Left = 160
    Top = 24
    Width = 147
    Height = 13
    Caption = #1053#1077#1074#1077#1088#1085#1099#1081' '#1083#1086#1075#1080#1085' '#1080#1083#1080' '#1087#1072#1088#1086#1083#1100'!'
    Visible = False
  end
  object E_Login: TEdit
    Left = 160
    Top = 56
    Width = 161
    Height = 21
    TabOrder = 0
    TextHint = #1051#1086#1075#1080#1085
  end
  object E_Pass: TEdit
    Left = 160
    Top = 96
    Width = 161
    Height = 21
    TabOrder = 1
    TextHint = #1055#1072#1088#1086#1083#1100
  end
  object B_Auth: TButton
    Left = 160
    Top = 144
    Width = 75
    Height = 25
    Caption = #1042#1093#1086#1076
    TabOrder = 2
    OnClick = B_AuthClick
  end
  object B_Reg: TButton
    Left = 241
    Top = 144
    Width = 80
    Height = 25
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    TabOrder = 3
    OnClick = B_RegClick
  end
end
