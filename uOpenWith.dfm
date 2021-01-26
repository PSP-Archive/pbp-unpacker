object OpenWithForm: TOpenWithForm
  Left = 255
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Open With...'
  ClientHeight = 86
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 539
    Height = 17
    Align = alTop
    Shape = bsSpacer
  end
  object Bevel4: TBevel
    Left = 0
    Top = 17
    Width = 17
    Height = 54
    Align = alLeft
    Shape = bsSpacer
  end
  object Bevel3: TBevel
    Left = 0
    Top = 71
    Width = 539
    Height = 15
    Align = alBottom
    Shape = bsSpacer
  end
  object Bevel2: TBevel
    Left = 520
    Top = 17
    Width = 19
    Height = 54
    Align = alRight
    Shape = bsSpacer
  end
  object Button1: TButton
    Left = 488
    Top = 16
    Width = 27
    Height = 25
    Caption = '...'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 406
    Top = 40
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 16
    Width = 457
    Height = 21
    ItemHeight = 13
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'EXE'
    Filter = 'EXE Files (*.EXE)|*.EXE'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 136
    Top = 24
  end
end
