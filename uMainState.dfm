object MainStateForm: TMainStateForm
  Left = 444
  Top = 231
  Width = 316
  Height = 457
  Caption = 'PBP Unpacker - [Load/Save State]'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel4: TBevel
    Left = 0
    Top = 9
    Width = 9
    Height = 374
    Align = alLeft
    Shape = bsSpacer
  end
  object Bevel1: TBevel
    Left = 0
    Top = 383
    Width = 308
    Height = 5
    Align = alBottom
    Shape = bsSpacer
  end
  object Bevel2: TBevel
    Left = 0
    Top = 0
    Width = 308
    Height = 9
    Align = alTop
    Shape = bsSpacer
  end
  object Bevel3: TBevel
    Left = 299
    Top = 9
    Width = 9
    Height = 374
    Align = alRight
    Shape = bsSpacer
  end
  object Panel1: TPanel
    Left = 9
    Top = 9
    Width = 288
    Height = 374
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 288
      Height = 374
      Align = alClient
      Caption = 'Saved States'
      TabOrder = 0
      object Bevel5: TBevel
        Left = 2
        Top = 24
        Width = 9
        Height = 339
        Align = alLeft
        Shape = bsSpacer
      end
      object Bevel6: TBevel
        Left = 277
        Top = 24
        Width = 9
        Height = 339
        Align = alRight
        Shape = bsSpacer
      end
      object Bevel7: TBevel
        Left = 2
        Top = 15
        Width = 284
        Height = 9
        Align = alTop
        Shape = bsSpacer
      end
      object Bevel8: TBevel
        Left = 2
        Top = 363
        Width = 284
        Height = 9
        Align = alBottom
        Shape = bsSpacer
      end
      object Panel4: TPanel
        Left = 11
        Top = 24
        Width = 266
        Height = 339
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 266
          Height = 311
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object ListView1: TTntListView
            Left = 0
            Top = 0
            Width = 266
            Height = 311
            Align = alClient
            Columns = <
              item
                Caption = 'Name'
                Width = 200
              end
              item
                Caption = 'Type'
              end>
            TabOrder = 0
            ViewStyle = vsReport
            OnCustomDrawItem = ListView1CustomDrawItem
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 311
          Width = 266
          Height = 28
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Bevel9: TBevel
            Left = 0
            Top = 25
            Width = 266
            Height = 3
            Align = alBottom
            Shape = bsSpacer
          end
          object Bevel10: TBevel
            Left = 0
            Top = 0
            Width = 266
            Height = 3
            Align = alTop
            Shape = bsSpacer
          end
          object Edit1: TEdit
            Left = 0
            Top = 4
            Width = 257
            Height = 21
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 388
    Width = 308
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button1: TButton
      Left = 216
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 136
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Load'
      TabOrder = 1
    end
  end
end
