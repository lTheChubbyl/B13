program KolekcijaKnjiga;

uses
  Forms,
  untMain in 'untMain.pas' {frmMain},
  untDM in 'untDM.pas' {DM: TDataModule},
  untK in 'untK.pas' {frmK},
  untPK in 'untPK.pas' {frmPK};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmK, frmK);
  Application.CreateForm(TfrmPK, frmPK);
  Application.Run;
end.
