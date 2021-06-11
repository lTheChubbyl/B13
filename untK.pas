unit untK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmK = class(TForm)
    GroupBox1: TGroupBox;
    rbUnos: TRadioButton;
    rbBrisanje: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eSifra: TEdit;
    eNaziv: TEdit;
    eBrStr: TEdit;
    eKom: TEdit;
    cbK: TComboBox;
    btnUpisi: TButton;
    btnObrisi: TButton;
    btnIzadji: TButton;
    procedure btnIzadjiClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rbUnosClick(Sender: TObject);
    procedure rbBrisanjeClick(Sender: TObject);
    procedure btnUpisiClick(Sender: TObject);
    procedure btnObrisiClick(Sender: TObject);
    procedure eSifraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmK: TfrmK;

implementation

uses untDM, untMain, untPK;

{$R *.dfm}

procedure TfrmK.btnIzadjiClick(Sender: TObject);
  begin
    Close;
  end;

procedure TfrmK.FormActivate(Sender: TObject);
  begin
    rbUnos.Checked:=False;
    rbBrisanje.Checked:=False;

    eSifra.ShowHint:=False;

    eSifra.Clear;
    eNaziv.Clear;
    eBrStr.Clear;
    cbK.Clear;
    eKom.Clear;

    eSifra.Enabled:=False;
    eNaziv.Enabled:=False;
    eBrStr.Enabled:=False;
    cbK.Enabled:=False;
    eKom.Enabled:=False;
    btnUpisi.Enabled:=False;
    btnObrisi.Enabled:=False;

    DM.ADOConnection1.Connected:=True;
    DM.ADOTableK.Active:=True;
    DM.ADOTablePK.Active:=True;

    DM.ADOTablePK.First;
    while not DM.ADOTablePK.Eof do
      begin
        cbK.Items.Add(DM.ADOTablePK.FieldByName('Naziv').Value);
        DM.ADOTablePK.Next;
      end;
  end;

procedure TfrmK.rbUnosClick(Sender: TObject);
  begin
    eSifra.ShowHint:=False;

    eSifra.Enabled:=True;
    eNaziv.Enabled:=True;
    eBrStr.Enabled:=True;
    cbK.Enabled:=True;
    eKom.Enabled:=True;
    btnUpisi.Enabled:=True;
    btnObrisi.Enabled:=False;

    eSifra.Clear;
    eNaziv.Clear;
    eBrStr.Clear;
    cbK.Text:='';
    eKom.Clear;

  end;

procedure TfrmK.rbBrisanjeClick(Sender: TObject);
  begin
    eSifra.ShowHint:=True;

    eSifra.Enabled:=True;
    eNaziv.Enabled:=False;
    eBrStr.Enabled:=False;
    cbK.Enabled:=False;
    eKom.Enabled:=False;
    btnUpisi.Enabled:=False;
    btnObrisi.Enabled:=True;

    eSifra.Clear;
    eNaziv.Clear;
    eBrStr.Clear;
    cbK.Text:='';
    eKom.Clear;
  end;

procedure TfrmK.btnUpisiClick(Sender: TObject);
var brSifra, brStrana, c1, c2:integer;
  begin
    if (eNaziv.Text<>'') and (eBrStr.Text<>'') and (cbK.Text<>'') then
      begin
        val(eSifra.Text, brSifra, c1);
        val(eBrStr.Text, brStrana, c2);
        if (c1=0) and (c2=0) then
          if(DM.ADOTableK.Locate('KnjigaID', eSifra.Text, [])) then
            begin
              ShowMessage('Aj nesto drugo...');
              eSifra.SelectAll;
            end
          else
            begin
              DM.ADOTableK.Append;
              DM.ADOTableK.FieldByName('KnjigaID').Value:=StrToInt(eSifra.Text);
              DM.ADOTableK.FieldByName('Naziv').Value:=eNaziv.Text;
              DM.ADOTableK.FieldByName('BrojStrana').Value:=eBrStr.Text;
              DM.ADOTableK.FieldByName('Komentar').Value:=eKom.Text;
              DM.ADOTablePK.Locate('Naziv', cbK.Text,[]);
              DM.ADOTableK.FieldByName('KategorijaID').Value:=DM.ADOTablePK.FieldByName('KategorijaID').Value;

              DM.ADOTableK.Post;

              ShowMessage('Ode nedje tamo');
            end;
          if (c1<>0) then
            begin
              ShowMessage('Napisi sifru ko covek da ti ne dodjem na gajbu');
              eSifra.SelectAll;
            end
          else
            begin
              if (c2<>0) then
                begin
                  ShowMessage('Napisi br str da ti ne dodjem na gajbu');
                  eSifra.SelectAll;
                end
            end
      end
    else
      ShowMessage('Popuni lepo sve, a komentar, on je nebitan');
  end;

procedure TfrmK.btnObrisiClick(Sender: TObject);
  begin
    DM.ADOTableK.Locate('KnjigaID', eSIfra.Text, []);
    DM.ADOTableK.Delete;
    ShowMessage('Vus');
  end;

procedure TfrmK.eSifraKeyPress(Sender: TObject; var Key: Char);
  begin
    if key=#13 then
      begin
        if rbBrisanje.Checked then
          begin
            DM.ADOTableK.Locate('KnjigaID', eSifra.Text, []);
            eNaziv.Text:=DM.ADOTableK.FieldByName('Naziv').Value;
            eBrStr.Text:=DM.ADOTableK.FieldByName('BrojStrana').AsString;
            DM.ADOTablePK.Locate('KategorijaID', DM.ADOTableK.FieldByName('KategorijaID').Value, []);
            cbK.Text:=DM.ADOTablePK.FieldByName('Naziv').Value;
            eKom.Text:=DM.ADOTableK.FieldByName('Komentar').Value;
          end;
      end;
  end;

end.
