unit uMainState;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, CommCTRL, TntComCtrls;

type
  TMainStateForm = class(TForm)
    Bevel4: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    ListView1: TTntListView;
    procedure FormActivate(Sender: TObject);
    procedure FindStates;
    function StateType(fn:string):string;
    procedure ListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainStateForm: TMainStateForm;
  StateType:String;

implementation

uses uSFO;

{$R *.dfm}

procedure TMainStateForm.FormActivate(Sender: TObject);
begin
Edit1.Align:=alClient;
ListView_SetColumnWidth(ListView1.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
FindStates;

end;

procedure TMainStateForm.FindStates;
var
F: TSearchRec;
Item:TtntListItem;
SL:TStringList;
i:integer;
begin
ListView1.Clear;
SL:=TStringList.Create;
if not DirectoryExists(ExtractFileDir(Application.ExeName)+'\states') then
  begin
  Showmessage('mkdir');
  ForceDirectories(ExtractFileDir(Application.ExeName)+'\states');
  end;
  if FindFirst(ExtractFileDir(Application.ExeName)+'\states\*.*', faAnyFile and not (faDirectory or
faVolumeID), F) = 0 then
  try
    repeat
      SL.Add(ExtractFileDir(Application.ExeName)+'\states\'+F.Name);

    until FindNext(F) <> 0;
  finally
    FindClose(F);
  end;

for i:=0 to SL.Count-1 do
  begin
  if lowercase(ExtractFileExt(SL.Strings[i]))='.pbs' then
    begin
    if StateType(SL.Strings[i])<>'ERR' then
      begin
      Item:=ListView1.Items.Add;
      Item.Caption:=Copy(ExtractFileName(SL.Strings[i]),1,Length(ExtractFileName(SL.Strings[i]))-4);
      Item.SubItems.Add(StateType(SL.Strings[i]))
      end;

    end;

  end;
sl.Free;
end;

function TMainStateForm.StateType(fn:string):string;
var filestring:string;
begin
filestring:=SFOForm.ReadFile(fn);
if copy(filestring,1,3)='PBP' then result:='PBP' else
if copy(filestring,1,3)='SFO' then result:='SFO' else
result:='ERR';
setlength(filestring,0);
end;

procedure TMainStateForm.ListView1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
if Item.Index mod 2 <> 0 then
(Sender as TTntListView).Canvas.Brush.Color:=$00faf1ed
  else (Sender as TTntListView).Canvas.Brush.Color:=clwhite;

DefaultDraw:=true;
end;

end.
