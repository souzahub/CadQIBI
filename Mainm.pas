unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniButton, uniBitBtn, unimBitBtn, Data.DB,
  uniGUIBaseClasses, uniEdit, uniDBEdit, unimDBEdit, unimEdit, ACBrBase, ACBrLCB,
  uniImageList, unimPanel, uniCheckBox, unimCheckBox, uniDBCheckBox,
  unimDBCheckBox, Vcl.Imaging.pngimage, uniImage, unimImage, unimVideo, uniSweetAlert,
  unimButton, uniDateTimePicker, unimDatePicker;

type
  TMainmForm = class(TUnimForm)
    DataSourceUsuario: TDataSource;
    edNome: TUnimEdit;
    UnimLabel1: TUnimLabel;
    UnimPanel1: TUnimPanel;
    dtNascimento: TUnimDatePicker;
    UniSweetAlert1: TUniSweetAlert;
    btSalvar: TUnimBitBtn;
    lbAberto: TUnimLabel;
    edCelular: TUnimEdit;
    UnimBitBtn1: TUnimBitBtn;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimLabel13Click(Sender: TObject);
    procedure UniSweetAlert2Confirm(Sender: TObject);
    procedure UniSweetAlert2Dismiss(Sender: TObject;
      const Reason: TDismissType);
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure lbAbertoClick(Sender: TObject);
    procedure VisualisaBotao;
    procedure edNomeExit(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
     xDeletando, xSalvando : Boolean;
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,udados, uResultados, uFuncoes;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.VisualisaBotao;
begin
  if edNome.Text = '1991'  then
  begin
    lbAberto.Visible := True;
  end
  else
  begin
   lbAberto.Visible := False;
  end;



end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
    dmDados.FDRegistro.Open();
    edNome.Text := '';
    edCelular.Text := '';
    dtNascimento.Text := DateToStr(Date);
end;

procedure TMainmForm.UnimLabel13Click(Sender: TObject);
begin
  formResultados.ShowModal;
end;

procedure TMainmForm.UniSweetAlert2Confirm(Sender: TObject);
var
 xErro: String;
begin
   if xSalvando then
   begin
    dmDados.FDRegistro.Append;

    dmDados.FDRegistroNOME.AsString := edNome.Text;
    dmDados.FDRegistroTEL.AsString := edNome.Text;
    dmDados.FDRegistroDTNASCIMENTO.AsString := DateToStr(dtNascimento.Date);

    dmDados.FDRegistro.Post;
    dmDados.FDRegistro.Close;
    dmDados.FDRegistro.Open;
    xSalvando := False;

     edNome.SetFocus;
     edNome.Text := '';
     edCelular.Text := '';
     dtNascimento.Text := DateToStr(Date);

   end;
end;

procedure TMainmForm.UniSweetAlert2Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
      if xSalvando then
     begin
       xSalvando := False;
       edNome.SetFocus;
       edNome.Text := '';
       edCelular.Text := '';
       dtNascimento.Text := DateToStr(Date);
     end;
end;

procedure TMainmForm.edNomeExit(Sender: TObject);
begin
  VisualisaBotao;
end;

procedure TMainmForm.lbAbertoClick(Sender: TObject);
begin
  formResultados.Show();
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  CLose;
end;

procedure TMainmForm.UnimBitBtn3Click(Sender: TObject);
begin
   if edNome.Text = '' then
    begin
       UniSweetAlert1.InputType := ItNone;
       UniSweetAlert1.AlertType := atWarning;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Title := 'ATENÇÃO';
       UniSweetAlert1.Show('Nome Obrigatório');
       edNome.SetFocus;
       exit;
    end;

  //  Salvando com SweetAlert1
     xDeletando := False;
     xSalvando := True;
     UniSweetAlert1.Title := 'Deseja salvar esse Usuario ?';
     UniSweetAlert1.AlertType := atQuestion;
     UniSweetAlert1.AlertType := atQuestion;
     UniSweetAlert1.ShowConfirmButton := True;
     UniSweetAlert1.ShowCancelButton := True;
     UniSweetAlert1.Show( edNome.Text );
end;


Initialization
  RegisterAppFormClass(TMainmForm);

end.
