unit U_modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TModelo = class(TForm)
    Panel1: TPanel;
    btn_novo: TBitBtn;
    btn_editar: TBitBtn;
    btn_salvar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_sair: TBitBtn;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modelo: TModelo;

implementation

{$R *.dfm}

procedure TModelo.btn_cancelarClick(Sender: TObject);
begin
 btn_novo.Enabled := True;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := False;
  btn_cancelar.Enabled := False;
  btn_sair.Enabled := True;
  TabSheet1.Show;
end;

procedure TModelo.btn_editarClick(Sender: TObject);
begin
btn_novo.Enabled := False;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := True;
  btn_cancelar.Enabled := True;
  btn_sair.Enabled := False;
end;

procedure TModelo.btn_novoClick(Sender: TObject);
begin
btn_novo.Enabled := False;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := True;
  btn_cancelar.Enabled := True;
  btn_sair.Enabled := False;
  TabSheet2.Show;
end;

procedure TModelo.btn_sairClick(Sender: TObject);
begin
close;
end;

procedure TModelo.btn_salvarClick(Sender: TObject);
begin
btn_novo.Enabled := True;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := False;
  btn_cancelar.Enabled := False;
  btn_sair.Enabled := True;
  TabSheet1.Show;
end;

end.
