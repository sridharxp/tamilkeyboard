object frmCPCalc: TfrmCPCalc
  Left = 192
  Top = 132
  Width = 441
  Height = 399
  Caption = 'Code Point Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 170
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 54
      Width = 27
      Height = 18
      Caption = 'First'
    end
    object Label3: TLabel
      Left = 16
      Top = 97
      Width = 69
      Height = 18
      Caption = 'Code Point'
    end
    object Label2: TLabel
      Left = 230
      Top = 54
      Width = 47
      Height = 18
      Caption = 'Second'
    end
    object Label6: TLabel
      Left = 175
      Top = 16
      Width = 83
      Height = 18
      Caption = 'Surrogates'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtSecond: TEdit
      Left = 290
      Top = 49
      Width = 121
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtFirst: TEdit
      Left = 70
      Top = 49
      Width = 121
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtCodepoint: TEdit
      Left = 151
      Top = 92
      Width = 121
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 121
      Top = 135
      Width = 75
      Height = 25
      Caption = 'Calculate'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 225
      Top = 135
      Width = 75
      Height = 25
      Caption = 'Reerse'
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 177
    Width = 420
    Height = 170
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 50
      Width = 33
      Height = 18
      Caption = 'Utf-8'
    end
    object Label5: TLabel
      Left = 230
      Top = 50
      Width = 17
      Height = 18
      Caption = 'CP'
    end
    object Label7: TLabel
      Left = 141
      Top = 16
      Width = 138
      Height = 18
      Caption = 'Utf-8 to CodePoint'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtUtf8: TEdit
      Left = 70
      Top = 50
      Width = 121
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtCp: TEdit
      Left = 290
      Top = 50
      Width = 121
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnUtf2Cp: TButton
      Left = 119
      Top = 100
      Width = 75
      Height = 25
      Caption = 'Calculate'
      TabOrder = 2
      OnClick = btnUtf2CpClick
    end
    object BbtnCp2Utf: TButton
      Left = 227
      Top = 100
      Width = 75
      Height = 25
      Caption = 'Reerse'
      TabOrder = 3
      OnClick = BbtnCp2UtfClick
    end
  end
end
