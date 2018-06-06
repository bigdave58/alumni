unit mainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DbxDevartMySql, Data.FMTBcd,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Data.DB, Vcl.ExtCtrls, Vcl.Mask,
  Data.SqlExpr;

type
  TForm1 = class(TForm)
    alumni: TSQLConnection;
    course: TSQLDataSet;
    employer: TSQLDataSet;
    formerstudents: TSQLDataSet;
    studentscourse: TSQLDataSet;
    studentsemployer: TSQLDataSet;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    DBRichEdit1: TDBRichEdit;
    Higher: TLabel;
    DBCheckBox2: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
