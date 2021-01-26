object SFOForm: TSFOForm
  Left = 264
  Top = 154
  Width = 877
  Height = 802
  BorderStyle = bsSizeToolWin
  Caption = 'SFO Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 432
    Top = 408
    Width = 354
    Height = 267
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 237
      Width = 354
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Label26: TLabel
        Left = 104
        Top = 8
        Width = 33
        Height = 13
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Help'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 743
    Width = 869
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel8: TPanel
    Left = 864
    Top = 5
    Width = 5
    Height = 738
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel7: TPanel
    Left = 0
    Top = 5
    Width = 5
    Height = 738
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
  end
  object Panel11: TPanel
    Left = 5
    Top = 5
    Width = 859
    Height = 738
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object Splitter1: TSplitter
      Left = 0
      Top = 305
      Width = 859
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ResizeStyle = rsUpdate
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 859
      Height = 305
      Align = alTop
      Caption = 'Structure'
      TabOrder = 0
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 855
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 2
        Top = 298
        Width = 855
        Height = 5
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 852
        Top = 20
        Width = 5
        Height = 278
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel6: TPanel
        Left = 2
        Top = 20
        Width = 5
        Height = 278
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
      end
      object SFOList: TTntListView
        Left = 7
        Top = 20
        Width = 845
        Height = 278
        Align = alClient
        Columns = <
          item
            Caption = 'Key'
            Width = 350
          end
          item
            Caption = 'Data'
            Width = 356
          end>
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 4
        ViewStyle = vsReport
        Visible = False
        OnColumnDragged = SFOListColumnDragged
        OnCustomDrawItem = SFOListCustomDrawItem
        OnDblClick = SFOListDblClick
        OnMouseMove = SFOListMouseMove
        OnResize = SFOListResize
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 310
      Width = 859
      Height = 314
      Align = alClient
      Caption = 'Data'
      TabOrder = 1
      object Panel12: TPanel
        Left = 2
        Top = 307
        Width = 855
        Height = 5
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel13: TPanel
        Left = 852
        Top = 20
        Width = 5
        Height = 287
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Panel14: TPanel
        Left = 2
        Top = 20
        Width = 5
        Height = 287
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel15: TPanel
        Left = 2
        Top = 15
        Width = 855
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
      end
      object SFOList2: TTntListView
        Left = 7
        Top = 20
        Width = 845
        Height = 287
        Align = alClient
        Columns = <
          item
            Caption = '#'
          end
          item
            Caption = 'Key'
            Width = 300
          end
          item
            Caption = 'Data'
            Width = 250
          end
          item
            Caption = 'Padding'
            Width = 70
          end
          item
            Caption = 'Data Type'
            Width = 80
          end>
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 4
        ViewStyle = vsReport
        OnChange = SFOList2Change
        OnColumnDragged = SFOList2ColumnDragged
        OnCustomDrawItem = SFOListCustomDrawItem
        OnDblClick = SFOList2DblClick
        OnMouseMove = SFOListMouseMove
        OnResize = SFOList2Resize
      end
    end
    object Panel16: TPanel
      Left = 0
      Top = 624
      Width = 859
      Height = 114
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object GroupBox4: TGroupBox
        Left = 312
        Top = 0
        Width = 547
        Height = 114
        Align = alClient
        Caption = 'Advanced Options'
        TabOrder = 0
        object Label1: TLabel
          Left = 168
          Top = 64
          Width = 102
          Height = 13
          Caption = 'Fix data alignment by:'
        end
        object Label2: TLabel
          Left = 336
          Top = 64
          Width = 115
          Height = 13
          Caption = 'Aignment Requirements:'
        end
        object Label3: TLabel
          Left = 368
          Top = 88
          Width = 26
          Height = 13
          Caption = 'Bytes'
        end
        object Label5: TLabel
          Left = 104
          Top = 16
          Width = 55
          Height = 13
          Caption = 'SFO is for...'
        end
        object Button3: TButton
          Left = 8
          Top = 40
          Width = 153
          Height = 25
          Hint = 
            'Save the SFO without fixing the '#39'Structure'#39'. This allows you to ' +
            'define the structure however you want.'
          Caption = 'Save with Manual Structure'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 8
          Top = 80
          Width = 153
          Height = 25
          Hint = 'Update the '#39'Structure'#39' based on your current '#39'Data'#39' entries.'
          Caption = 'Update Structure Now'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button4Click
        end
        object CheckBox3: TCheckBox
          Left = 168
          Top = 40
          Width = 145
          Height = 17
          Caption = 'Do not write null-padding'
          TabOrder = 2
        end
        object ComboBox1: TComboBox
          Left = 184
          Top = 80
          Width = 145
          Height = 21
          Enabled = False
          ItemHeight = 13
          TabOrder = 3
          Text = 'Adding NULL bytes'
          Items.Strings = (
            'Adding NULL bytes')
        end
        object CheckBox4: TCheckBox
          Left = 168
          Top = 80
          Width = 15
          Height = 17
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object Edit1: TEdit
          Left = 336
          Top = 80
          Width = 25
          Height = 21
          TabOrder = 5
          Text = '4'
          OnEnter = Edit1Enter
        end
        object CheckBox1: TCheckBox
          Left = 336
          Top = 40
          Width = 208
          Height = 17
          Caption = 'Do not write Alphabetize fields on Save'
          TabOrder = 6
        end
        object Panel20: TPanel
          Left = 160
          Top = 16
          Width = 201
          Height = 25
          BevelOuter = bvNone
          TabOrder = 7
          object RadioButton3: TRadioButton
            Left = 8
            Top = 0
            Width = 89
            Height = 17
            Caption = 'PBP Package'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 96
            Top = 0
            Width = 81
            Height = 17
            Caption = 'SaveGame'
            TabOrder = 1
            OnClick = RadioButton4Click
          end
          object Button5: TButton
            Left = 170
            Top = 0
            Width = 19
            Height = 17
            Hint = 'This is IMPORTANT as both have a very important difference.'
            Caption = '?'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 307
        Height = 114
        Align = alLeft
        Caption = 'Basic Options'
        TabOrder = 1
        object Label4: TLabel
          Left = 216
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Move Data'
        end
        object CheckBox2: TCheckBox
          Left = 16
          Top = 24
          Width = 97
          Height = 17
          Caption = 'Advanced View'
          TabOrder = 0
          OnClick = CheckBox2Click
        end
        object Button1: TButton
          Left = 8
          Top = 80
          Width = 75
          Height = 25
          Hint = 
            'Save the SFO. Even if you are in '#39'Advanced View'#39', this will auto' +
            'matically fix the Structure.'
          Caption = 'Save'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 88
          Top = 80
          Width = 75
          Height = 25
          Caption = 'Cancel'
          TabOrder = 2
          OnClick = Button2Click
        end
        object Panel18: TPanel
          Left = 275
          Top = 15
          Width = 30
          Height = 97
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object UpDown1: TUpDown
            Left = 0
            Top = 3
            Width = 17
            Height = 25
            Min = -100
            TabOrder = 0
            Thousands = False
            OnClick = UpDown1Click
          end
        end
        object Panel19: TPanel
          Left = 8
          Top = 56
          Width = 185
          Height = 17
          BevelOuter = bvNone
          TabOrder = 4
          object RadioButton1: TRadioButton
            Left = 8
            Top = 0
            Width = 89
            Height = 17
            Caption = 'Save to PBP'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton2: TRadioButton
            Left = 96
            Top = 0
            Width = 81
            Height = 17
            Caption = 'Save to File'
            TabOrder = 1
          end
        end
      end
      object Panel17: TPanel
        Left = 307
        Top = 0
        Width = 5
        Height = 114
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 208
    object MenuItem1: TMenuItem
      Caption = '&Add'
      Enabled = False
    end
    object MenuItem2: TMenuItem
      Caption = '&Edit'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = '&Delete'
      Enabled = False
    end
    object Data1: TMenuItem
      Caption = 'Da&ta'
      Enabled = False
      object MoveUp1: TMenuItem
        Caption = 'Move Up'
      end
      object MoveDown1: TMenuItem
        Caption = 'Move Down'
      end
      object SortbyAlphabet1: TMenuItem
        Caption = 'Sort by Alphabet'
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'SFO'
    FileName = 'PARAM.SFO'
    Filter = 'SFO Files (*.SFO)|*.SFO'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 24
    Top = 568
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 160
    object File1: TMenuItem
      Caption = '&File'
      object new1: TMenuItem
        Caption = '&New'
        OnClick = new1Click
      end
      object Open1: TMenuItem
        Caption = '&Open'
        OnClick = Open1Click
      end
      object SavetoPBP1: TMenuItem
        Caption = 'Save to &PBP'
        OnClick = SavetoPBP1Click
      end
      object SavetoFile1: TMenuItem
        Caption = 'Save to &File'
        OnClick = SavetoFile1Click
      end
      object Close1: TMenuItem
        Caption = '&Close'
        OnClick = Close1Click
      end
    end
    object Options1: TMenuItem
      Caption = '&Options'
      object RevertAdvancedOptionstoDefault1: TMenuItem
        Caption = 'Revert Advanced Options to &Default'
        OnClick = RevertAdvancedOptionstoDefault1Click
      end
    end
    object Data2: TMenuItem
      Caption = '&Data'
      object emplates1: TMenuItem
        Caption = '&Templates'
        object BasicRunnablePBP1: TMenuItem
          Caption = 'Basic Runnable PBP Program'
          OnClick = BasicRunnablePBP1Click
        end
        object LaunchUpdaterMustUpdate1: TMenuItem
          Caption = 'Launch Updater ('#39'MustUpdate'#39')'
          OnClick = LaunchUpdaterMustUpdate1Click
        end
        object N151Update1: TMenuItem
          Caption = '1.51 Update'
          OnClick = N151Update1Click
        end
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Help2: TMenuItem
        Caption = '&Help'
        OnClick = Help2Click
      end
    end
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 416
    Top = 416
    object MenuItem4: TMenuItem
      Caption = '&Add'
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = '&Edit'
      OnClick = MenuItem5Click
    end
    object EditBinary1: TMenuItem
      Caption = 'Edit &Binary Data'
      object BinaryViewer1: TMenuItem
        Caption = '&Binary Editor'
        OnClick = BinaryViewer1Click
      end
      object OpenWith1: TMenuItem
        Caption = '&Open With...'
        OnClick = OpenWith1Click
      end
    end
    object MenuItem6: TMenuItem
      Caption = '&Delete'
      OnClick = MenuItem6Click
    end
    object MenuItem7: TMenuItem
      Caption = 'Da&ta'
      object MenuItem8: TMenuItem
        Caption = 'Move Up'
        OnClick = MenuItem8Click
      end
      object MenuItem9: TMenuItem
        Caption = 'Move Down'
        OnClick = MenuItem9Click
      end
      object MenuItem10: TMenuItem
        Caption = 'Sort by Alphabet'
        OnClick = MenuItem10Click
      end
    end
  end
end
