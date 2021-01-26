object StatusForm: TStatusForm
  Left = 425
  Top = 386
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Status'
  ClientHeight = 126
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 379
    Height = 25
    Align = alTop
    Shape = bsSpacer
  end
  object Bevel2: TBevel
    Left = 354
    Top = 25
    Width = 25
    Height = 76
    Align = alRight
    Shape = bsSpacer
  end
  object Bevel3: TBevel
    Left = 0
    Top = 101
    Width = 379
    Height = 25
    Align = alBottom
    Shape = bsSpacer
  end
  object Bevel4: TBevel
    Left = 0
    Top = 25
    Width = 25
    Height = 76
    Align = alLeft
    Shape = bsSpacer
  end
  object Panel1: TPanel
    Left = 25
    Top = 25
    Width = 329
    Height = 76
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object ProgressBar1: TProgressBar
      Left = 0
      Top = 59
      Width = 329
      Height = 17
      Align = alBottom
      Step = 1
      TabOrder = 0
    end
  end
end
