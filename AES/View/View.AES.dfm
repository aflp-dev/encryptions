object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Crypt and Decrypt AES'
  ClientHeight = 330
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 16
    Caption = 'Texto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 139
    Width = 134
    Height = 16
    Caption = 'Texto criptografado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 268
    Top = 139
    Width = 157
    Height = 16
    Caption = 'Texto descriptografado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 265
    Width = 515
    Height = 46
    Align = alBottom
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 412
    ExplicitWidth = 325
    object Button1: TButton
      Left = 6
      Top = 4
      Width = 100
      Height = 35
      Caption = 'Encrypt AES'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 110
      Top = 4
      Width = 100
      Height = 35
      Caption = 'Decrypt AES'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 214
      Top = 4
      Width = 100
      Height = 35
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 30
    Width = 500
    Height = 89
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 8
    Top = 161
    Width = 240
    Height = 89
    TabOrder = 2
  end
  object Memo3: TMemo
    Left = 268
    Top = 161
    Width = 240
    Height = 89
    TabOrder = 3
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 311
    Width = 515
    Height = 19
    Panels = <
      item
        Text = '@aflp.dev'
        Width = 100
      end>
    ExplicitTop = 458
    ExplicitWidth = 325
  end
end
