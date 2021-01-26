object StructureEditForm: TStructureEditForm
  Left = 362
  Top = 579
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Editing Structure'
  ClientHeight = 86
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
      Left = 284
      Top = 0
      Width = 4
      Height = 53
      Align = alRight
      Shape = bsSpacer
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 284
      Height = 53
      Align = alClient
      Caption = 'Key'
      TabOrder = 0
      object KeyEdit: TTntEdit
        Left = 8
        Top = 24
        Width = 265
        Height = 22
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'KeyEdit'
        OnKeyPress = KeyEditKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 288
      Top = 0
      Width = 343
      Height = 53
      Align = alRight
      Caption = 'Data'
      TabOrder = 1
      object DataEdit: TTntEdit
        Left = 8
        Top = 24
        Width = 321
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 67
    Width = 639
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Return = Save. Escape = Cancel.'
  end
end
