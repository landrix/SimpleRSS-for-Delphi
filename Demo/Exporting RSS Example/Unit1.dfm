object Form1: TForm1
  Left = 76
  Top = 46
  Width = 870
  Height = 640
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
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
  object SimpleRSS: TSimpleRSS
    XMLFileOptions.Options = [doNodeAutoCreate, doAttrNull, doAutoPrefix, doNamespaceDecl]
    XMLFileOptions.ParseOptions = []
    Channel.Required.Title = 'SADev RSS'
    Channel.Required.Link = 'http://www.sadev.co.za'
    Channel.Required.Desc = 'RSS For www.sadev.co.za'
    Channel.Optional.Language = langEN_ZA
    Channel.Optional.Copyright = '(C) Copyright Robert MacLean 2003 All Rights Reserved World Wide'
    Channel.Optional.ManagingEditor = 'robert@sadev.co.za'
    Channel.Optional.WebMaster = 'robert@sadev.co.za'
    Channel.Optional.PubDate.DateTime = 37718.823652233800000000
    Channel.Optional.PubDate.TimeZone = 'SAST'
    Channel.Optional.LastBuildDate.DateTime = 37826.573645833320000000
    Channel.Optional.LastBuildDate.TimeZone = 'GMT'
    Channel.Optional.Categories = <>
    Channel.Optional.Generator = 'Test App'
    Channel.Optional.Docs = 'http://backend.userland.com/rss'
    Channel.Optional.Cloud.Port = 1
    Channel.Optional.TTL = 60
    Channel.Optional.Image.Include = False
    Channel.Optional.Image.Required.URL = 'URL Required'
    Channel.Optional.Image.Required.Title = 'Title Required'
    Channel.Optional.Image.Required.Link = 'Link Required'
    Channel.Optional.Image.Optional.Width = 0
    Channel.Optional.Image.Optional.Height = 0
    Channel.Optional.Rating = 'PICS Rating Here'
    Channel.Optional.SkipHours.h01 = True
    Channel.Optional.SkipHours.h02 = True
    Channel.Optional.SkipHours.h03 = True
    Channel.Optional.SkipHours.h04 = True
    Channel.Optional.SkipHours.h05 = True
    Channel.Optional.SkipHours.h06 = True
    Channel.Optional.SkipHours.h07 = True
    Channel.Optional.SkipHours.h22 = True
    Channel.Optional.SkipHours.h23 = True
    Channel.Optional.SkipHours.h00 = True
    Channel.Optional.SkipDays.Monday = False
    Channel.Optional.SkipDays.Tuesday = False
    Channel.Optional.SkipDays.Wednesday = False
    Channel.Optional.SkipDays.Thursday = False
    Channel.Optional.SkipDays.Friday = False
    Channel.Optional.SkipDays.Saturday = True
    Channel.Optional.SkipDays.Sunday = True
    Items = <
      item
        Title = 'Test'
        Description = 'This one was added in the delphi IDE'
        Categories = <
          item
            Title = 'InsideIDETest'
          end>
        Enclosure.Length = 0
        PubDate.DateTime = 37719.760242476850000000
        PubDate.TimeZone = 'GMT'
      end>
    Version = '2.0'
    Left = 144
    Top = 96
  end
end
