object frmCPCalc: TfrmCPCalc
  Left = 197
  Top = 129
  Width = 572
  Height = 357
  Caption = 'Code Point Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 552
    Height = 132
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 42
      Width = 30
      Height = 19
      Caption = 'First'
    end
    object Label3: TLabel
      Left = 57
      Top = 67
      Width = 77
      Height = 19
      Caption = 'Code Point'
    end
    object Label2: TLabel
      Left = 300
      Top = 42
      Width = 51
      Height = 19
      Caption = 'Second'
    end
    object Label6: TLabel
      Left = 194
      Top = 12
      Width = 165
      Height = 14
      Caption = 'Surrogates <-> CodePoint'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtSecond: TEdit
      Left = 409
      Top = 38
      Width = 94
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtFirst: TEdit
      Left = 154
      Top = 38
      Width = 95
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtCodepoint: TEdit
      Left = 154
      Top = 71
      Width = 95
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 126
      Top = 105
      Width = 129
      Height = 19
      Caption = 'Get Codepoint'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 326
      Top = 105
      Width = 100
      Height = 19
      Caption = 'Get Pairs'
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = -8
    Top = 138
    Width = 562
    Height = 175
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 34
      Top = 39
      Width = 36
      Height = 19
      Caption = 'Utf-8'
    end
    object Label5: TLabel
      Left = 346
      Top = 39
      Width = 72
      Height = 19
      Caption = 'Codepoint'
    end
    object Label7: TLabel
      Left = 216
      Top = 12
      Width = 129
      Height = 14
      Caption = 'Utf-8 <-> CodePoint'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtUtf8: TEdit
      Left = 77
      Top = 39
      Width = 260
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtCp: TEdit
      Left = 433
      Top = 39
      Width = 94
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnUtf2Cp: TButton
      Left = 94
      Top = 84
      Width = 159
      Height = 19
      Caption = 'Utf8 to CodePoint'
      TabOrder = 2
      OnClick = btnUtf2CpClick
    end
    object btnBbtnCp2UtfHex: TButton
      Left = 210
      Top = 132
      Width = 142
      Height = 19
      Caption = 'Get UTF8 in Hex'
      TabOrder = 3
      OnClick = btnBbtnCp2UtfHexClick
    end
    object btn1: TButton
      Left = 367
      Top = 84
      Width = 100
      Height = 19
      Caption = 'Get UTF8'
      TabOrder = 4
      OnClick = btnBbtnCp2UtfClick
    end
  end
end
