object ASCIIForm: TASCIIForm
  Left = 518
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ASCII Table'
  ClientHeight = 606
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 363
    Height = 25
    Align = alTop
    Shape = bsSpacer
  end
  object Bevel4: TBevel
    Left = 0
    Top = 25
    Width = 25
    Height = 518
    Align = alLeft
    Shape = bsSpacer
  end
  object Bevel3: TBevel
    Left = 0
    Top = 543
    Width = 363
    Height = 25
    Align = alBottom
    Shape = bsSpacer
  end
  object Bevel2: TBevel
    Left = 338
    Top = 25
    Width = 25
    Height = 518
    Align = alRight
    Shape = bsSpacer
  end
  object Bevel5: TBevel
    Left = 0
    Top = 581
    Width = 363
    Height = 25
    Align = alBottom
    Shape = bsSpacer
  end
  object Label1: TLabel
    Left = 0
    Top = 568
    Width = 363
    Height = 13
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = 'Double click on an item to insert it. '
  end
  object TntListView1: TTntListView
    Left = 25
    Top = 25
    Width = 313
    Height = 518
    Align = alClient
    Columns = <
      item
        Caption = 'Number (DEC)'
        Width = 100
      end
      item
        Alignment = taCenter
        Caption = '<#x>'
        Width = 100
      end
      item
        Alignment = taCenter
        Caption = 'Character'
        Width = 100
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
    OnColumnDragged = TntListView1ColumnDragged
    OnCustomDrawItem = TntListView1CustomDrawItem
    OnDblClick = TntListView1DblClick
  end
  object TntMemo1: TTntMemo
    Left = 16
    Top = 64
    Width = 57
    Height = 497
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.WideStrings = (
      'NULL'
      'SOH'
      'STX'
      'ETX'
      'EOT'
      'ENQ'
      'ACK'
      'BEL'
      'BS'
      'TAB'
      'LF'
      'VT'
      'FF'
      'CR'
      'SO'
      'SI'
      'DLE'
      'DC1'
      'DC2'
      'DC3'
      'DC4'
      'NAK'
      'SYN'
      'ETB'
      'CAN'
      'EM'
      'SUB'
      'ESC'
      'FS'
      'GS'
      'RS'
      'US'
      ' '
      '!'
      '"'
      '#'
      '$'
      '%'
      '&'
      #39
      '('
      ')'
      '*'
      '+'
      ','
      '-'
      '.'
      #8260
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      ':'
      ';'
      '<'
      '='
      '>'
      '?'
      '@'
      'A'
      'B'
      'C'
      'D'
      'E'
      'F'
      'G'
      'H'
      'I'
      'J'
      'K'
      'L'
      'M'
      'N'
      'O'
      'P'
      'Q'
      'R'
      'S'
      'T'
      'U'
      'V'
      'W'
      'X'
      'Y'
      'Z'
      '['
      '\'
      ']'
      '^'
      '_'
      '`'
      'a'
      'b'
      'c'
      'd'
      'e'
      'f'
      'g'
      'h'
      'i'
      'j'
      'k'
      'l'
      'm'
      'n'
      'o'
      'p'
      'q'
      'r'
      's'
      't'
      'u'
      'v'
      'w'
      'x'
      'y'
      'z'
      '{'
      '|'
      '}'
      '~'
      ''
      #8364
      #65533
      #8218
      #402
      #8222
      #8230
      #8224
      #8225
      #710
      #8240
      #352
      #8249
      #338
      #65533
      #381
      #65533
      #65533
      #8216
      #8217
      #8220
      #8221
      #8226
      #8211
      #8212
      #732
      #8482
      #353
      #8250
      #339
      #65533
      #382
      #376
      ' '
      #161
      #162
      #163
      #164
      #165
      #167
      #167
      #168
      #169
      #170
      #171
      #172
      ''
      #174
      #175
      #176
      #177
      #178
      #179
      #180
      #181
      #182
      #183
      #184
      #185
      #186
      #187
      #188
      #189
      #190
      #161
      #192
      #193
      #194
      #195
      #196
      #197
      #198
      #199
      #200
      #201
      #202
      #203
      #204
      #205
      #206
      #207
      #208
      #209
      #210
      #211
      #212
      #213
      #214
      #215
      #216
      #217
      #218
      #219
      #220
      #221
      #222
      #223
      #224
      #225
      #226
      #227
      #228
      #229
      #230
      #231
      #232
      #233
      #234
      #235
      #236
      #237
      #238
      #239
      #240
      #241
      #242
      #243
      #244
      #245
      #246
      #247
      #248
      #249
      #250
      #251
      #252
      #253
      #254
      #255)
    Lines.WideStrings_UTF7 = (
      'NULL'
      'SOH'
      'STX'
      'ETX'
      'EOT'
      'ENQ'
      'ACK'
      'BEL'
      'BS'
      'TAB'
      'LF'
      'VT'
      'FF'
      'CR'
      'SO'
      'SI'
      'DLE'
      'DC1'
      'DC2'
      'DC3'
      'DC4'
      'NAK'
      'SYN'
      'ETB'
      'CAN'
      'EM'
      'SUB'
      'ESC'
      'FS'
      'GS'
      'RS'
      'US'
      ' '
      '!'
      '"'
      '#'
      '$'
      '%'
      '&'
      #39
      '('
      ')'
      '*'
      '+-'
      ','
      '-'
      '.'
      '+IEQ'
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      ':'
      ';'
      '<'
      '='
      '>'
      '?'
      '@'
      'A'
      'B'
      'C'
      'D'
      'E'
      'F'
      'G'
      'H'
      'I'
      'J'
      'K'
      'L'
      'M'
      'N'
      'O'
      'P'
      'Q'
      'R'
      'S'
      'T'
      'U'
      'V'
      'W'
      'X'
      'Y'
      'Z'
      '['
      '+AFw'
      ']'
      '^'
      '_'
      '`'
      'a'
      'b'
      'c'
      'd'
      'e'
      'f'
      'g'
      'h'
      'i'
      'j'
      'k'
      'l'
      'm'
      'n'
      'o'
      'p'
      'q'
      'r'
      's'
      't'
      'u'
      'v'
      'w'
      'x'
      'y'
      'z'
      '{'
      '|'
      '}'
      '+AH4'
      '+AH8'
      '+IKw'
      '+//0'
      '+IBo'
      '+AZI'
      '+IB4'
      '+ICY'
      '+ICA'
      '+ICE'
      '+AsY'
      '+IDA'
      '+AWA'
      '+IDk'
      '+AVI'
      '+//0'
      '+AX0'
      '+//0'
      '+//0'
      '+IBg'
      '+IBk'
      '+IBw'
      '+IB0'
      '+ICI'
      '+IBM'
      '+IBQ'
      '+Atw'
      '+ISI'
      '+AWE'
      '+IDo'
      '+AVM'
      '+//0'
      '+AX4'
      '+AXg'
      ' '
      '+AKE'
      '+AKI'
      '+AKM'
      '+AKQ'
      '+AKU'
      '+AKc'
      '+AKc'
      '+AKg'
      '+AKk'
      '+AKo'
      '+AKs'
      '+AKw'
      ''
      '+AK4'
      '+AK8'
      '+ALA'
      '+ALE'
      '+ALI'
      '+ALM'
      '+ALQ'
      '+ALU'
      '+ALY'
      '+ALc'
      '+ALg'
      '+ALk'
      '+ALo'
      '+ALs'
      '+ALw'
      '+AL0'
      '+AL4'
      '+AKE'
      '+AMA'
      '+AME'
      '+AMI'
      '+AMM'
      '+AMQ'
      '+AMU'
      '+AMY'
      '+AMc'
      '+AMg'
      '+AMk'
      '+AMo'
      '+AMs'
      '+AMw'
      '+AM0'
      '+AM4'
      '+AM8'
      '+ANA'
      '+ANE'
      '+ANI'
      '+ANM'
      '+ANQ'
      '+ANU'
      '+ANY'
      '+ANc'
      '+ANg'
      '+ANk'
      '+ANo'
      '+ANs'
      '+ANw'
      '+AN0'
      '+AN4'
      '+AN8'
      '+AOA'
      '+AOE'
      '+AOI'
      '+AOM'
      '+AOQ'
      '+AOU'
      '+AOY'
      '+AOc'
      '+AOg'
      '+AOk'
      '+AOo'
      '+AOs'
      '+AOw'
      '+AO0'
      '+AO4'
      '+AO8'
      '+APA'
      '+APE'
      '+API'
      '+APM'
      '+APQ'
      '+APU'
      '+APY'
      '+APc'
      '+APg'
      '+APk'
      '+APo'
      '+APs'
      '+APw'
      '+AP0'
      '+AP4'
      '+AP8')
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
end
