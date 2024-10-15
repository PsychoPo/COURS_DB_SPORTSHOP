object Form8: TForm8
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 168
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object L_Tip: TLabel
    Left = 8
    Top = 8
    Width = 3
    Height = 13
    Alignment = taCenter
  end
  object B_Register: TButton
    Left = 136
    Top = 102
    Width = 113
    Height = 25
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1080#1088#1086#1074#1072#1090#1100#1089#1103
    TabOrder = 0
    OnClick = B_RegisterClick
  end
  object E_L: TEdit
    Left = 104
    Top = 48
    Width = 177
    Height = 21
    TabOrder = 1
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1083#1086#1075#1080#1085
  end
  object E_P: TEdit
    Left = 104
    Top = 75
    Width = 177
    Height = 21
    TabOrder = 2
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
  end
end
