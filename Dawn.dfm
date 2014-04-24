object frmDawn: TfrmDawn
  Left = 192
  Top = 132
  Width = 265
  Height = 176
  Caption = 'Dawn Tamil '
  Color = clBtnFace
  Constraints.MaxHeight = 180
  Constraints.MaxWidth = 265
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 18
  object Panel1: TPanel
    Left = 10
    Top = 64
    Width = 241
    Height = 40
    TabOrder = 0
    object cmbKbd: TComboBox
      Left = 128
      Top = 7
      Width = 110
      Height = 26
      ItemHeight = 18
      ItemIndex = 0
      TabOrder = 0
      Text = 'Typewriter'
      Items.Strings = (
        'Typewriter'
        'Inscript')
    end
    object cmbFont: TComboBox
      Left = 8
      Top = 7
      Width = 110
      Height = 26
      ItemHeight = 18
      ItemIndex = 2
      TabOrder = 1
      Text = 'Tau'
      Items.Strings = (
        'ISCII'
        'Tam'
        'Tau')
    end
  end
  object Panel2: TPanel
    Left = 10
    Top = 0
    Width = 241
    Height = 40
    TabOrder = 1
    object lblLayout: TLabel
      Left = 5
      Top = 11
      Width = 44
      Height = 18
      Caption = 'Layout'
    end
    object Info: TLabel
      Left = 64
      Top = 11
      Width = 96
      Height = 18
      Caption = 'No Keyboard'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object HotKeyMgr: THotKeyManager
    OnHotKeyPressed = HotKeyMgrHotKeyPressed
    Left = 152
    Top = 65512
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 16
    object Help1: TMenuItem
      Caption = 'Help'
      object HotKeys1: TMenuItem
        Caption = 'HotKeys'
        OnClick = HotKeys1Click
      end
      object Author1: TMenuItem
        Caption = 'Author'
        OnClick = Author1Click
      end
    end
    object ool1: TMenuItem
      Caption = 'Tool'
      object Debug1: TMenuItem
        Caption = 'Map'
        OnClick = Debug1Click
      end
      object CodePoint1: TMenuItem
        Caption = 'CodePoint'
        OnClick = CodePoint1Click
      end
    end
  end
end
