object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Port = 8085
  Title = 'Salva Registro'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    'files/css/estilo.css')
  CustomCSS.Strings = (
    '.myrow{'
    ' margin-top:-8px;'
    ' display: flex;'
    ' flex: 1 auto;'
    ' height: 100px;'
    ' background-color:#fff;'
    ' -webkit-box-shadow: 0px 6px 5px 0px rgba(0,0,0,0.14);'
    ' -moz-box-shadow: 0px 6px 5px 0px rgba(0,0,0,0.14);'
    ' box-shadow: 0px 6px 5px 0px rgba(0,0,0,0.14);'
    ' border: 1px solid #d7d7d7;'
    ' border-radius:3px;'
    '}'
    '.x-innerhtml{'
    ' display: flex;'
    ' flex: 1 auto;'
    '}'
    '.crcldv{'
    '  margin:auto;'
    '  width:50px;'
    '  height:50px;'
    '  border-radius: 50px;'
    '  background-color: #5acb98; '
    '}'
    ''
    ''
    '')
  ServerMessages.UnavailableErrMsg = 'Erro de comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">Ocorreu uma exce'#231#227'o n' +
      'o aplicativo:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinicie o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinicie o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinicie o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o inv'#225'lida ou tempo limite da sess'#227'o.'
  ServerMessages.TerminateMessage = 'Sess'#227'o da Web encerrada.'
  ExtLocale = 'pt_BR'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem '
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 305
  Width = 279
end
