object DM: TDM
  OldCreateOrder = False
  Left = 1423
  Top = 299
  Height = 247
  Width = 307
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=EIT_B13_B14_Kolekci' +
      'ja_knjiga (2).mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 136
    Top = 8
  end
  object ADOTableK: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'KNJIGA'
    Left = 88
    Top = 64
  end
  object ADOTablePK: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'KATEGORIJA'
    Left = 88
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOTableK
    Left = 176
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = ADOTablePK
    Left = 176
    Top = 120
  end
end
