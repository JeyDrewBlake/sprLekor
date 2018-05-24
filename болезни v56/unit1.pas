unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql51conn, mysql56conn, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DbCtrls, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    MySQL56Connection1: TMySQL56Connection;
    PageControl1: TPageControl;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
      var Editor: TWinControl);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
  var Editor: TWinControl);
begin
  Memo1.Text := DBGrid1.Columns.Items[4].Field.Value;
  Memo2.Text := DBGrid1.Columns.Items[1].Field.Value;
  Memo3.Text := DBGrid1.Columns.Items[3].Field.Value;
  Label3.Caption :=    DBGrid1.Columns.Items[0].Field.Value;
  Image1.Picture.LoadFromFile(DBGrid1.Columns.Items[5].Field.Value);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
      Memo1.Lines.LoadFromFile('akne.txt');
  Image1.Picture.LoadFromFile('akne.jpeg');
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Memo2Change(Sender: TObject);
begin

end;

procedure TForm1.TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;


end.

