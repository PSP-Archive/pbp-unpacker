object DataEditForm: TDataEditForm
  Left = 301
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Editing Data'
  ClientHeight = 86
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 6
    Width = 4
    Height = 53
    Align = alLeft
    Shape = bsSpacer
  end
  object Bevel6: TBevel
    Left = 635
    Top = 6
    Width = 4
    Height = 53
    Align = alRight
    Shape = bsSpacer
  end
  object Bevel7: TBevel
    Left = 0
    Top = 0
    Width = 639
    Height = 6
    Align = alTop
    Shape = bsSpacer
  end
  object Bevel8: TBevel
    Left = 0
    Top = 59
    Width = 639
    Height = 8
    Align = alBottom
    Shape = bsSpacer
  end
  object Panel1: TPanel
    Left = 4
    Top = 6
    Width = 631
    Height = 53
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel3: TBevel
      Left = 224
      Top = 0
      Width = 4
      Height = 53
      Align = alRight
      Shape = bsSpacer
    end
    object Bevel5: TBevel
      Left = 453
      Top = 0
      Width = 4
      Height = 53
      Align = alRight
      Shape = bsSpacer
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 224
      Height = 53
      Align = alClient
      Caption = 'Key'
      TabOrder = 0
      object KeyEdit: TComboBox
        Left = 8
        Top = 24
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = KeyEditChange
        OnKeyPress = KeyEditKeyPress
        OnSelect = KeyEditSelect
        Items.Strings = (
          'l'
          'p'
          'o'
          'k'
          'l'
          'm'
          'n')
      end
    end
    object GroupBox2: TGroupBox
      Left = 228
      Top = 0
      Width = 225
      Height = 53
      Align = alRight
      Caption = 'Data'
      TabOrder = 1
      object DataEdit: TTntEdit
        Left = 8
        Top = 24
        Width = 209
        Height = 22
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'KeyEdit'
        OnChange = DataEditChange
        OnKeyPress = KeyEditKeyPress
      end
      object Button2: TButton
        Left = 200
        Top = 0
        Width = 19
        Height = 17
        Hint = 
          'Special characters may be entered by <#x>.'#13'<#13><#10> is used fo' +
          'r a line break.'
        Caption = '?'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 457
      Top = 0
      Width = 87
      Height = 53
      Align = alRight
      Caption = 'Padding'
      TabOrder = 2
      object PaddingEdit: TTntEdit
        Left = 8
        Top = 24
        Width = 73
        Height = 22
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'KeyEdit'
        OnKeyPress = KeyEditKeyPress
      end
    end
    object GroupBox4: TGroupBox
      Left = 544
      Top = 0
      Width = 87
      Height = 53
      Align = alRight
      Caption = 'Type'
      TabOrder = 3
      object TypeEdit: TTntEdit
        Left = 8
        Top = 24
        Width = 73
        Height = 22
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'KeyEdit'
        OnChange = TypeEditChange
        OnKeyPress = KeyEditKeyPress
      end
      object Button1: TButton
        Left = 64
        Top = 0
        Width = 19
        Height = 17
        Hint = 
          '0 = Binary Data'#13'2 = Text String (UTF8)'#13'4 = Integer (0 - 42949672' +
          '95)'
        Caption = '?'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 67
    Width = 639
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 
      'Return = Save. Escape = Cancel. Warning: Changing data types bet' +
      'ween 0 and 2 will lose the current string data.'
  end
end
