object ImageForm: TImageForm
  Left = 224
  Top = 192
  BorderStyle = bsNone
  Caption = 'ImageForm'
  ClientHeight = 105
  ClientWidth = 115
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 32
    Width = 107
    Height = 107
    AutoSize = True
    TabOrder = 0
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 105
      Height = 105
      AutoSize = True
      Center = True
      OnMouseDown = Image1MouseDown
    end
  end
end
