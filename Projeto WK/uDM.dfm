object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 458
  Width = 705
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=DB_WK'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 88
    Top = 56
  end
  object qSqlQuery: TFDQuery
    Connection = FDConnection1
    Left = 88
    Top = 112
  end
end
