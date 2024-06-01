object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora Simples'
  ClientHeight = 133
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnAdd: TButton
    Left = 8
    Top = 56
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnSub: TButton
    Left = 89
    Top = 56
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = btnSubClick
  end
  object btnMult: TButton
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 3
    OnClick = btnMultClick
  end
  object btnDiv: TButton
    Left = 89
    Top = 96
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 4
    OnClick = btnDivClick
  end
  object btnClear: TButton
    Left = 170
    Top = 56
    Width = 75
    Height = 65
    Caption = 'C'
    TabOrder = 5
    OnClick = btnClearClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 237
    Height = 23
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
end
