object frmK: TfrmK
  Left = 697
  Top = 111
  Width = 740
  Height = 290
  Caption = 'Knjiga'
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
    Left = 80
    Top = 96
    Width = 22
    Height = 13
    Caption = 'Sifra'
  end
  object Label2: TLabel
    Left = 208
    Top = 96
    Width = 26
    Height = 13
    Caption = 'Naziv'
  end
  object Label3: TLabel
    Left = 320
    Top = 96
    Width = 53
    Height = 13
    Caption = 'Broj strana'
  end
  object Label4: TLabel
    Left = 456
    Top = 96
    Width = 49
    Height = 13
    Caption = 'Kategorija'
  end
  object TLabel
    Left = 592
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Komentar'
  end
  object GroupBox1: TGroupBox
    Left = 232
    Top = 16
    Width = 225
    Height = 57
    Caption = 'Kategorije'
    TabOrder = 0
    object rbUnos: TRadioButton
      Left = 16
      Top = 24
      Width = 49
      Height = 17
      Caption = 'Unos'
      TabOrder = 0
      OnClick = rbUnosClick
    end
    object rbBrisanje: TRadioButton
      Left = 152
      Top = 24
      Width = 65
      Height = 17
      Caption = 'Brisanje'
      TabOrder = 1
      OnClick = rbBrisanjeClick
    end
  end
  object eSifra: TEdit
    Left = 40
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 1
    OnKeyPress = eSifraKeyPress
  end
  object eNaziv: TEdit
    Left = 168
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object eBrStr: TEdit
    Left = 296
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 3
  end
  object eKom: TEdit
    Left = 568
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 4
  end
  object cbK: TComboBox
    Left = 424
    Top = 120
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 5
  end
  object btnUpisi: TButton
    Left = 240
    Top = 168
    Width = 81
    Height = 33
    Caption = 'Upisi'
    TabOrder = 6
    OnClick = btnUpisiClick
  end
  object btnObrisi: TButton
    Left = 368
    Top = 168
    Width = 81
    Height = 33
    Caption = 'Obrisi'
    TabOrder = 7
    OnClick = btnObrisiClick
  end
  object btnIzadji: TButton
    Left = 616
    Top = 168
    Width = 49
    Height = 33
    Caption = 'Izadji'
    TabOrder = 8
    OnClick = btnIzadjiClick
  end
end
