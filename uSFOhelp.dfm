object SFOHelpForm: TSFOHelpForm
  Left = 591
  Top = 157
  Width = 425
  Height = 543
  BorderStyle = bsSizeToolWin
  Caption = 'SFO Editor (Help)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 41
    Top = 17
    Width = 335
    Height = 479
    Align = alClient
    AutoSize = False
    Caption = 
      'SFO Editor'#13#13'Usage:'#13#13'1. Normal View'#13#13'Right-click to add/move/edit' +
      ' entries.'#13#13'2.. Advanced View'#13#13'Here you can edit the structure of' +
      ' the file.'#13'This is *not* for casual SFO editing.'#13'Remember to '#39'Up' +
      'date Structure'#39' after adding or changing Data items if you want ' +
      'to see your changes reflected in the Structure.'#13#13#13'Hover over but' +
      'tons for descriptions.'#13#13'IMPORTANT INFORMATION'#13#13'"Data Type" is ta' +
      'ken from the "Data" table, unless you save with "Manual Structur' +
      'e", in which case it will be as specified in the "Structure" tab' +
      'le.'#13#13'SFO Data Keys need to be in alphabetical order. Right-Click' +
      '-->Data for the option.'#13#13'Data Type "4" represents binary data.  ' +
      'This data must be edited with a special data editor. SFO Editor ' +
      'has a "Binary Editor".'#13#13'I have opted for the ListView, rather th' +
      'an a Grid at this time.'#13'Partly because I don'#39't have the patience' +
      ' to modify all my code but partly because it provides a nice, ti' +
      'dy and clear view for reading and editing the data.'
    WordWrap = True
  end
  object Panel14: TPanel
    Left = 0
    Top = 17
    Width = 41
    Height = 479
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel15: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel11: TPanel
    Left = 376
    Top = 17
    Width = 41
    Height = 479
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel13: TPanel
    Left = 0
    Top = 496
    Width = 417
    Height = 13
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
  end
end
