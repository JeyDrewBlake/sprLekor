unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, mysql56conn, mysql51conn, FileUtil, Forms,
  Controls, Graphics, Dialogs, StdCtrls, ComCtrls, DBGrids, ExtCtrls, DbCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    MySQL56Connection1: TMySQL56Connection;
    PageControl1: TPageControl;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
      var Editor: TWinControl);
    procedure FormCreate(Sender: TObject);
    procedure Memo2Change(Sender: TObject);




  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }





procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Memo2Change(Sender: TObject);
begin

end;

procedure TForm1.DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
  var Editor: TWinControl);
begin
  Label1.Caption := DBGrid1.Columns.Items[1].Field.Value;
  Memo1.Text := DBGrid1.Columns.Items[4].Field.Value;
  Memo2.Text := DBGrid1.Columns.Items[3].Field.Value;
  Image1.Picture.LoadFromFile(DBGrid1.Columns.Items[5].Field.Value);
end;







end.

