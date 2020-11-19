object formResultados: TformResultados
  AlignWithMargins = True
  Left = 0
  Top = 0
  ClientHeight = 553
  ClientWidth = 322
  Caption = 'formResultados'
  BorderIcons = []
  ShowTitle = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 40
    Hint = ''
    Align = alTop
    Color = clHighlight
    ExplicitLeft = -8
    object lbAberto: TUnimLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 54
      Height = 30
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 5
      Alignment = taRightJustify
      AutoSize = False
      Caption = '<i class="fas fa-angle-left"></i>'
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentColor = False
      Color = clWhite
      ParentFont = False
      Font.Color = clHighlightText
      Font.Height = -27
      OnClick = lbAbertoClick
    end
  end
  object edBusca: TUnimEdit
    AlignWithMargins = True
    Left = 10
    Top = 40
    Width = 302
    Height = 25
    Hint = ''
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Margins.Bottom = 2
    InputRTL = False
    Align = alTop
    Text = ''
    ClearButton = False
    CharCase = ecUpperCase
    EmptyText = 'BUSCA DIN'#194'MICA'
    ParentFont = False
    TabOrder = 1
    InputType = 'search'
    OnChange = edBuscaChange
    ExplicitWidth = 306
  end
  object UnimDBListGrid1: TUnimDBListGrid
    Left = 0
    Top = 67
    Width = 322
    Height = 486
    Hint = ''
    ParentCustomHint = False
    ParentRTL = False
    ParentShowHint = False
    BodyRTL = False
    Align = alClient
    DataSource = DataSourceUsuario
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  '#13#10'  '#13#10'  con' +
        'fig.selectedCls='#39#39';'#13#10'  config.deleteRow=function(indx){'#13#10'   ajax' +
        'Request(MainmForm.window,'#39'deleteRow'#39',['#39'index='#39'+indx.toString()])' +
        ';'#13#10'  };'#13#10'  '#13#10'  var clrs=['#39'#5acb98'#39','#39'#72b3e3'#39','#39'#f98689'#39','#39'#fcca67'#39 +
        ','#39'#d3b894'#39','#39'#f491bc'#39'];'#13#10'  var clrIndx=0;'#13#10'  var htmlRow='#39'<div cl' +
        'ass="myrow">'#39'+'#13#10'               '#39'<table style="width:100%;height:' +
        '100%;vertical-align:middle;">'#39'+'#13#10'                '#39'<tr>'#39'+'#13#10'      ' +
        '           '#39'<td style="width:75px;text-align:center;">'#39'+'#13#10'      ' +
        '            '#39'<div class="crcldv" style="background:url(files/ima' +
        'ges/profile.svg);'#39'+'#13#10'                   '#39'background-size:24px au' +
        'to;background-position:center;background-repeat:no-repeat;'#39'+'#13#10'  ' +
        '                 '#39'background-color:{[this.getColor()]};" '#39'+'#13#10'   ' +
        '                '#39' onClick="javascript:MainmForm.UnimDBListGrid1.' +
        'deleteRow({0});">'#39'+                                      '#13#10'     ' +
        '             '#39'</div>'#39'+'#13#10'                 '#39'</td>'#39'+'#13#10'             ' +
        '    '#39'<td>'#39'+'#13#10'                  '#39'<span style="font-weight:bold;fo' +
        'nt-size:13px;color:#0092f4;width:100%;display:inline-block;">{0}' +
        '</span>'#39'+'#13#10'                  '#39'<span style="font-size:11px;color:' +
        '#929292;width:100%;display:inline-block;">{1}</span>'#39'+'#13#10'        ' +
        '          '#39'<span style="font-size:11px;color:#929292;width:100%;' +
        'display:inline-block;">{2}</span>'#39'+'#13#10'                  '#39'<span st' +
        'yle="font-size:11px;color:#929292;width:100%;display:inline-bloc' +
        'k;">{3}</span>'#39'+'#13#10'                  '#13#10'                 '#39'</td>'#39'+'#13 +
        #10'                 '#39'<td style="width:55px;text-align:center;">'#39'+'#13 +
        #10'                  '#39'{[this.getNumber()]}'#39'+'#13#10'                  /*' +
        #39'<img src="files/images/up.svg" style="width:12px;height12px;mar' +
        'gin:auto;"/>'#39'+'#13#10'                  '#39'<span style="color:#f00;font-' +
        'size:12px;">+ 150</span>'#39'+*/'#13#10'                 '#39'</td>'#39'+'#13#10'       ' +
        '         '#39'</tr>'#39'+'#13#10'               '#39'</table>'#39'+    '#13#10'             ' +
        ' '#39'</div>'#39';  '#13#10'  config.itemTpl= new Ext.XTemplate('#13#10'   htmlRow,'#13 +
        #10'   {'#13#10'    getColor: function(){'#13#10'     if(clrIndx>5){clrIndx=0;}' +
        #13#10'     return clrs[clrIndx++];     '#13#10'    },  '#13#10'    getNumber:fun' +
        'ction(){'#13#10'     var i=randomIntFromInterval(-200,200);'#13#10'     if(i' +
        '>0){'#13#10'      return '#39'<img src="files/images/up.svg" style="width:' +
        '12px;height12px;margin:auto;"/>'#39'+'#13#10'             '#39'<span style="co' +
        'lor:#07d280;font-size:12px;">+ '#39'+i.toString()+'#39'</span>'#39';'#13#10'     }' +
        #13#10'     else{'#13#10'      return '#39'<img src="files/images/down.svg" sty' +
        'le="width:12px;height12px;margin:auto;"/>'#39'+'#13#10'             '#39'<span' +
        ' style="color:#f37372;font-size:12px;">- '#39'+(i*-1).toString()+'#39'</' +
        'span>'#39';'#13#10'     }'#13#10'    }'#13#10'   }'#13#10'  );'#13#10'}'#13#10)
    Options = [dgAutoRefreshRow]
    WebOptions.Paged = False
    WebOptions.PageSize = 200
    WebOptions.FetchAll = True
    ScrollToSelected = True
    OnDblClick = UnimDBListGrid1DblClick
    Columns = <
      item
        Title.Caption = 'ID'
        FieldName = 'ID'
        Width = 114
      end
      item
        Title.Caption = 'NOME'
        FieldName = 'NOME'
        Width = 554
      end
      item
        Title.Caption = 'TEL'
        FieldName = 'TEL'
        Width = 224
      end
      item
        Title.Caption = 'DTNASCIMENTO'
        FieldName = 'DTNASCIMENTO'
        Width = 114
      end>
  end
  object UnimHTMLFrame1: TUnimHTMLFrame
    Left = 296
    Top = 488
    Width = 17
    Height = 17
    Hint = ''
    Enabled = False
    Visible = False
    BodyRTL = False
    OnAjaxEvent = UnimHTMLFrame1AjaxEvent
  end
  object DataSourceUsuario: TDataSource
    DataSet = dmDados.FDRegistro
    Left = 248
    Top = 240
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = clMaroon
    ImageIndex = 0
    InputType = ItText
    Width = 300
    Padding = 20
    OnDismiss = UniSweetAlert1Dismiss
    OnConfirm = UniSweetAlert1Confirm
    Left = 144
    Top = 344
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 96
    Top = 120
    Images = {0100000000000000060E0000006172726F775F6C6566743B66613B}
  end
end
