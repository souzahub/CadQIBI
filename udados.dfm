object dmDados: TdmDados
  OldCreateOrder = False
  Height = 363
  Width = 347
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\BD\BDQIBICAD\BDQIBI.FDB'
      'User_Name=SYSDBA'
      'Password=199122'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords]
    UpdateOptions.CountUpdatedRecords = False
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 32
    Top = 207
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 32
    Top = 144
  end
  object FDRegistro: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select *  from REGISTRO order by ID desc'
      '')
    Left = 32
    Top = 64
    object FDRegistroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object FDRegistroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDRegistroTEL: TStringField
      FieldName = 'TEL'
      Origin = 'TEL'
    end
    object FDRegistroDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
  end
  object FDQueryAuxiliar: TFDQuery
    Connection = UniMainModule.conexao
    Transaction = FDTransaction1
    SQL.Strings = (
      '')
    Left = 128
    Top = 72
  end
end
