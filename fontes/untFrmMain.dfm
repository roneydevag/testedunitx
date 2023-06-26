object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 282
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 263
    Width = 579
    Height = 19
    Panels = <>
  end
  object edtTexto: TEdit
    Left = 24
    Top = 35
    Width = 300
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edtTextoConvertido: TEdit
    Left = 24
    Top = 128
    Width = 300
    Height = 21
    TabOrder = 3
  end
end
