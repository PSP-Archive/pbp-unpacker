object BinaryHelpForm: TBinaryHelpForm
  Left = 425
  Top = 239
  Width = 427
  Height = 546
  Caption = 'Binary Editor (Help)'
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
  object Label2: TLabel
    Left = 41
    Top = 17
    Width = 337
    Height = 482
    Align = alClient
    AutoSize = False
    Caption = 
      'Binary Editor'#13#13'About:'#13#13'Binary data contains many characters whic' +
      'h cannot be shown on-screen or inputted by keyboard so this edit' +
      'or is a quick and easy way of editing the data.'#13#13'Keyboard charac' +
      'ters (a-z, A-Z, etc) are displayed as normal but non-readable ch' +
      'aracters are expressed by their decimal/ASCII value.'#13'For example' +
      ' - a null/zero character would be written as <#0>.'#13#13'You may ente' +
      'r *any* number to convert to a character. Even keyboard characte' +
      'rs.'#13'Values 0 - 255 (<#0> - <#255>) are acceptable.'#13#13'Pressing the' +
      ' Space Bar will insert a normal space, but due to how Windows te' +
      'xt boxes work, this will make the next block of data split to a ' +
      'new line.'#13'This is *not* a problem, as it does not add any CR/LF ' +
      'characters.'#13'It does not look very nice though so you are welcome' +
      ' to use <#32> as a space.'
    WordWrap = True
  end
  object Panel15: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel14: TPanel
    Left = 0
    Top = 17
    Width = 41
    Height = 482
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel13: TPanel
    Left = 0
    Top = 499
    Width = 419
    Height = 13
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel11: TPanel
    Left = 378
    Top = 17
    Width = 41
    Height = 482
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
  end
end
