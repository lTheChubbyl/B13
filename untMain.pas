unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Unos1: TMenuItem;
    Knjige1: TMenuItem;
    Autori1: TMenuItem;
    Brojknjiga1: TMenuItem;
    Pokategorijama1: TMenuItem;
    Poautorima1: TMenuItem;
    Krajrada1: TMenuItem;
    Izlaz1: TMenuItem;
    procedure Izlaz1Click(Sender: TObject);
    procedure Knjige1Click(Sender: TObject);
    procedure Pokategorijama1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses untDM, untK, untPK;

{$R *.dfm}

procedure TfrmMain.Izlaz1Click(Sender: TObject);
  begin
    Close;
  end;

procedure TfrmMain.Knjige1Click(Sender: TObject);
  begin
    frmK.ShowModal;
  end;

procedure TfrmMain.Pokategorijama1Click(Sender: TObject);
  begin
    frmPK.ShowModal;
  end;

end.
