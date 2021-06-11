object frmPK: TfrmPK
  Left = 697
  Top = 394
  Width = 742
  Height = 289
  Caption = 'Po Kategorijama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 49
    Height = 13
    Caption = 'Kategorije'
  end
  object lbl11: TLabel
    Left = 472
    Top = 80
    Width = 17
    Height = 13
    Color = clMaroon
    ParentColor = False
  end
  object lbl22: TLabel
    Left = 560
    Top = 80
    Width = 17
    Height = 13
    Color = clMaroon
    ParentColor = False
  end
  object lbl33: TLabel
    Left = 648
    Top = 80
    Width = 17
    Height = 13
    Color = clMaroon
    ParentColor = False
  end
  object lbl1: TLabel
    Left = 472
    Top = 56
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object lbl2: TLabel
    Left = 560
    Top = 56
    Width = 16
    Height = 13
    Caption = 'lbl2'
  end
  object lbl3: TLabel
    Left = 648
    Top = 56
    Width = 16
    Height = 13
    Caption = 'lbl3'
  end
  object clb: TCheckListBox
    Left = 104
    Top = 24
    Width = 217
    Height = 97
    ItemHeight = 13
    TabOrder = 0
    OnClick = clbClick
  end
  object btnPrikazi: TButton
    Left = 325
    Top = 109
    Width = 75
    Height = 33
    Caption = 'Prikazi'
    TabOrder = 1
    OnClick = btnPrikaziClick
  end
  object btnIzadji: TButton
    Left = 616
    Top = 152
    Width = 49
    Height = 33
    Caption = 'Izadji'
    TabOrder = 2
    OnClick = btnIzadjiClick
  end
end
