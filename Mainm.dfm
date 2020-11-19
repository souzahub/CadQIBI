object MainmForm: TMainmForm
  AlignWithMargins = True
  Left = 0
  Top = 0
  ClientHeight = 527
  ClientWidth = 354
  Caption = 'Cadastro'
  Color = clWindow
  Layout = 'fit'
  ShowTitle = False
  CloseButton.Visible = False
  TitleButtons = <>
  ShowAnimation = 'popOut'
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 474
  PlatformData = {}
  object edNome: TUnimEdit
    AlignWithMargins = True
    Left = 25
    Top = 100
    Width = 304
    Height = 33
    Hint = ''
    Margins.Left = 25
    Margins.Top = 60
    Margins.Right = 25
    BodyRTL = False
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    EmptyText = 'NOME'
    FieldLabelFont.Height = -13
    ParentFont = False
    TabOrder = 0
    InputType = 'text'
    OnExit = edNomeExit
  end
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 25
    Top = 166
    Width = 304
    Height = 23
    Hint = ''
    Margins.Left = 25
    Margins.Top = 30
    Margins.Right = 25
    AutoSize = False
    Caption = 'Celular'
    Align = alTop
    ParentFont = False
  end
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 40
    Hint = ''
    Align = alTop
    Color = clHighlight
    Title = 'CADASTRO  QUIBI'
    TitleAlign = taCenter
    TitleVisible = True
    object lbAberto: TUnimLabel
      AlignWithMargins = True
      Left = 312
      Top = 6
      Width = 41
      Height = 30
      Hint = ''
      Margins.Top = 5
      Margins.Right = 0
      Visible = False
      Alignment = taRightJustify
      AutoSize = False
      Caption = '<i class="fas fa-angle-right"></i>'
      Align = alRight
      ParentColor = False
      Color = clWhite
      ParentFont = False
      Font.Color = clHighlightText
      Font.Height = -27
      OnClick = lbAbertoClick
    end
  end
  object dtNascimento: TUnimDatePicker
    AlignWithMargins = True
    Left = 25
    Top = 258
    Width = 304
    Height = 47
    Hint = ''
    Margins.Left = 25
    Margins.Top = 30
    Margins.Right = 25
    Align = alTop
    FieldLabelFont.Height = -13
    ClientEvents.UniEvents.Strings = (
      
        'afterCreate=function afterCreate(sender)'#13#10'{'#13#10'   var me=sender.ge' +
        'tPicker();'#13#10'    if (me && !Ext.isWindows) {        '#13#10'        me.' +
        'getDoneButton().setText("Confirmar");'#13#10'        me.getCancelButto' +
        'n().setText("Cancelar")'#13#10'    }'#13#10'}')
    DateFormat = 'dd/MM/yyyy'
    Date = 44153.000000000000000000
    MinYear = 1920
    ExplicitLeft = 49
  end
  object btSalvar: TUnimBitBtn
    AlignWithMargins = True
    Left = 25
    Top = 368
    Width = 304
    Height = 45
    Hint = ''
    Margins.Left = 25
    Margins.Top = 60
    Margins.Right = 25
    ParentShowHint = False
    Align = alTop
    UI = 'round'
    Caption = 'ENTRAR'
    Font.Height = -17
    OnClick = UnimBitBtn3Click
    ExplicitLeft = 30
    ExplicitTop = 376
  end
  object edCelular: TUnimEdit
    AlignWithMargins = True
    Left = 25
    Top = 192
    Width = 304
    Height = 33
    Hint = ''
    Margins.Left = 25
    Margins.Top = 0
    Margins.Right = 25
    Align = alTop
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  //config.pl' +
        'aceholder = '#39'000.000.000-00'#39#13#10'  config.inputMask = '#39'(99)99999-99' +
        '99'#39';'#13#10'}')
    Text = ''
    EmptyText = 'Ex:(22)00000-0000'
    ParentFont = False
    TabOrder = 5
    InputType = 'tel'
    ExplicitLeft = 0
    ExplicitTop = 224
  end
  object UnimBitBtn1: TUnimBitBtn
    AlignWithMargins = True
    Left = 25
    Top = 419
    Width = 304
    Height = 45
    Hint = ''
    Margins.Left = 25
    Margins.Right = 25
    ParentShowHint = False
    Align = alTop
    ClientEvents.Enabled = False
    UI = 'round'
    Caption = 'SAIR'
    Font.Height = -17
    OnClick = UnimBitBtn1Click
    ExplicitLeft = -1
    ExplicitTop = 311
    ExplicitWidth = 354
  end
  object DataSourceUsuario: TDataSource
    DataSet = dmDados.FDRegistro
    Left = 184
    Top = 320
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'Sim'
    CancelButtonText = 'N'#227'o'
    Width = 360
    Padding = 20
    OnDismiss = UniSweetAlert2Dismiss
    OnConfirm = UniSweetAlert2Confirm
    Left = 90
    Top = 184
  end
end
