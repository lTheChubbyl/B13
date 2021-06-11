object frmMain: TfrmMain
  Left = 645
  Top = 284
  Width = 532
  Height = 267
  Caption = 'Kolekcija knjiga'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 248
    Top = 72
    object Unos1: TMenuItem
      Caption = 'Unos'
      object Knjige1: TMenuItem
        Caption = 'Knjige'
        OnClick = Knjige1Click
      end
      object Autori1: TMenuItem
        Caption = 'Autori'
      end
    end
    object Brojknjiga1: TMenuItem
      Caption = 'Broj knjiga'
      object Pokategorijama1: TMenuItem
        Caption = 'Po kategorijama'
        OnClick = Pokategorijama1Click
      end
      object Poautorima1: TMenuItem
        Caption = 'Po autorima'
      end
    end
    object Krajrada1: TMenuItem
      Caption = 'Kraj rada'
      object Izlaz1: TMenuItem
        Caption = 'Izlaz'
        ShortCut = 32841
        OnClick = Izlaz1Click
      end
    end
  end
end
