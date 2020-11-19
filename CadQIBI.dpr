program CadQIBI;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uResultados in 'uResultados.pas' {formResultados: TUnimForm},
  uFuncoes in 'uFuncoes.pas',
  udados in 'udados.pas' {dmDados: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
