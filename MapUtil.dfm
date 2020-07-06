object frmMaputil: TfrmMaputil
  Left = 192
  Top = 132
  Width = 326
  Height = 357
  Caption = 'Map Search'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 243
    Height = 243
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 72
      Width = 61
      Height = 14
      Caption = 'Search Key'
    end
    object Label2: TLabel
      Left = 19
      Top = 40
      Width = 26
      Height = 14
      Caption = 'Map '
    end
    object edt13: TEdit
      Left = 135
      Top = 106
      Width = 38
      Height = 26
      ReadOnly = True
      TabOrder = 5
    end
    object edt12: TEdit
      Left = 76
      Top = 112
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 4
    end
    object edt11: TEdit
      Left = 19
      Top = 106
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 3
    end
    object edtSearch: TEdit
      Left = 86
      Top = 68
      Width = 38
      Height = 26
      TabOrder = 0
    end
    object Button1: TButton
      Left = 93
      Top = 215
      Width = 58
      Height = 19
      Caption = 'Search'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ckbHex: TCheckBox
      Left = 193
      Top = 75
      Width = 39
      Height = 13
      Caption = 'Hex'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object edt21: TEdit
      Left = 19
      Top = 140
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 7
    end
    object edt22: TEdit
      Left = 76
      Top = 140
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 8
    end
    object edt23: TEdit
      Left = 135
      Top = 140
      Width = 38
      Height = 26
      ReadOnly = True
      TabOrder = 9
    end
    object edt31: TEdit
      Left = 19
      Top = 174
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 11
    end
    object edt32: TEdit
      Left = 76
      Top = 174
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 12
    end
    object edt33: TEdit
      Left = 135
      Top = 174
      Width = 38
      Height = 26
      ReadOnly = True
      TabOrder = 13
    end
    object edt24: TEdit
      Left = 193
      Top = 140
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 10
    end
    object edt14: TEdit
      Left = 193
      Top = 106
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 6
    end
    object edt34: TEdit
      Left = 193
      Top = 174
      Width = 39
      Height = 26
      ReadOnly = True
      TabOrder = 14
    end
    object cmbKee: TComboBox
      Left = 86
      Top = 37
      Width = 100
      Height = 22
      ItemHeight = 14
      TabOrder = 15
      Text = 'UTKee'
      Items.Strings = (
        'BTKee'
        'VTKee'
        'ATKee'
        'UTKee'
        'BIKee'
        'AIKee'
        'UIKee'
        'STKee'
        'SIKee')
    end
  end
end
