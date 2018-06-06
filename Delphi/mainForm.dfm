object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 853
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 497
    Height = 737
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 55
      Height = 13
      Caption = 'First Name:'
    end
    object Label2: TLabel
      Left = 40
      Top = 104
      Width = 54
      Height = 13
      Caption = 'Last Name:'
    end
    object Label3: TLabel
      Left = 41
      Top = 160
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Label4: TLabel
      Left = 41
      Top = 216
      Width = 34
      Height = 13
      Caption = 'Phone:'
    end
    object Label5: TLabel
      Left = 41
      Top = 273
      Width = 51
      Height = 13
      Caption = 'Job Ready'
    end
    object Label6: TLabel
      Left = 43
      Top = 321
      Width = 49
      Height = 13
      Caption = 'Comment:'
    end
    object Higher: TLabel
      Left = 233
      Top = 273
      Width = 47
      Height = 13
      Caption = 'Higher ED'
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 37
      Width = 217
      Height = 21
      DataField = 'fname'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 101
      Width = 217
      Height = 21
      DataField = 'fname'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 157
      Width = 217
      Height = 21
      DataField = 'fname'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 128
      Top = 216
      Width = 217
      Height = 21
      DataField = 'fname'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 120
      Top = 272
      Width = 97
      Height = 17
      Caption = 'DBCheckBox1'
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBRichEdit1: TDBRichEdit
      Left = 128
      Top = 318
      Width = 313
      Height = 193
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBCheckBox2: TDBCheckBox
      Left = 298
      Top = 272
      Width = 97
      Height = 17
      Caption = 'DBCheckBox1'
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object alumni: TSQLConnection
    ConnectionName = 'alumni'
    DriverName = 'DEVARTMYSQLDIRECT'
    GetDriverFunc = 'getSQLDriverMySQLDirect'
    LibraryName = 'dbexpmda40.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=DEVARTMYSQLDIRECT'
      'blobsize=-1'
      'ipversion=IPv4'
      'productname=DevartMySQL'
      'HostName=localhost'
      'Database=alumni'
      'User_Name=root')
    VendorLib = 'not used'
    Connected = True
    Left = 10
    Top = 10
  end
  object course: TSQLDataSet
    CommandText = 'course'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = alumni
    Left = 213
    Top = 5
  end
  object employer: TSQLDataSet
    CommandText = 'employer'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = alumni
    Left = 320
    Top = 8
  end
  object formerstudents: TSQLDataSet
    CommandText = 'formerstudents'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = alumni
    Left = 403
    Top = 11
  end
  object studentscourse: TSQLDataSet
    CommandText = 'studentscourse'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = alumni
    Left = 510
    Top = 6
  end
  object studentsemployer: TSQLDataSet
    CommandText = 'studentsemployer'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = alumni
    Left = 97
    Top = 9
  end
  object DataSource1: TDataSource
    DataSet = formerstudents
    Left = 632
    Top = 8
  end
end
