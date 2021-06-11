unit untPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst;

type
  TfrmPK = class(TForm)
    Label1: TLabel;
    clb: TCheckListBox;
    btnPrikazi: TButton;
    btnIzadji: TButton;
    lbl11: TLabel;
    lbl22: TLabel;
    lbl33: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure btnIzadjiClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnPrikaziClick(Sender: TObject);
    procedure clbClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPK: TfrmPK;
  br: integer=0;

implementation

uses untDM, untK, untMain;

{$R *.dfm}

procedure TfrmPK.btnIzadjiClick(Sender: TObject);
  begin
    Close;
  end;

procedure TfrmPK.FormActivate(Sender: TObject);
  begin
    DM.ADOConnection1.Connected:=True;
    DM.ADOTableK.Active:=True;
    DM.ADOTablePK.Active:=True;

    clb.Clear;

    DM.ADOTablePK.First;
    while not DM.ADOTablePK.Eof do
      begin
        clb.Items.Add(DM.ADOTablePK.FieldByName('Naziv').Value);
        DM.ADOTablePK.Next;
      end;
  end;

procedure TfrmPK.btnPrikaziClick(Sender: TObject);
var s:array[1..3] of string;
var i, br1, br2, br3, K1, K2, K3: integer;
  begin
    if(br<>3) then
      begin
        ShowMessage('3, no more, no less');
        for i:=0 to clb.Items.Count-1 do
          clb.Checked[i]:=False;
      end
    else
      begin
        br:=0;
        for i:=0 to clb.Items.Count-1 do
          if clb.Checked[i] then
            begin
              br:=br+1;
              s[br]:=clb.Items[i];
            end;
        lbl1.Caption:=s[1];
        lbl2.Caption:=s[2];
        lbl3.Caption:=s[3];
        for i:=0 to clb.Items.Count-1 do
          clb.Checked[i]:=False;

      DM.ADOTablePK.Locate('Naziv', s[1], []);
      K1:=DM.ADOTablePK.FieldByName('KategorijaID').Value;
      DM.ADOTablePK.Locate('Naziv', s[2], []);
      K2:=DM.ADOTablePK.FieldByName('KategorijaID').Value;
      DM.ADOTablePK.Locate('Naziv', s[3], []);
      K3:=DM.ADOTablePK.FieldByName('KategorijaID').Value;

      br1:=0;
      br2:=0;
      br3:=0;
      DM.ADOTableK.First;
      while not DM.ADOTableK.Eof do
        begin
          if DM.ADOTableK.FieldByName('KategorijaID').Value=K1 then br1:=br1+1;
          if DM.ADOTableK.FieldByName('KategorijaID').Value=K2 then br2:=br2+1;
          if DM.ADOTableK.FieldByName('KategorijaID').Value=K3 then br3:=br3+1;
          DM.ADOTableK.Next;
        end;
      lbl11.Caption:=IntToStr(br1);
      lbl22.Caption:=IntToStr(br2);
      lbl33.Caption:=IntToStr(br3);
      end;
    br:=0;
    clb.Enabled:=True;
  end;

procedure TfrmPK.clbClick(Sender: TObject);
  begin
    br:=br+1;
  end;

end.
