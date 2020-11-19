unit uResultados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniLabel, unimLabel, uniGUIBaseClasses, unimPanel,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniBitBtn, unimBitBtn, Data.DB,
  uniDBNavigator, unimDBNavigator, unimDBGrid, uniSweetAlert, uniEdit, unimEdit,
  Vcl.Menus, uniMainMenu, uniImageList, uniPanel, uniHTMLFrame, unimHTMLFrame;

type
  TformResultados = class(TUnimForm)
    DataSourceUsuario: TDataSource;
    UnimDBListGrid1: TUnimDBListGrid;
    UnimPanel1: TUnimPanel;
    UniSweetAlert1: TUniSweetAlert;
    edBusca: TUnimEdit;
    lbAberto: TUnimLabel;
    UniNativeImageList1: TUniNativeImageList;
    UnimHTMLFrame1: TUnimHTMLFrame;
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure edBuscaChange(Sender: TObject);
    procedure lbAbertoClick(Sender: TObject);
    procedure UnimHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimDBListGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
     xDeletando, xSalvando : Boolean;
  public
    { Public declarations }
  end;

function formResultados: TformResultados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDados, Mainm;

function formResultados: TformResultados;
begin
  Result := TformResultados(UniMainModule.GetFormInstance(TformResultados));
end;

procedure TformResultados.edBuscaChange(Sender: TObject);
begin
    // pesquisa dinamica na tabela Usuario
     dmDados.FDRegistro.SQL.Clear;
     dmDados.FDRegistro.SQL.Add('select * from REGISTRO where');
     dmDados.FDRegistro.SQL.Add('(NOME LIKE  '+QuotedStr('%'+edBusca.Text+'%') );
     dmDados.FDRegistro.SQL.Add(' or TEL LIKE  '+QuotedStr('%'+edBusca.Text+'%') );
     dmDados.FDRegistro.SQL.Add(')order by NOME');
     dmDados.FDRegistro.Open;
end;

procedure TformResultados.lbAbertoClick(Sender: TObject);
begin
  Close;
  dmDados.FDRegistro.Open();
end;

procedure TformResultados.UnimDBListGrid1DblClick(Sender: TObject);
begin
    xDeletando := true;
    xSalvando := False;
    UniSweetAlert1.InputType := ItNone;
    UniSweetAlert1.AlertType := atQuestion;
    UniSweetAlert1.ShowConfirmButton := True;
    UniSweetAlert1.ShowCancelButton := True;
    UniSweetAlert1.Title := 'Deseja Excluir ?';
    UniSweetAlert1.Show( dmDados.FDRegistroNOME.Text );
end;

procedure TformResultados.UnimFormCreate(Sender: TObject);
begin
  UnimHTMLFrame1.HTML.LoadFromFile('./files/index.html');
end;

procedure TformResultados.UnimHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
if EventName = 'valor1' then
  begin
    dmDados.FDRegistro.Open();
    Close;
  end;
  if EventName = 'valor2' then
  begin
    xDeletando := true;
    xSalvando := False;
    UniSweetAlert1.InputType := ItNone;
    UniSweetAlert1.AlertType := atQuestion;
    UniSweetAlert1.ShowConfirmButton := True;
    UniSweetAlert1.ShowCancelButton := True;
    UniSweetAlert1.Title := 'Deseja Excluir ?';
    UniSweetAlert1.Show( dmDados.FDRegistroNOME.Text );

  end;
  if EventName = 'valor3' then
  begin

  end;
end;

procedure TformResultados.UniSweetAlert1Confirm(Sender: TObject);
begin
  if xDeletando then
   begin
     dmDados.FDRegistro.delete ;
     dmDados.FDRegistro.Refresh ;
     dmDados.FDRegistro.Close();
     dmDados.FDRegistro.Open();
     xDeletando := False;
   end;
end;

procedure TformResultados.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
   if xDeletando then
     begin
       dmDados.FDRegistro.Cancel;
       dmDados.FDRegistro.Close();
       dmDados.FDRegistro.Open();
       xDeletando := False;
     end;
end;

end.
