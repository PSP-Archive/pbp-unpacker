unit uASCII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, ComCtrls, TntComCtrls, ExtCtrls, CommCTRL;

type
  TASCIIForm = class(TForm)
    TntMemo1: TTntMemo;
    TntListView1: TTntListView;
    Bevel1: TBevel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel5: TBevel;
    Label1: TLabel;
    procedure MakeList;
    procedure TntListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure TntListView1DblClick(Sender: TObject);
    procedure TntListView1ColumnDragged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ASCIIForm: TASCIIForm;

implementation

uses uBinary;

{$R *.dfm}

procedure TASCIIForm.MakeList;
var i:integer;
Item:TtntListItem;
begin
TntListView1.Clear;
for i:=0 to 255 do
  begin
  Item:=TntListView1.Items.Add;
  Item.Caption:=IntToStr(i);
  Item.SubItems.Add('<#'+IntToStr(i)+'>');
  Item.SubItems.Add(TntMemo1.Lines.Strings[i]);  
  end;
end;

procedure TASCIIForm.TntListView1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
if Item.Index mod 2 <> 0 then
(Sender as TTntListView).Canvas.Brush.Color:=$00faf1ed
  else (Sender as TTntListView).Canvas.Brush.Color:=clwhite;

DefaultDraw:=true;
end;

procedure TASCIIForm.TntListView1DblClick(Sender: TObject);
begin
if TntListView1.SelCount=1 then
begin
BinaryForm.Memo1.SelLength:=0;
BinaryForm.Memo1.SelText:=TntListView1.Selected.SubItems[0];
Close;
end;

end;

procedure TASCIIForm.TntListView1ColumnDragged(Sender: TObject);
begin
ListView_SetColumnWidth(TntListView1.Handle,2,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TASCIIForm.FormActivate(Sender: TObject);
begin
MakeList;
ListView_SetColumnWidth(TntListView1.Handle,2,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TASCIIForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TntListView1.Clear;
end;

end.
