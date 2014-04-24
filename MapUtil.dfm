object frmMaputil: TfrmMaputil
  Left = 192
  Top = 132
  Width = 326
  Height = 357
  Caption = 'Map Search'
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
    Width = 313
    Height = 313
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 92
      Width = 74
      Height = 18
      Caption = 'Search Key'
    end
    object Label2: TLabel
      Left = 24
      Top = 52
      Width = 33
      Height = 18
      Caption = 'Map '
    end
    object edt13: TEdit
      Left = 173
      Top = 136
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 5
    end
    object edt12: TEdit
      Left = 98
      Top = 144
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 4
    end
    object edt11: TEdit
      Left = 24
      Top = 136
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 3
    end
    object edtSearch: TEdit
      Left = 110
      Top = 88
      Width = 50
      Height = 26
      TabOrder = 0
    end
    object Button1: TButton
      Left = 119
      Top = 276
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ckbHex: TCheckBox
      Left = 248
      Top = 96
      Width = 50
      Height = 17
      Caption = 'Hex'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object edt21: TEdit
      Left = 24
      Top = 180
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 7
    end
    object edt22: TEdit
      Left = 98
      Top = 180
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 8
    end
    object edt23: TEdit
      Left = 173
      Top = 180
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 9
    end
    object edt31: TEdit
      Left = 24
      Top = 224
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 11
    end
    object edt32: TEdit
      Left = 98
      Top = 224
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 12
    end
    object edt33: TEdit
      Left = 173
      Top = 224
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 13
    end
    object edt24: TEdit
      Left = 248
      Top = 180
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 10
    end
    object edt14: TEdit
      Left = 248
      Top = 136
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 6
    end
    object edt34: TEdit
      Left = 248
      Top = 224
      Width = 50
      Height = 26
      ReadOnly = True
      TabOrder = 14
    end
    object cmbKee: TComboBox
      Left = 110
      Top = 48
      Width = 70
      Height = 26
      ItemHeight = 18
      TabOrder = 15
      Text = 'UTKee'
      Items.Strings = (
        'BTKee'
        'VTKee'
        'ATKee'
        'UTKee'
        'BIKee'
        'AIKee'
        'UIKee')
    end
  end
end
