{
Application uses TNT Components for UTF8 support.
http://www.tntware.com/

Application uses PNGimage for PNG support.
http://pngdelphi.sourceforge.net/
http://pngdelphi.sourceforge.net/pngimage143.zip

------------------------------------------------------

Source code is (c).
The source code and compiled binaries may be distributed.
Any changes to the source code and/or the compiled binary executable must
must be carried out in good spirit - i.e, do not remove the author's name and
links to his website!!!

This was the first thing I wrote after a long absence from programming so expect
the PBP foundations to be a little shakey at first and the quality of the code
improve from there!

Brief comments have been added but there's probably a thing to two which will
keep you guessing :)

e-mail: pdc@pdc.me.uk
web: http://www.pdc.me.uk

(VER=0.94)
}

unit uPBPex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, StdCtrls, ComCtrls, XPMan, ImgList, ShellAPI,
  ShlObj, PNGimage, Mask, Registry, TntComCtrls,
  TntStdCtrls, CommCtrl, Buttons;

type
  SFOitem = record
    KeyNameOffset:integer;
    Alignment4:integer;
    DataType:integer;
    SizeOfData:integer;
    SizeOfDataAndPadding:integer;
    DataOffset:integer;
    Key:String;
    DataI:integer;
    Padding:integer;
    end;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    StatusBar1: TStatusBar;
    XPManifest1: TXPManifest;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Open1: TOpenDialog;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    Extract1: TMenuItem;
    View1: TMenuItem;
    SaveDialog1: TSaveDialog;
    HexDialog: TOpenDialog;
    Panel10: TPanel;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Button1: TButton;
    NewOpen: TOpenDialog;
    Label10: TLabel;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Button2: TButton;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Button3: TButton;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Button4: TButton;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Button5: TButton;
    GroupBox7: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Button6: TButton;
    GroupBox8: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Button7: TButton;
    GroupBox9: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Button8: TButton;
    PopupMenu2: TPopupMenu;
    Clear1: TMenuItem;
    SaveDialog2: TSaveDialog;
    SendtoNew1: TMenuItem;
    View2: TMenuItem;
    New1: TMenuItem;
    Open2: TMenuItem;
    New2: TMenuItem;
    Open3: TMenuItem;
    Exit1: TMenuItem;
    TabSheet3: TTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    About1: TMenuItem;
    QuickView1: TMenuItem;
    PopupMenu3: TPopupMenu;
    New3: TMenuItem;
    Open4: TMenuItem;
    Label25: TLabel;
    Label26: TLabel;
    Help1: TMenuItem;
    ChangeLog1: TMenuItem;
    TabSheet4: TTabSheet;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    OpenSFO: TOpenDialog;
    NewSFO1: TMenuItem;
    Memo1: TMemo;
    TabSheet5: TTabSheet;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Label27: TLabel;
    Panel25: TPanel;
    TabSheet6: TTabSheet;
    Panel26: TPanel;
    Panel27: TPanel;
    Label29: TLabel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    ReleaseNotes1: TMenuItem;
    Usage1: TMenuItem;
    Label30: TLabel;
    Recent1: TMenuItem;
    r0: TMenuItem;
    r1: TMenuItem;
    r2: TMenuItem;
    r3: TMenuItem;
    r4: TMenuItem;
    Extra1: TMenuItem;
    RegisterFileAssociations1: TMenuItem;
    UnregisterFileAssociations1: TMenuItem;
    OpenWith1: TMenuItem;
    OpenWith2: TMenuItem;
    StateSave: TSaveDialog;
    Panel31: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ExList1: TListView;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure ExList1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);

    procedure ShowIcon;
    procedure PreWork;
    function bin2text(s:ansistring):ansistring;
    function bin2text2(s:ansistring):ansistring;
    function bin2text3(s:ansistring):ansistring;
    function version(s:string):string;
    function flip4anddehex(s:string):string;
    function flip2anddehex(s:string):string;
    function flip1anddehex(s:string):string;
    procedure readmarkers;
    function flip4(s:string):string;
    function flip1(s:string):string;
    function flip2(s:string):string;
    function hex2int(s:string):integer;
    function filetype(s:string):ANSIstring;
    procedure readfile(filename:string);
    function ValidFile:boolean;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    function GetTemporaryDirectory: string;
    procedure status(i:integer);
    procedure ExtractAll(outdir:string);
    procedure ExtractSingle(i:integer;fn:string);
    procedure Edit2Change(Sender: TObject);
    procedure Extract1Click(Sender: TObject);
    function BrowseDialog(const Title: string; const Flag: integer): string;
    procedure initdata;
    procedure ExList1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);

    procedure Extract;
    procedure SelectHexEditor1Click(Sender: TObject);
    procedure View1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure MakeNewFileData;
    procedure MakeNewHeaderAndFile;
    procedure SaveNew;

    procedure New1Click(Sender: TObject);
    procedure Open2Click(Sender: TObject);
    procedure SendtoNew1Click(Sender: TObject);
    procedure SendToNew(n:integer);
    procedure SendStreamToNew(n:integer;s:ANSIstring);
    procedure New2Click(Sender: TObject);
    procedure Open3Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure CaptionZoom;
    procedure FormActivate(Sender: TObject);
    procedure UnRegFile;
    procedure RegFile;
    procedure RegFile2;
    procedure LoadFile(fn:string);
    procedure LoadFileSFO(fn:string);
    procedure About1Click(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure New3Click(Sender: TObject);
    procedure Open4Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure QuickView1Click(Sender: TObject);
    procedure GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    function Text2Bin2(s:ANSIString):ANSIstring;
    procedure UpdateFileSizes(fileno:integer);
    procedure LoadFile2(filename:string;fileno:integer);
    procedure GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TabSheet1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure ChangeLog1Click(Sender: TObject);

    function PaddingCount(s:ANSIstring):integer;
    function PaddingWhere(s:ANSIstring):integer;
    procedure NewSFO1Click(Sender: TObject);
    procedure Usage1Click(Sender: TObject);
    procedure ReleaseNotes1Click(Sender: TObject);
    procedure r0Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RegisterFileAssociations1Click(Sender: TObject);
    procedure UnregisterFileAssociations1Click(Sender: TObject);
     procedure ReadGlobalRecents;
    procedure AddRecent(s:string);
    procedure SaveRecent(s:string);
    procedure UpdateGlobalRecents;
         procedure OReadGlobalRecents;
    procedure OAddRecent(s:string);
    procedure OSaveRecent(s:string);
    procedure OUpdateGlobalRecents;

    procedure OpenDecide(fn:string);
    procedure PreOpenSFO(fn:string);
    function GetWindowsDir:TFileName;
    procedure StatusOn(s1:string;p:boolean);
    procedure StatusChange(s1:string);
    procedure StatusProgress(pos:integer);
    procedure StatusOff;
    function RandChars(n:integer):string;
    function RandNums(n:integer):string;
    function RandMix(n:integer):string;
    function RandomFileName(ext:string):String;
    procedure Execute(app:String;Params:String);
    procedure OpenWith1Click(Sender: TObject);
    procedure OpenWith2Click(Sender: TObject);
    procedure ExList1DblClick(Sender: TObject);
    procedure ShowImage(data:ANSIstring);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ExList1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ExList1ColumnDragged(Sender: TObject);
    procedure ExList1Resize(Sender: TObject);
    
 protected
    procedure WMDROPFILES (var Msg: TWMDropFiles); message WM_DROPFILES;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

CONST

shmarker:array [0..4] of integer=(0,4,8,12,16);
shlength:array [0..4] of integer =(4,4,4,4,4);
shfilename:array[0..4] of string = ('File ID (Length=3!!)','PSF Version (???)','Offset to Key Table (B)','Offset to Value Table','Number of table entries');

stmarker:array [0..5] of integer=(20,22,23,24,28,32);
stlength:array [0..5] of integer =(2,1,1,4,4,4);
stfilename:array[0..5] of string = ('Offset of Key Name into Key Table','Data Alignment Requirements (?) (Always 4)','Data Type of Value','Size of Value Data (B)','Size of Value Data + Padding (B)','Offset of the data value into the table (B)');


marker:array [0..9] of integer=(0,6,8,12,16,20,24,28,32,36);
mlength:array [0..9] of integer =(4,1,4,4,4,4,4,4,4,4);
mfilename:array[0..9] of string = ('','','PARAM.SFO','ICON0.PNG','ICON1.PMF','PIC0.PNG','PIC1.PNG','SND0.AT3','DATA.PSP','DATA.PSAR');

formcaption='PBP Unpacker v0.94 :: Written by pdc';

var
  MainForm: TMainForm;


   filename,outdir:string;
   binstring,hexstring,textstring:ANSIstring; //longest string type available and has no problems with nulls.
// bin/hex/textstring hold bin/hex/text versions of the PBP file.
// to save on processing, I only write what is neccessary to hex/textstring.
// all of the PBP file needs to be in binstring for file saving, etc.
  dfiletype, dversion, dfilesize:string;
  offset:array[0..10] of longint;
  listpos:array[0..10] of integer; //to keep track of files and file-list entries
  StringStream:Array[2..9] of ANSIString;
  mdo:Array[0..9] of boolean;  // keep track of whether file exist.
  temppath:string;
  si:boolean;       //to check "ShowIcon" has been called. Cheap hack to stop a crash!
  HexEd:String;

  NewStringStream:Array[2..9] of ANSIString;
  NewMdo:Array[0..9] of boolean;
  NewBinString,NewBinStringData:ANSIstring;
  Newoffset:array[0..10] of longint;
  NewOffsetHexStr:ANSIstring;
  NewHeader:ANSIString;
  NewOffsetTextSTr:ANSIString;
  FileOpen:boolean=false;
  Donezoom:boolean=false;
  ParDone:boolean=false;
  CurrOpen:string = 'New File';
  CurrNew:string = 'New File';
  CurrEx:String;
  overtag:integer;
  repchar:char=#183;
  activebox:integer=2;

  SFOhdata:array[0..6] of String;
  DataS:ARray of String;
  DataI:ARray of Integer;
  SFOitems:array of SFOItem;

  wSFOhdata:array[0..6] of String;
  wDataS:ARray of String;
  wDataI:ARray of Integer;
  wSFOitems:array of SFOItem;
  BinaryArray:array of String;
  tBinaryArray:array of String;


  //wXXXXX = 'working' SFO data in the SFO editor.

  RecentList:TStringList;
  ORecentList:TStringList;

  RecentListPath:string;
  WinDir:String;



implementation

uses uSFO, uStatus, uOpenWith, uImageForm;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
WinDir:=GetWindowsDir;
RecentListPath:=ExtractFileDir(Application.ExeName)+'\recent.list';
DragAcceptFiles(Handle, True);

SpeedButton4.Width:=3;
SpeedButton4.Align:=alLeft;
SpeedButton1.Align:=alLeft;
SpeedButton2.Align:=alLeft;
SpeedButton3.Align:=alLeft;

PageControl1.ActivePageIndex:=2;
if not fileexists(RecentListPath) then
begin
RegFile;
RegFile2;
SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, 0);
SendMessage(HWND_BROADCAST, WM_SETTINGCHANGE, 0, 0);
end;

ReadGlobalRecents;

end;

procedure TMainForm.ExList1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
if Item.Index mod 2 <> 0 then
(Sender as TListView).Canvas.Brush.Color:=$00faf1ed
  else (Sender as TListView).Canvas.Brush.Color:=clwhite;

DefaultDraw:=true;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
if Open1.Execute then
  begin
  FileName:=Open1.FileName;
  OpenDecide(Open1.FileName)
  end;

end;

procedure TMainForm.PreWork;
var f:file;
begin
initdata; //initialise all data for a 'fresh' start.
          //it does not clear NewStringStream[2..9] though;
StatusOn('Loading '+CurrOpen,false);
CurrOpen:=ExtractFileName(CurrOpen);
if not FileExists(filename) then begin Showmessage('File does not exist.'); end else
begin
// file must be opened temporarily to check file size. I should make a function for this.
FileMode := fmShareDenyNone;
assignfile(f,filename);
reset(f,1);
dfilesize:=inttostr(filesize(f));
closefile(f);
//---------
//application.processmessages;
readfile(filename);

textstring:=bin2text(copy(binstring,0,9));

// 40 should be long enough to read to read the file type!
// I actually only need the first 4 chars.
dfiletype:='';
dfiletype:=(filetype(copy(textstring,marker[0],3)));
dversion:=version(copy(hexstring,14,2));
label4.Caption:=filename;
label5.caption:=dfiletype;
label6.caption:=dversion;
label8.Caption:=(dFileSize)+' bytes ('+(FloatToStrF((strtoint(dFileSize))/(1024*1024), ffNumber, 6, 2)+' MB)');

  if ValidFile then
   begin
   Readmarkers;
   end;
  end;
  StatusOff;
end;

// the byte order needs flipping.
function TMainForm.flip4(s:string):string;
var i:integer;
begin
for i:=(8 div 2) to (8-length(s) div 2) do
  begin
  s:=s+'00';
  end;

s:=Copy(s, 7, 2) + Copy(s, 5, 2) + Copy(s, 3, 2) + Copy(s, 1, 2);
result:=s;
end;

function TMainForm.flip2(s:string):string;
var i:integer;
begin
for i:=(4 div 2) to (4-length(s) div 2) do
  begin
  s:=s+'00';
  end;
s:=Copy(s, 3, 2) + Copy(s, 1, 2);
result:=s;
end;

// the byte order needs flipping.
function TMainForm.flip1(s:string):string;
var
s1,s2:string;
begin
s1:=s[1];
s2:=s[2];

result:=s2+s1;
end;

function TMainForm.hex2int(s:string):integer;
begin
result:=(strtoint('$'+s));
end;


function TMainForm.filetype(s:string):string;
begin
result:=copy(s,1,length(s));
end;

procedure TMainForm.readfile(filename:string);
var
  StStream: TStringStream;
  FStream: TFileStream;
  line: string;
  c:char;
  i:integer;
  ordval, ordval1, ordval2 : integer;

begin
  FStream := TFileStream.Create(filename, fmShareDenyNone);
  StStream := TStringStream.Create('');
  try
    StStream.CopyFrom(FStream, FStream.Size);
    binstring := StStream.DataString;




   Line:= '';

//           For i:= 1 To FStream.Size do   //too much work!!
//100 should be enough! Only need the file header.
          For i:= 1 To 44 do
           begin
            c := binstring[i];
            ordval := ord(c);
            ordval1 := ordval div 16;
            ordval2 := ordval mod 16;
            Line := Line + '0123456789ABCDEF'[ordval1+1]+'0123456789ABCDEF'[ordval2+1];
            if Length(Line) = 2 then
            begin

//             memo1.lines.add(line);  //debug
             hexstring:=hexstring+line;
             line := '';
            end;
            end;
//memo1.Text:=hexstring; //debg



  finally
    StStream.Free;
    FStream.Free;    // free streams when finished.
  end;

end;

function TMainForm.bin2text(s:ansistring):ansistring;
var i:integer;
line:ANSIstring;
begin
           //LineLength := 0;
           Line:= '';
           result:='';
           For i:= 0 To length(s)-1 do
           begin
            If s[i] = #0 then
            begin
//             memo1.lines.add(Line);  //debug
             result:=result+line;
             //LineLength := 0;
             Line := '';
            end
            else
            begin
//             //inc(LineLength);
             Line := Line+s[i];
            end;
           end;
    end;

function TMainForm.version(s:string):string;
begin
result:=flip1anddehex(s);
end;

function TMainForm.flip4anddehex(s:string):string;
begin
s:=flip4(s);
result:=inttostr(strtoint('$'+s));
end;

function TMainForm.flip2anddehex(s:string):string;
begin
s:=flip2(s);
result:=inttostr(strtoint('$'+s));
end;

function TMainForm.flip1anddehex(s:string):string;
begin
s:=flip1(s);
result:=inttostr(strtoint('$'+s));
end;

procedure TMainForm.readmarkers;
var i:integer;
item:tlistitem;
fs:int64;
begin
offset[0]:=0;
offset[1]:=0;
offset[10]:=0;  //these 3 do not contain real file offsets.
for i:=2 to 9 do       //only 2 to 9 contain real file offsets
  begin
  offset[i]:=strtoint(flip4anddehex((copy(hexstring,2*(marker[i])+1,8))));
  //gets the offset in integer form.
  // marker[i] multiplied by 2 because the hex string has twice as many chars
   end;
for i:= 2 to 9 do
  begin   //check that these files exist. IF NOT mdo[] then no work to be done for file.
  if offset[i]=offset[i+1] then
    begin
    mdo[i]:=false;
    end
    else
    begin
    mdo[i]:=true;

    end;
  end;

  for i:=2 to 9 do
  begin
  //add items to file list.
  // grrrr.... why can't items have a .tag?!
  if mdo[i]=true then
    begin
    listpos[ExList1.items.count]:=i; //note which file we are listing.

    item:=ExList1.Items.Add;
    item.Caption:=mfilename[i];
    //item 9 is always a special case, as there is no higher offset.
    //item 9's [i+1] offset is the EOF, or filesize.
    if i=9 then fs:=(length(binstring)-offset[i]) else
    fs:=(offset[i+1]-offset[i]);
    Item.SubItems.Add(IntToStr(fs));
    if i=9 then item.SubItems.Add(FloatToStrF((length(binstring)-offset[i])/(1024*1024), ffNumber, 6, 2)) else
    item.SubItems.Add(FloatToStrF((offset[i+1]-offset[i])/(1024*1024), ffNumber, 6, 2));
    item.ImageIndex:=0;
    If fs=0 then
    begin
    ExList1.Items.Item[ExList1.Items.Count-1].Delete;
    mdo[i]:=false;
    end;
      StringStream[i]:='';
      if i=9 then
      //copy each 'file' to it's own string.
        begin
        StringStream[i]:=copy(binstring,offset[i]+1,length(binstring)-offset[i]);
        end else
        begin
    StringStream[i]:=copy(binstring,offset[i]+1,offset[i+1]-offset[i]);
    end;
    end;


  end;



end;

function TMainForm.ValidFile:boolean;
begin
// more checks should be in place but things are fine so long
// as a valid PBP is provided.
result:=uppercase(dfiletype)='PBP';
end;



procedure TMainForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then prework;
end;

function TMainForm.GetTemporaryDirectory: string;
begin
SetLength(Result, 256); // extra byte for NULL
GetTempPath(255, PChar(Result));
SetLength(Result, StrLen(PChar(Result)));
end;

procedure TMainForm.status(i:integer);
begin
case i of
0:
begin
Statusbar1.simpletext:='Ready.';
screen.Cursor:=crDefault
end;
1:
begin
Statusbar1.simpletext:='Reading file...';
Screen.Cursor:=crHourGlass;

end;
2:
begin
Statusbar1.simpletext:='Saving file...';
Screen.Cursor:=crHourGlass;
end;

end;
end;

//simply run through each file (2..9) saving each one at a time.
//using mdo[] to check the file needs extracting and using mfilename[] for names.
procedure TMainForm.ExtractAll(outdir:string);
var i:integer;
ts:Tstringstream;
fs:Tfilestream;
begin
forcedirectories(outdir);      //make the folder
status(2);
for i:=2 to 9 do
  begin
  if mdo[i]=true then
    begin

      if i=9 then
        begin
        ts:=tstringstream.Create(StringStream[i]);
        fs:=TFilestream.Create(outdir+'\'+mfilename[i],fmOpenWrite or fmCreate);
        fs.CopyFrom(ts,length(stringstream[i]));
        fs.Free;
        ts.Free;
        end else
        begin

    ts:=tstringstream.Create(StringStream[i]);
    fs:=TFilestream.Create(outdir+'\'+mfilename[i],fmOpenWrite or fmCreate);
    fs.CopyFrom(ts,length(stringstream[i]));
    fs.Free;
    ts.Free;
    end;
    end;


  end;
  status(0);
  showmessage('Files extracted to '+outdir);

  end;

//just extract 1, based on i, the file number and fn, the file name to write.
procedure TMainForm.ExtractSingle(i:integer;fn:string);
var ts:Tstringstream;
fs:Tfilestream;

begin
status(2);
forcedirectories(extractfiledir(fn));


  if mdo[i]=true then
    begin
      if i=9 then
        begin
        ts:=tstringstream.Create(StringStream[i]);
        fs:=TFilestream.Create(fn,fmOpenWrite or fmCreate);
        fs.CopyFrom(ts,length(stringstream[i]));
        fs.Free;
        ts.Free;
        end else
        begin


    ts:=tstringstream.Create(StringStream[i]);
    fs:=TFilestream.Create(fn,fmOpenWrite or fmCreate);
    fs.CopyFrom(ts,length(stringstream[i]));
    fs.Free;
    ts.Free;
    end;

    end;
status(0);
  end;



procedure TMainForm.Edit2Change(Sender: TObject);
begin
outdir:=TEdit(Sender).Text;
end;

procedure TMainForm.Extract1Click(Sender: TObject);
var fileno:integer;
i:integer;
begin
for i:=0 to ExList1.Items.Count-1 do
begin

if ExList1.Items.Item[i].Selected then // must ensure we have something selected!
  begin
  fileno:=ListPos[ExList1.Items.Item[i].Index];
  SaveDialog1.FileName:=mfilename[fileno];
  SaveDialog1.Filter:=Copy(ExtractFileExt(mfilename[fileno]),2,4)+' files (*.'+Copy(ExtractFileExt(mfilename[fileno]),2,4)+')|*.'+Copy(ExtractFileExt(mfilename[fileno]),2,4);

  if SaveDialog1.Execute then
    begin
    ExtractSingle(fileno,savedialog1.FileName);
    end;

  end;
end;
end;

//thanks Google!!
function TMainForm.BrowseDialog(const Title: string; const Flag: integer): string;
var
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  Result:='';
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  with BrowseInfo do begin
    hwndOwner := Application.Handle;
    pszDisplayName := @DisplayName;
    lpszTitle := PChar(Title);
    ulFlags := Flag;
  end;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

procedure TMainForm.initdata;
var i:integer;
begin
si:=false;
for i:=0 to 9 do
  begin
  mdo[i]:=false;
  Newoffset[i]:=0;
  end;

for i:=2 to 9 do
  begin
  stringstream[i]:='';
  end;
binstring:='';
hexstring:='';
textstring:='';
if ExList1.SelCount>0 then
ExList1.Selected.Selected:=false;
ExList1.Clear;

NewBinString:='';
NewBinStringData:='';
NewOffsetHexStr:='';
NewHeader:='';
NewOffsetTextSTr:='';

end;

procedure TMainForm.ExList1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var png:TPNGObject;
ss:TStringStream;
fileno:integer;
begin
if (ExList1.SelCount>0) and (si) then
begin
fileno:=listpos[item.Index];
if pos('PNG',uppercase(mfilename[fileno]))>0 then
  begin
  try
  Image1.Picture:=nil;
  ss:=TStringStream.Create(StringStream[fileno]);
  png:=TPNGObject.Create;
  png.LoadFromStream(ss);
  image1.Picture.Graphic:=png;
  finally ss.Free;
  end;
  end;
  end;
end;


procedure TMainForm.ShowIcon;
var png:TPNGObject;
ss:TStringStream;
begin
try
Image1.Picture:=nil;
si:=true;
ss:=TStringStream.Create(StringStream[3]);  //preview PNG always in [3]
png:=TPNGObject.Create;
png.LoadFromStream(ss);
image1.Picture.Graphic:=png;

finally ss.Free; end;
end;


procedure TMainForm.TabSheet1Show(Sender: TObject);
begin
SpeedButton3.Caption:='Save';
SpeedButton3.Enabled:=True;
self.Caption:=formcaption+' - ['+CurrNew+']';
end;

procedure TMainForm.TabSheet2Show(Sender: TObject);
begin
SpeedButton3.Caption:='Extract';
SpeedButton3.Enabled:=True;
self.Caption:=FormCaption+' - ['+CurrOpen+']';

end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
var t,i:integer;
begin
if TSpeedButton(Sender).Caption='Extract' then Extract
else
begin
t:=0;
for i:=2 to 9 do
if NewMdo[i] then t:=t+1;
if (not NewMdo[2]) or (t<2) then
showmessage('Every PBP archive needs at least a PARAM.SFO and one other file.') else SaveNew;
end;
end;

procedure TMainForm.Extract;
var outdir:string;
begin
outdir:=Browsedialog('Select output directory',BIF_USENEWUI);
if length(outdir)>0 then
  begin
  ExtractAll(outdir);
  end;


end;

procedure TMainForm.SelectHexEditor1Click(Sender: TObject);
begin
if HexDialog.Execute then
  begin
  HexEd:=HexDialog.FileName;
  end;
end;

procedure TMainForm.View1Click(Sender: TObject);
var
fileno:integer;
fs:int64;
begin
if (ExList1.SelCount=1) {and (si) }then
begin
fileno:=listpos[ExLIst1.Selected.Index];

case FileNo of
2:
begin

    SFOForm.ParseSFOStream(StringStream[2]);
    SFOForm.Caption:='SFO Editor - [-->PARAM.SFO-->]';
    SFOForm.FixView;
    SFOForm.ShowModal;

end;
3:
begin
ShowImage(StringStream[3]);
end;
5:
begin
ShowImage(StringStream[5]);
end;
6:
begin
ShowImage(StringStream[6]);
end;

end; //end case

end;

end;

procedure TMainForm.Image1Click(Sender: TObject);
begin
if (si) then showicon;
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
//  StStream: TStringStream;
//  FStream: TFileStream;
  f:file;
  fs:int64;
  fileno:integer;
  Ext:String;
begin
fileno:=TButton(Sender).Tag;

NewOpen.FileName:=mFileName[fileno];
Ext:=copy(ExtractFileExt(NewOpen.FileName),2,4);
NewOpen.Filter:=Ext+' Files|*.'+Ext+'|All Files (*.*)|*.*';
if NewOpen.Execute then
begin
// file must be opened temporarily to check file size
FileMode := fmShareDenyNone;
assignfile(f,NewOpen.FileName);
reset(f,1);
if filesize(f)>((1048576)*(20)) then Showmessage('Warning: You are loading a large file. You may experience memory issues.');
closefile(f);
//--
LoadFile2(NewOpen.FileName,FileNo)
end;

// file must be opened temporarily to check file size



end;




//end;

procedure TMainForm.Clear1Click(Sender: TObject);
var fileno:integer;
begin
FIleNo:=PopupMenu2.Tag;
FileNo:=Overtag;
NewMdo[Fileno]:=false;
NewStringStream[fileno]:='';

case fileno of
2:
begin
Label9.Caption:='No file loaded.';
Label10.Caption:='';
end;
3:
begin
Label11.Caption:='No file loaded.';
Label12.Caption:='';
end;
4:
begin
Label13.Caption:='No file loaded.';
Label14.Caption:='';
end;
5:
begin
Label15.Caption:='No file loaded.';
Label16.Caption:='';
end;
6:
begin
Label17.Caption:='No file loaded.';
Label18.Caption:='';
end;
7:
begin
Label19.Caption:='No file loaded.';
Label20.Caption:='';
end;
8:
begin
Label21.Caption:='No file loaded.';
Label22.Caption:='';
end;
9:
begin
Label23.Caption:='No file loaded.';
Label24.Caption:='';
end;

end;
end;


procedure TMainForm.PopupMenu2Popup(Sender: TObject);
begin
PopupMenu2.Tag:=ActiveBox;

if (ActiveBox=2) then
  begin
  QuickView1.Caption:='SFO Editor';
  QuickView1.enabled:=true;
  end
else if (ActiveBox=3) or (ActiveBox=5) or (ActiveBox=6) then
begin QuickView1.Caption:='View Image';
QuickView1.enabled:=true;

end else
  QuickView1.enabled:=false;

end;

procedure TMainForm.MakeNewFileData;
var curpos:int64;
i:integer;
begin
curpos:=0;

for i:=2 to 9 do
  begin
  NewOffset[i]:=curpos;
  if NewMdo[i] then
    begin
    NewBinStringData:=NewBinStringData+NewStringStream[i];
    CurPos:=Curpos+Length(NewStringSTream[i]);
    end;

  end;

for i:=2 to 9 do
  begin
  NewOffSet[i]:=NewOffset[i]+40;
  end;

for i:=2 to 9 do
  begin
  NewOffsetHexStr:=NewOffsetHexStr+Flip4(IntToHex(NewOffset[i],8));
  end;

for i:=0 to (Length(NewOffsetHexStr)-1) do
  begin
  if (i mod 2 = 0) or (i=0) then
    begin
    NewOffsetTextStr:=NewOffsetTextStr+chr(StrToInt('$'+copy(NewOffsetHexStr,i+1,2)));
    end;

  end;


end;

procedure TMainForm.MakeNewHeaderAndFile;
var i:integer;
begin
//PBP tag
NewHeader:=NewHeader+chr(0);
NewHeader:=NewHeader+Edit1.Text;
//PBP File Version
NewHeader:=NewHeader+chr(0);
NewHeader:=NewHeader+chr(0);
NewHeader:=NewHeader+chr(strtoint(Edit2.Text));
NewHeader:=NewHeader+chr(0);
//FILE OFFSETS
NewHeader:=NewHeader+NewOffsetTextStr;

NewBinString:=NewHeader+NewBinStringData;


end;

procedure TMainForm.SaveNew;
var
fs:TFileStream;
ss:TStringStream;
var i:integer;
begin
try
if SaveDialog2.Execute then
  begin
  StatusOn('Saving file to '+SaveDialog2.filename,false,);
NewBinStringData:='';
NewOffsetHexStr:='';
NewOffsetTextStr:='';
NewHeader:='';
NewBinString:='';

for i:=2 to 9 do NewOffset[i]:=0;

  ForceDirectories(ExtractFileDir(SaveDialog2.FileName));
  MakeNewFileData;
  MakeNewHeaderAndFile;
  ss:=TStringStream.Create(NewBinString);
  fs:=TFileStream.Create(SaveDialog2.FileName,(fmCreate));
  fs.CopyFrom(ss,length(ss.DataString));
  fs.Free;
  ss.Free;
  CurrNew:=ExtractFileName(SaveDialog2.FileName);
  StatusOff;
  mainform.Caption:=formcaption+' - ['+CurrNew+']';
  end;
  except
  begin
  StatusOff;
  Showmessage('Unable to save file. Please ensure you have the correct privelages and no other applications are using this file.'+' If you were trying to save directly to your PSP, this could mean the USB drivers have not loaded up properly. Please check that you can see your PSP in Explorer.');
  end;
  end;

end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
var i:integer;
buttonSelected : Integer;
Modified:boolean;
begin
modified:=false;

for i:=2 to 9 do
begin
if NewMdo[i]=true then Modified:=true;
end;

  // Show a confirmation dialog
if Modified then  buttonSelected := MessageDlg('Reset ''New'' PBP file?',mtConfirmation , [mbYes,mbNo], 0);
//  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
  // Show the button type selected
  if (buttonSelected = mrYes) or (not modified) then

begin
Edit1.Text:='PBP';

for i:=2 to 9 do
begin
NewMdo[i]:=false;
NewStringStream[i]:='';
end;
Label9.Caption:='No file loaded.';
Label10.Caption:='';

Label11.Caption:='No file loaded.';
Label12.Caption:='';

Label13.Caption:='No file loaded.';
Label14.Caption:='';

Label15.Caption:='No file loaded.';
Label16.Caption:='';

Label17.Caption:='No file loaded.';
Label18.Caption:='';

Label19.Caption:='No file loaded.';
Label20.Caption:='';

Label21.Caption:='No file loaded.';
Label22.Caption:='';

Label23.Caption:='No file loaded.';
Label24.Caption:='';
CurrNew:='New File';
self.Caption:=formcaption+' - ['+CurrNew+']';
end;

PageControl1.ActivePageIndex:=0;
end;


procedure TMainForm.New1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
end;

procedure TMainForm.Open2Click(Sender: TObject);
begin
if fileOpen then
PageControl1.ActivePageIndex:=1
else SpeedButton2.Click;
end;

procedure TMainForm.SendtoNew1Click(Sender: TObject);
var i:integer;
begin
//Showmessage(inttostr(ListPos[ExList1.Selected.Index]));
if ExList1.SelCount>0 then
  begin
  for i:=0 to ExList1.Items.Count-1 do
    if ExList1.Items.Item[i].Selected then
    SendToNew(ListPos[ExList1.Items.Item[i].Index]);
  end;
    PageControl1.ActivePageIndex:=0;

end;

procedure TMainForm.SendToNew(n:integer);
var fn:string;
fs:int64;
begin
NewStringStream[n]:='';
NewStringStream[n]:=StringStream[n];
NewMdo[n]:=true;
fn:='--Open-->'+mFileName[n];
fs:=length(NewStringStream[n]);

case n of
2:
begin
Label9.Caption:=fn;
Label10.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
3:
begin
Label11.Caption:=fn;
Label12.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
4:
begin
Label13.Caption:=fn;
Label14.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
5:
begin
Label15.Caption:=fn;
Label16.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
6:
begin
Label17.Caption:=fn;
Label18.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
7:
begin
Label19.Caption:=fn;
Label20.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
8:
begin
Label21.Caption:=fn;
Label22.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
9:
begin
Label23.Caption:=fn;
Label24.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;

end;
end;

procedure TMainForm.SendStreamToNew(n:integer;s:ANSIstring);
var fn:string;
fs:int64;
begin
NewStringStream[n]:='';
NewStringStream[n]:=s;
NewMdo[n]:=true;
fn:='--Open-->'+mFileName[n];
fs:=length(s);

case n of
2:
begin
Label9.Caption:=fn;
Label10.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
3:
begin
Label11.Caption:=fn;
Label12.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
4:
begin
Label13.Caption:=fn;
Label14.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
5:
begin
Label15.Caption:=fn;
Label16.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
6:
begin
Label17.Caption:=fn;
Label18.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
7:
begin
Label19.Caption:=fn;
Label20.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
8:
begin
Label21.Caption:=fn;
Label22.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
9:
begin
Label23.Caption:=fn;
Label24.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;

end;
PageControl1.ActivePageIndex:=0;


end;


procedure TMainForm.New2Click(Sender: TObject);
begin
SpeedButton1.Click;
end;

procedure TMainForm.Open3Click(Sender: TObject);
begin
SpeedButton2.Click;
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
Close;
end;

procedure TMainForm.CaptionZoom;
var sCaption:string;
    i:integer;
begin
if not donezoom then
  begin
  sCaption:='                                                                                                                                                                                                  ';
  for i:=1 to (length(sCaption)-1)div 4 do
    begin
    caption:=scaption+'P';
    application.ProcessMessages;
    delete(scaption,1,4);
      if application.Terminated then break;
      sleep(10);
    end;
  sCaption:=formcaption;
for i:=1 to length(sCaption) do
  begin
  caption:=copy(sCaption,1,i);
  application.ProcessMessages;
    if application.Terminated then break;
    sleep(15);
  end;
donezoom:=true;
end;
end;


procedure TMainForm.FormActivate(Sender: TObject);
var i:integer;
begin
if not Donezoom then
CaptionZoom;
MainForm.Caption:=FormCaption;

if (ParamCount>=1) and (not ParDone) then
begin
FileName:=ParamStr(1);
if not FileExists(FileName) then
begin
FileName:='';
  for i:=1 to ParamCount do
    begin
    FileName:=FileName+ParamStr(i)+' ';
    end;

end;
if pos('.PBP',Uppercase(FileName))>0 then
  begin
ParDone:=true;
LoadFile(Filename);
  end
  else
  if pos('.SFO',Uppercase(FileName))>0 then
  begin
  ParDone:=true;
  LoadFileSFO(Filename);
  end;
end;
end;

Procedure TMainForm.RegFile;
var
// Declaration
reg : TRegistry; // defined in unit "Registry"
begin

// .txc
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  if Reg.OpenKey('.pbp', True) then
  begin
     Reg.WriteString('','pbp_archive');
  end;
  Reg.Destroy;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  if Reg.OpenKey('pbp_archive\shell\open\command', True) then
  begin
    Reg.WriteString('',Application.ExeName+' %1');
  end;
  Reg.Destroy;

// icon
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  if Reg.OpenKey('pbp_archive\DefaultIcon', True) then
  begin
     Reg.WriteString('',Application.ExeName+',0');
  end;
  Reg.Destroy;
End;

Procedure TMainForm.UnRegFile;
var
// Declaration
reg : TRegistry; // defined in unit "Registry"
begin

// .txc
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  reg.DeleteKey('.pbp');
  Reg.Destroy;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  reg.DeleteKey('pbp_archive');
  Reg.Destroy;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  Reg.DeleteKey('.sfo');
  Reg.Destroy;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  Reg.DeleteKey('sfo_file\shell\open\command');
  Reg.Destroy;


End;


Procedure TMainForm.RegFile2;
var
// Declaration
reg : TRegistry; // defined in unit "Registry"
begin


  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  if Reg.OpenKey('.sfo', True) then
  begin
     Reg.WriteString('','sfo_file');
  end;
  Reg.Destroy;

  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  if Reg.OpenKey('sfo_file\shell\open\command', True) then
  begin
    Reg.WriteString('',Application.ExeName+' %1');
  end;
  Reg.Destroy;

// icon
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CLASSES_ROOT;
  if Reg.OpenKey('sfo_file\DefaultIcon', True) then
  begin
     Reg.WriteString('',WinDir+'\SFO.ICO');
  end;
  Reg.Destroy;
End;

procedure TMainForm.LoadFile(fn:string);
begin
  FileName:=fn;
  CurrOpen:=extractfilename(fn);
  try
  PreWork;
  except
begin
Showmessage('Unable to open file. Either the file cannot be read or it is not a valid PBP file.');
FileOpen:=false;
PageControl1.ActivePageIndex:=3;
end;
end;

  if not ValidFile then
  begin
  PageControl1.ActivePageIndex:=2;
  Showmessage('PBP file detected as invalid or corrupt.');
  FileOpen:=false;
  PageControl1.ActivePageIndex:=2;
  end
  else
  begin
  AddRecent(fn);
  try
  ShowIcon;
  except ; end;
  PageControl1.ActivePageIndex:=1;
  FileOpen:=true;
  self.Caption:=FormCaption+' - ['+CurrOpen+']';
  end;
end;

procedure TMainForm.About1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:=2;
end;

procedure TMainForm.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
overtag:=TButton(sender).tag;
activebox:=TButton(sender).tag;
end;

procedure TMainForm.New3Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
end;

procedure TMainForm.Open4Click(Sender: TObject);
begin
if fileOpen then
PageControl1.ActivePageIndex:=1
else SpeedButton2.Click;
end;

procedure TMainForm.TabSheet3Show(Sender: TObject);
begin
SpeedButton3.Enabled:=false;
self.Caption:=FormCaption;
self.Caption:=formcaption+' - '+TTabSheet(sender).Caption;
end;

procedure TMainForm.QuickView1Click(Sender: TObject);
var fileno:integer;
begin
fileno:=ActiveBox;

case FileNo of
2:
begin

    SFOForm.ParseSFOStream(NewStringStream[2]);
    SFOForm.Caption:='SFO Editor - [-->PARAM.SFO-->]';
    SFOForm.FixView;
    SFOForm.ShowModal;

end;
3:
begin
ShowImage(NewStringStream[3]);
end;
5:
begin
ShowImage(NewStringStream[5]);
end;
6:
begin
ShowImage(NewStringStream[6]);
end;

end; //end case

end;



procedure TMainForm.GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//OverTag:=-1;
end;

function TMainForm.bin2text2(s:ansistring):ansistring;
var linelength,i:longint;
line:ansistring;
begin
    {       //LineLength := 0;
           Line:= '';
           For i:= 0 To length(s)-1 do
           begin
            If (s[i] = #0 then
            begin
            Line := Line+#126;
//             memo1.lines.add(Line);  //debug
             result:=result+line;
             //LineLength := 0;
             Line := '';
            end
            else
            begin
             //inc(LineLength);
             Line := Line+s[i];
            end;
           end; }

// eek!
// used for debugging only!!! :)
result:='';
if pos(#183,s)>0 then RepChar:=#255;
  For i:=1 To length(s) do
           begin
            If (s[i] = #0) then
            s[i]:=RepChar;
            end;
            result:=s;
    end;

function TMainForm.bin2text3(s:ansistring):ansistring;
var linelength,i:longint;
lineansi:string;
begin
    {       //LineLength := 0;
           Line:= '';
           For i:= 0 To length(s)-1 do
           begin
            If (s[i] = #0 then
            begin
            Line := Line+#126;
//             memo1.lines.add(Line);  //debug
             result:=result+line;
             //LineLength := 0;
             Line := '';
            end
            else
            begin
             //inc(LineLength);
             Line := Line+s[i];
            end;
           end; }
//if pos(#183,s)>0 then RepChar:=#255;
result:='';
result:=StringReplace(S,#0,'NIL',[rfReplaceAll]);
{  For i:=1 To length(s) do
           begin
            If (s[i] = #0) then
            s[i]:='#0';
            end;
            result:=s; }
    end;


function TMainForm.Text2Bin2(s:ANSIString):ANSIstring;
var linelength,i:longint;
line:ansistring;
begin
       {    //LineLength := 0;
           Line:= '';
           For i:= 0 To length(s)-1 do
           begin
            If s[i] = #126 then
            begin
            Line := Line+#0;
//             memo1.lines.add(Line);  //debug
             result:=result+line;
             //LineLength := 0;
             Line := '';
            end
            else
            begin
             //inc(LineLength);
             Line := Line+s[i];
            end;
           end; }
           result:='';
 For i:=1 To length(s) do
           begin
            If (s[i] = RepChar) then
            s[i]:=#0;
            end;
            result:=s;
    end;

procedure TMainForm.UpdateFileSizes(fileno:integer);
var fs:int64;
begin
fs:=length(NewStringStream[fileno]);
case fileno of
2:
begin

Label10.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
3:
begin

Label12.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
4:
begin

Label14.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
5:
begin

Label16.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
6:
begin

Label18.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
7:
begin

Label20.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
8:
begin

Label22.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
9:
begin

Label24.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
end;
end;

procedure TMainForm.WMDROPFILES(var Msg: TWMDropFiles);
var
  i, amount: Integer;
  FileName: array[0..MAX_PATH] of Char;
begin
  inherited;

  try
    Amount := DragQueryFile(Msg.Drop, $FFFFFFFF, FileName, MAX_PATH);
    for i := 0 to (Amount - 1) do
    begin
      DragQueryFile(Msg.Drop, i, FileName, MAX_PATH);
      if activebox>0 then
      LoadFile2(filename,activebox);
    end;
  finally
    DragFinish(Msg.Drop);

  end;
end;

procedure TMainForm.LoadFile2(filename:string;Fileno:integer);
var
FStream:TFilestream;
StSTream:TStringStream;
f:file;
fs:int64;
begin
  FStream := TFileStream.Create(Filename, fmShareDenyNone);
  StStream := TStringStream.Create('');
  try
    StStream.CopyFrom(FStream, FStream.Size);
    NewStringStream[fileno] :='';
    NewStringStream[fileno] := StStream.DataString;
    NewMdo[fileno]:=true;

  finally
    StStream.Free;
    FStream.Free;    // free streams when finished. frees memory.
FileMode := fmShareDenyNone;
assignfile(f,filename);
reset(f,1);
fs:=filesize(f);
closefile(f);
//^^^^^^^^^^

case fileno of
2:
begin
Label9.Caption:=FileName;
Label10.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
3:
begin
Label11.Caption:=FileName;
Label12.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
4:
begin
Label13.Caption:=FileName;
Label14.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
5:
begin
Label15.Caption:=FileName;
Label16.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
6:
begin
Label17.Caption:=FileName;
Label18.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
7:
begin
Label19.Caption:=FileName;
Label20.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
8:
begin
Label21.Caption:=FileName;
Label22.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;
9:
begin
Label23.Caption:=FileName;
Label24.Caption:=inttostr(fs)+' bytes ('+(FloatToStrF((fs)/(1024*1024), ffNumber, 6, 2)+' MB)');
end;

end;
end;
end;

procedure TMainForm.GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
activebox:=TGroupBox(sendeR).Tag;
end;

procedure TMainForm.TabSheet1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
activebox:=-1;
end;

procedure TMainForm.PopupMenu1Popup(Sender: TObject);
var FileNo:integer;
begin
if ExList1.SelCount<1 then
begin
View1.Enabled:=false;
Extract1.Enabled:=false;
SendToNew1.Enabled:=false;
OpenWith1.Enabled:=false;

end
else
begin
View1.Enabled:=true;
fileno:=ListPos[ExList1.Selected.Index];
if fileno=2 then
begin
View1.Caption:='SFO Editor';
View1.Enabled:=true;
end
else if (fileno=3) or (fileno=5) or (fileno=6) then
begin
View1.Caption:='View Image';
View1.Enabled:=true;
end else View1.Enabled:=false;


Extract1.Enabled:=true;
SendToNew1.Enabled:=true;
OpenWith1.Enabled:=True;
end;
end;

procedure TMainForm.Label26Click(Sender: TObject);
begin
ShellExecute(self.WindowHandle,'open','www.pdc.me.uk/pbp/',nil,nil, SW_SHOWNORMAL);
end;

procedure TMainForm.ChangeLog1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:=3;
end;


function TMainForm.PaddingCount(s:ansistring):integer;
var i:integer;
begin
result:=0;

i:=Length(s);

while s[i]=#0 do
  begin
  result:=result+1;
  i:=i-1;
  end;
end;

function TMainForm.PaddingWhere(s:ansistring):integer;
var i:integer;
begin
result:=0;

i:=Length(s);

while Ord(s[i])=0 do
  begin
  result:=result+1;
  i:=i-1;
  end;
result:=i;
end;

procedure TMainForm.NewSFO1Click(Sender: TObject);
begin
SFOForm.FixView;
SFOForm.Caption:='SFO Editor - [New File]';
SFOForm.SFOList.Clear;
SFOForm.SFOList2.Clear;
SFOForm.ShowModal;
end;

procedure TMainForm.Usage1Click(Sender: TObject);
begin
//PageControl1.ActivePageIndex:=5;
ShellExecute(self.WindowHandle,'open',PChar(ExtractFileDir(APplication.ExeName)+'\help.html'),nil,nil, SW_SHOWNORMAL);
end;

procedure TMainForm.ReleaseNotes1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:=4;
end;

procedure TMainForm.LoadFileSFO(fn:string);
var
FStream:TFilestream;
StSTream:TStringStream;
begin
  FStream := TFileStream.Create(fn, fmShareDenyNone);
  StStream := TStringStream.Create('');
  try
    StStream.CopyFrom(FStream, FStream.Size);
    SFOForm.ParseSFOStream(StStream.DataString);
    SFOForm.FixView;

  finally
    StStream.Free;
    FStream.Free;    // free streams when finished. frees memory.
    uSFO.FileName:=fn;
    SFOForm.ShowModal;

end;

end;

procedure TMainForm.ReadGlobalRecents;
var m:TMemo;
cnt,i:integer;
begin
RecentList:=TStringList.Create;
if fileexists(ExtractFileDir(Application.ExeName)+'\recent.list') then
RecentList.LoadFromFile(ExtractFileDir(Application.ExeName)+'\recent.list');
while RecentList.Count < 5 do
RecentList.Add('(none)');


for i:=0 to 4 do
  if RecentList.Strings[i]='' then RecentList.Strings[i]:='(none)';
if Length(RecentList.Strings[1])>0 then
r1.Caption:=RecentList.Strings[1]
else
  begin
  r1.Caption:='(none)';
  r1.Tag:=1;
  end;
if Length(RecentList.Strings[2])>0 then
r2.Caption:=RecentList.Strings[2]
else
  begin
  r2.Caption:='(none)';
  r2.Tag:=1;
  end;
  if Length(RecentList.Strings[3])>0 then
r3.Caption:=RecentList.Strings[3]
else
  begin
  r3.Caption:='(none)';
  r3.Tag:=1;
  end;
  if Length(RecentList.Strings[4])>0 then
r4.Caption:=RecentList.Strings[4]
else
  begin
  r4.Caption:='(none)';
  r4.Tag:=1;
  end;
  if Length(RecentList.Strings[0])>0 then
r0.Caption:=RecentList.Strings[0]
else
  begin
  r0.Caption:='(none)';
  r0.Tag:=1;
  end;



end;

procedure TMainForm.r0Click(Sender: TObject);
begin
OpenDecide(StringReplace(TMenuItem(Sender).Caption,'&','',[rfReplaceAll]));
end;

procedure TMainForm.AddRecent(s:string);
var
i,a:integer;

begin

for i:=0 to 4 do
   begin
   if LowerCase(s)=LowerCase(RecentList.Strings[i]) then
   begin
   RecentList.delete(i);
   RecentList.Add('(none)');
   end;
   end;


RecentList.Strings[4]:=RecentList.Strings[3];
RecentList.Strings[3]:=RecentList.Strings[2];
RecentList.Strings[2]:=RecentList.Strings[1];
RecentList.Strings[1]:=RecentList.Strings[0];
RecentList.Strings[0]:=s;


UpdateGlobalRecents;

end;

procedure TMainForm.SaveRecent(s:string);
var m:Tmemo;
i:integer;
begin
RecentList.SaveToFile(ExtractFileDir(Application.ExeName)+'\recent.list');
end;

procedure TMainForm.UpdateGlobalRecents;
begin

r1.Caption:=RecentList.Strings[1];
r2.Caption:=RecentList.Strings[2];
r3.Caption:=RecentList.Strings[3];
r4.Caption:=RecentList.Strings[4];
r0.Caption:=RecentList.Strings[0];


end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
SaveRecent('');
OSaveRecent('');
end;

procedure TMainForm.OpenDecide(fn:string);
begin
if not (fn='(none)') then
if pos('.PBP',UpperCase(fn))>0 then
  begin
  SFOForm.Close;
  CurrOpen:=fn;
  LoadFile(fn);
  end else
if pos('.SFO',UpperCase(fn))>0 then PreOpenSFO(fn) else
Showmessage('Please ensure you file ends in either .PBP or .SFO!');
end;

procedure TMainForm.PreOpenSFO(fn:string);
var
FStream:TFilestream;
StSTream:TStringStream;
begin
  FStream := TFileStream.Create(fn, fmShareDenyNone);
  StStream := TStringStream.Create('');
  try
    StStream.CopyFrom(FStream, FStream.Size);
    SFOForm.FixView;
  SFOForm.ParseSFOStream(StStream.DataString);
   finally
   FStream.Free;
   StStream.Free;
   uSFO.FileName:=ExtractFileName(fn);
   AddRecent(fn);
   SFOForm.Caption:='SFO Editor - ['+fn+']';

   if not SFOForm.Visible then
   SFOForm.ShowModal;
   end;

end;                                

procedure TMainForm.RegisterFileAssociations1Click(Sender: TObject);
begin
RegFile;
RegFile2;
Showmessage('Associations updated but you may need to reboot before the correct icons display.');
end;

procedure TMainForm.UnregisterFileAssociations1Click(Sender: TObject);
begin
UnRegFile;
Showmessage('Associations removed.');
end;

function TMainForm.GetWindowsDir: TFileName;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  SetString(Result, WinDir, GetWindowsDirectory(WinDir, MAX_PATH));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

procedure TMainForm.StatusOn(s1:string;p:boolean);
begin
StatusForm.ProgressBar1.Visible:=p;
StatusForm.ProgressBar1.Position:=0;

StatusForm.Show;
StatusForm.Panel1.Caption:=s1;
Screen.Cursor:=crHourGlass;
Application.ProcessMessages;
end;

procedure TMainForm.StatusChange(s1:string);
begin
StatusForm.Panel1.Caption:=s1;
Application.ProcessMessages;
end;
procedure TMainForm.StatusProgress(pos:integer);
begin
Application.ProcessMessages;
StatusForm.ProgressBar1.Position:=pos;
Application.ProcessMessages;
Application.ProcessMessages;
end;

procedure TMainForm.StatusOff;
begin
StatusForm.close;
Screen.Cursor:=crDefault;
Application.ProcessMessages;
end;

function TMainForm.RandChars(n:integer):string;
var i:integer;
begin
randomize;
result:='';
for i:=1 to n do
result:=result+chr(random(25)+97);
end;

function TMainForm.RandNums(n:integer):string;
var i:integer;
begin
result:='';
randomize;
for i:=1 to n do
result:=result+IntToStr(random(9));
end;

function TMainForm.RandMix(n:integer):string;
var i:integer;
begin
randomize;
result:='';
for i:=1 to n do
begin

  if Random(2)=1 then
  result:=result+randchars(1)
  else result:=result+randnums(1);
end;
end;

procedure TMainForm.Execute(app:String;Params:String);
begin
ShellExecute(self.Handle, 'open', PChar(app),
  PChar(params), PChar(extractfiledir(params)), SW_SHOWNORMAL);
end;

procedure TMainForm.OpenWith1Click(Sender: TObject);
Var OutStr:ANSIstring;
IsTemp:Boolean;
FileNo:integer;
rFileName:String;
TempDir:Array[1..400] of char;
begin
if ExList1.SelCount=1 then
begin
fileno:=listpos[ExLIst1.Selected.Index];
GetTempPath(255,@TempDir);
rFileName:=StrPas(@TempDir)+'\'+randomfilename(ExtractFileExt(mFileName[FileNo]));
OpenWithForm.ShowModal;
if uOpenWith.OK then
  begin
OutStr:=StringStream[FileNo];
IsTemp:=false;
SFOForm.SaveToFile(rFileName,OutStr);
MainForm.Execute(uOpenWith.OpenWithEXE,rFileName);
if MessageDlg('You may now edit the data. Please click OK when you have made your changes or click Cancel to keep the data intact.'+#13#10+'Clicking OK will move to the data to the ''New'' window to make a new PBP file.',
    mtConfirmation, [mbOK, mbCancel], 0) = mrOK then
begin       //if mrOK
if not FileExists(rFileName) then showmessage('Temporary file has gone! Cannot read file.') else
 begin             //file exists
 SendStreamToNew(FileNo,SFOForm.ReadFile(rFileName));
 if Length(SFOForm.ReadFile(rFileName))=0 then Showmessage('WARNING: File size is zero. Have you emptied the file you were editing?');
 end;
end;
end;
end;
if FileExists(rFileName) then
  if Not DeleteFile(rFileName) then ShowMessage('Unable to delete temporary file ('+rfilename+'). The file may still be open in the application used to edit it.');
OutStr:='';
end;

//#######OpenWith list functions
procedure TMainForm.OReadGlobalRecents;
var
cnt,i:integer;
begin
OpenWithForm.ComboBox1.Items.Clear;
ORecentList:=TStringList.Create;
if fileexists(ExtractFileDir(Application.ExeName)+'\OpenWith.list') then
ORecentList.LoadFromFile(ExtractFileDir(Application.ExeName)+'\OpenWith.list');
cnt:=4;
while ORecentList.Count < 6 do
ORecentList.Add('(none)');

for i:=0 to 4 do
  begin
  if ORecentList.Strings[i]='' then ORecentList.Strings[i]:='(none)';
  OpenWithForm.ComboBox1.Items.Add(ORecentList.Strings[i]);
  end;

end;

procedure TMainForm.OAddRecent(s:string);
var
i:integer;

begin

for i:=0 to 4 do
   begin
   if LowerCase(s)=LowerCase(ORecentList.Strings[i]) then
   begin
   ORecentList.delete(i);
   ORecentList.Add('(none)');
   end;
   end;


ORecentList.Strings[4]:=ORecentList.Strings[3];
ORecentList.Strings[3]:=ORecentList.Strings[2];
ORecentList.Strings[2]:=ORecentList.Strings[1];
ORecentList.Strings[1]:=ORecentList.Strings[0];
ORecentList.Strings[0]:=s;


OUpdateGlobalRecents;

end;

procedure TMainForm.OSaveRecent(s:string);
begin
ORecentList.SaveToFile(ExtractFileDir(Application.ExeName)+'\OpenWith.list');
end;

procedure TMainForm.OUpdateGlobalRecents;
var i:integer;
begin
OpenWithForm.ComboBox1.Clear;
OpenWithForm.ComboBox1.Items.Clear;

for i:=0 to 4 do
  OpenWithForm.ComboBox1.Items.Add(ORecentList.Strings[i]);

if OpenWithForm.ComboBox1.Items.Count>0 then
OpenWithForm.ComboBox1.Text:=OpenWithForm.ComboBox1.Items.Strings[0];
end;

//##################

procedure TMainForm.OpenWith2Click(Sender: TObject);
Var OutStr:ANSIstring;
FileNo:integer;
rFileName:String;
TempDir:Array[1..400] of char;
begin
if NewMDO[OverTag] then
begin
fileno:=OverTag;
GetTempPath(255,@TempDir);
rFileName:=StrPas(@TempDir)+'\'+randomfilename(ExtractFileExt(mFileName[FileNo]));
OpenWithForm.ShowModal;
if uOpenWith.OK then
  begin
OutStr:=NewStringStream[FileNo];
SFOForm.SaveToFile(rFileName,OutStr);
MainForm.Execute(uOpenWith.OpenWithEXE,rFileName);
if MessageDlg('You may now edit the data. Please click OK when you have made your changes or click Cancel to keep the data intact.',
    mtConfirmation, [mbOK, mbCancel], 0) = mrOK then
begin       //if mrOK
if not FileExists(rFileName) then showmessage('Temporary file has gone! Cannot read file.') else
 begin             //file exists
 SendStreamToNew(FileNo,SFOForm.ReadFile(rFileName));
 if Length(SFOForm.ReadFile(rFileName))=0 then Showmessage('WARNING: File size is zero. Have you emptied the file you were editing?');
 end;
end;
end;
end;
if FileExists(rFileName) then
  if Not DeleteFile(rFileName) then ShowMessage('Warning: Unable to delete temporary file ('+rfilename+'). The file may still be open in the application used to edit it.');
OutStr:='';
end;

function TMainForm.RandomFileName(ext:string):String;
begin
ext:=LowerCase(ext);
result:=result+'pbptemp_'+MainForm.Randmix(9)+ext;
end;

procedure TMainForm.ExList1DblClick(Sender: TObject);
var fileno:integer;
begin
fileno:=ListPos[ExList1.Selected.Index];
case FileNo of
2:
begin

    SFOForm.ParseSFOStream(StringStream[2]);
    SFOForm.Caption:='SFO Editor - [-->PARAM.SFO-->]';
    SFOForm.FixView;
    SFOForm.ShowModal;

end;
3:
begin
ShowImage(StringStream[3]);
end;
5:
begin
ShowImage(StringStream[5]);
end;
6:
begin
ShowImage(StringStream[6]);
end;

end; //end case

end;

procedure TMainForm.ShowImage(data:ANSIstring);
var
ss:TStringStream;
Png:TPNGObject;
begin
  try
  ImageForm.Image1.Picture:=nil;
  ss:=TStringStream.Create(data);
  png:=TPNGObject.Create;
  png.LoadFromStream(ss);
  ImageForm.image1.Picture.Graphic:=png;
  ImageForm.ShowModal;
  finally ss.Free;
  end;
end;



procedure TMainForm.ExList1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
ListView_SetColumnWidth(ExList1.Handle,2,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TMainForm.ExList1ColumnDragged(Sender: TObject);
begin
ListView_SetColumnWidth(ExList1.Handle,2,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TMainForm.ExList1Resize(Sender: TObject);
begin
ListView_SetColumnWidth(ExList1.Handle,2,LVSCW_AUTOSIZE_USEHEADER);
end;

end.


