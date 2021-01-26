object BinaryForm: TBinaryForm
  Left = 114
  Top = 251
  Width = 935
  Height = 727
  Caption = 'Cheapo Binary Viewer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 927
    Height = 25
    Align = alTop
    Shape = bsSpacer
  end
  object Bevel4: TBevel
    Left = 0
    Top = 25
    Width = 25
    Height = 643
    Align = alLeft
    Shape = bsSpacer
  end
  object Bevel3: TBevel
    Left = 0
    Top = 668
    Width = 927
    Height = 25
    Align = alBottom
    Shape = bsSpacer
  end
  object Bevel2: TBevel
    Left = 902
    Top = 25
    Width = 25
    Height = 643
    Align = alRight
    Shape = bsSpacer
  end
  object Panel1: TPanel
    Left = 25
    Top = 25
    Width = 877
    Height = 643
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 877
      Height = 608
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 877
        Height = 608
        Align = alClient
        HideSelection = False
        ScrollBars = ssVertical
        TabOrder = 0
        WantReturns = False
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 608
      Width = 877
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Button1: TButton
        Left = 784
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Save'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 704
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 624
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Help'
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 544
        Top = 8
        Width = 75
        Height = 25
        Caption = 'ASCII Table'
        TabOrder = 3
        OnClick = Button4Click
      end
      object CheckBox1: TCheckBox
        Left = 0
        Top = 0
        Width = 361
        Height = 17
        Caption = 
          'Word Wrap (Unticking this will help when lines are splitting. Se' +
          'e '#39'Help'#39'.)'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBox1Click
      end
    end
  end
end
