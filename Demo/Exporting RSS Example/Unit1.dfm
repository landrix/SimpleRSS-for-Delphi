object Form1: TForm1
  Left = 76
  Top = 46
  Caption = 'Form1'
  ClientHeight = 601
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 149
    Height = 13
    Caption = 'Output from component (export)'
  end
  object Label2: TLabel
    Left = 16
    Top = 280
    Width = 242
    Height = 13
    Caption = 'output reloaded and reoutputed (import then export)'
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 24
    Width = 862
    Height = 241
    Align = alCustom
    TabOrder = 0
    ControlData = {
      4C00000017590000E81800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object WebBrowser2: TWebBrowser
    Left = 0
    Top = 304
    Width = 862
    Height = 302
    Align = alCustom
    TabOrder = 1
    ControlData = {
      4C00000017590000361F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
