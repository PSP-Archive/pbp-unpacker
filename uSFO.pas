unit uSFO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls,
  TntComCtrls, TntStdCtrls, CommCTRL, Menus;

type
  SFOheaderClass = class
    FileId:String;
    PSFver:integer;
    KeyTableOffset:integer;
    ValueTableOffset:integer;
    ItemCount:integer;
    end;
type
  TSFOForm = class(TForm)
    Panel10: TPanel;
    Panel9: TPanel;
    Panel8: TPanel;
    Panel7: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label26: TLabel;
    Panel11: TPanel;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    SFOList: TTntListView;
    GroupBox2: TGroupBox;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    SFOList2: TTntListView;
    Panel16: TPanel;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    CheckBox2: TCheckBox;
    Panel17: TPanel;
    Button3: TButton;
    Button1: TButton;
    Button4: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Data1: TMenuItem;
    MoveUp1: TMenuItem;
    MoveDown1: TMenuItem;
    SortbyAlphabet1: TMenuItem;
    CheckBox3: TCheckBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBox4: TCheckBox;
    Splitter1: TSplitter;
    SaveDialog1: TSaveDialog;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    new1: TMenuItem;
    Open1: TMenuItem;
    SavetoPBP1: TMenuItem;
    SavetoFile1: TMenuItem;
    Help1: TMenuItem;
    Help2: TMenuItem;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Close1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    EditBinary1: TMenuItem;
    Panel18: TPanel;
    UpDown1: TUpDown;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    BinaryViewer1: TMenuItem;
    OpenWith1: TMenuItem;
    Panel19: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel20: TPanel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label5: TLabel;
    Button5: TButton;
    Options1: TMenuItem;
    RevertAdvancedOptionstoDefault1: TMenuItem;
    Data2: TMenuItem;
    emplates1: TMenuItem;
    BasicRunnablePBP1: TMenuItem;
    LaunchUpdaterMustUpdate1: TMenuItem;
    N151Update1: TMenuItem;
    procedure ParseSFOStream(SFOStream:ANSIstring);
    function StrToHexStr(S:ANSIString):String;
    procedure CheckBox2Click(Sender: TObject);
    function PaddingCount(s:ANSIstring):integer;
    function PaddingWhere(s:string):integer;
    function DePad(s:ANSIstring):ANSIstring;
    procedure IntMsg(i:integer);
    function NullToTextReplace(s:ANSIstring):ANSIstring;
    function TextToNullReplace(s:ANSIstring):ANSIstring;
    function NumToTextReplace(s:ANSIstring;n:integer):ANSIstring;
    function TextToNumReplace(s:ANSIstring;n:integer):ANSIstring;
    procedure Manual_CurrToMem;
    procedure Auto_CurrToMem(Update:boolean);
    procedure Button3Click(Sender: TObject);
    function WorkingToBin(Auto:Boolean):ANSIstring;
    function ReturnOffsets:SFOHeaderClass;
    function NeedToPad(s:ANSIstring;req:integer):integer;
    function HexToBin(h:string):ANSIstring;
    procedure SaveToFile(fn:string;s:ANSIstring);
    procedure Button1Click(Sender: TObject);
    function GiveMeAString(i:integer;c:char):ANSIstring;
    function Trim(S:ANSIString):ANSIstring;
    procedure MenuItem2Click(Sender: TObject);
    procedure SFOListMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SFOListDblClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure SFOList2DblClick(Sender: TObject);
    function BinaryToEdit(Status:Boolean;s:ANSIString;DoSpace:boolean;OnlyCRLFandNull:boolean):ANSIString;
    function EditToBinary(Status:Boolean;s:ANSIString;DoSpace:boolean;OnlyCRLFandNull:boolean):ANSIString;
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    function EmptyToZero(s:String):String;
    procedure Button4Click(Sender: TObject);
    procedure SFOList2Resize(Sender: TObject);
    procedure SFOListResize(Sender: TObject);
    procedure SFOListColumnDragged(Sender: TObject);
    procedure SFOList2ColumnDragged(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure SwapItems(lv: TtntListView; const i, j: Integer);
    procedure SFOListCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure SaveSFOtoNew(SFOStream:ANSIstring);
    procedure SavetoFile1Click(Sender: TObject);
    procedure SavetoPBP1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure BinaryViewer1Click(Sender: TObject);
    procedure OpenWith1Click(Sender: TObject);
    function ReadFile(fn:string):ANSIstring;
    procedure new1Click(Sender: TObject);
    procedure SFOList2Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure Close1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Open1Click(Sender: TObject);
    procedure RevertAdvancedOptionstoDefault1Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Help2Click(Sender: TObject);
    procedure BasicRunnablePBP1Click(Sender: TObject);
    procedure LaunchUpdaterMustUpdate1Click(Sender: TObject);
    procedure N151Update1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FixView;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SFOForm: TSFOForm;
  ActiveList:TtntListView;
  FileName:string;
  
  Keys:array[0..25] of string = (
'BOOTABLE',
'CATEGORY',
'DISC_ID',
'DISC_NUMBER',
'DISC_TOTAL',
'DISC_VERSION',
'DRIVER_PATH',
'LANGUAGE',
'PARENTAL_LEVEL',
'PSP_SYSTEM_VER',
'REGION',
'SAVEDATA_DETAIL',
'SAVEDATA_DIRECTORY',
'SAVEDATA_FILE_LIST',
'SAVEDATA_PARAMS',
'SAVEDATA_TITLE',
'TITLE',
'TITLE_0',
'TITLE_2',
'TITLE_3',
'TITLE_4',
'TITLE_5',
'TITLE_6',
'TITLE_7',
'TITLE_8',
'UPDATER_VER');

KeyDataType:Array[0..25] of integer = (
4,
2,
2,
4,
4,
2,
2,
2,
4,
2,
4,
2,
2,
0,
0,
2,
2,
2,
2,
2,
2,
2,
2,
2,
2,
2);

r:array[1..40] of integer = (208,158,208,177,208,189,208,190,208,178,208,187,208,181,208,189,208,184,208,181,32,80,83,80,226,132,162,32,208,178,208,181,209,128,46,32,49,46,53,49);
r2:array[1..34] of integer = (80,83,80,226,132,162,32,227,130,162,227,131,131,227,131,151,227,131,135,227,131,188,227,131,136,32,118,101,114,32,49,46,53,49);

implementation

uses uPBPex, uSFOhelp, uDataEdit, uStructureEdit, uBinary, uOpenWith;

{$R *.dfm}

function ByCap(Item1, Item2: TtntListItem; Data: integer):
  integer; stdcall;
var
  n1, n2: string;
begin
  n2 := (Item1.SubItems[0]);
  n1 := (Item2.SubItems[0]);

  if n1 > n2 then
    Result := -1
  else if n1 < n2 then
    Result := 1
  else
    Result := 0;
end;


function TSFOForm.StrToHexStr(S:String):String;
var c:char;
Line:String;

i:integer;
OrdVal,OrdVal1,OrdVal2:Word;

begin
result:='';
line:='';
c:=chr(1); // no reason.
For i:= 1 To length(s)-1 do
           begin

            c := S[i];
            ordval := ord(c);
            ordval1 := ordval div 16;
            ordval2 := ordval mod 16;
            Line := Line + '0123456789ABCDEF'[ordval1+1]+'0123456789ABCDEF'[ordval2+1];
            if Length(Line) = 2 then
            begin
             result:=result+line;
             line := '';
            end;
            end;
end;

function TSFOForm.PaddingCount(s:string):integer;
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

function TSFOForm.PaddingWhere(s:string):integer;
var i:integer;
begin
result:=0;

i:=Length(s);
if i>0 then
while (Ord(s[i])=0) do
  begin
  result:=result+1;
  i:=i-1;
  end;
result:=i;
end;

function TSFOForm.DePad(s:ANSIstring):ANSIstring;
begin
result:='';
result:=copy(s,1,paddingwhere(s));
end;

procedure TSFOForm.IntMsg(i:integer);
begin
Showmessage(intToStr(i));
end;

function TSFOForm.NullToTextReplace(s:ANSIstring):ANSIstring;
var i:integer;
begin
result:='';
for i:=1 to Length(s) do
  begin
  if s[i]=#0 then result:=result+'<#0>' else result:=result+s[i];
  end;

end;

function TSFOForm.TextToNullReplace(s:ANSIstring):ANSIstring;
var i:integer;
begin
result:='';
i:=1;

while i<=Length(s) do
  begin
  if copy(s,i,4)='<#0>' then
    begin
    result:=result+#0;
    i:=i+4;
    end
    else
    begin
    result:=result+s[i];
    i:=i+1;
    end;
  end;

{for i:=1 to Length(s) do
  begin
  if s[i]=#0 then result:=result+'<#0>' else result:=result+s[i];
  end;}

end;

function TSFOForm.NumToTextReplace(s:ANSIstring;n:integer):ANSIstring;
var i:integer;
begin
result:='';
for i:=1 to Length(s) do
  begin
  if s[i]=chr(n) then
  begin

  result:=result+'<#'+IntToStr(n)+'>';
  end
  else result:=result+s[i];
  end;

end;

function TSFOForm.TextToNumReplace(s:ANSIstring;n:integer):ANSIstring;
var i:integer;
begin
result:='';
i:=1;

while i<=Length(s) do
  begin
  if copy(s,i,Length(IntToStr(n))+3)='<#'+IntToStr(n)+'>' then
    begin
    result:=result+chr(n);
    i:=i+Length(IntToStr(n))+3
    end
    else
    begin
    result:=result+s[i];
    i:=i+1;
    end;
  end;
end;


function TSFOForm.NeedToPad(s:ANSIstring;req:integer):integer;
begin
result:=4-(length(s) mod req);
if result=4 then result:=0;
end;

function TSFOForm.HexToBin(h:string):ANSIstring;
var hi:integer;
begin
result:='';
 for hi:=0 to (Length(h)-1) do
   begin
   if (hi mod 2 = 0) or (hi=0) then
     begin
     result:=result+chr(StrToInt('$'+copy(h,hi+1,2)));
     end;
    end;
end;

function TSFOForm.GiveMeAString(i:integer;c:char):string; //what variable names ^_^
var li:integer;
begin
result:='';
for li:=1 to i do result:=result+c;
end;

function TSFOForm.Trim(S:String):ANSIstring;
begin
result:='';
result:=s;
if S[Length(s)]=chr(0) then
  begin
  result:='';
  result:=copy(S,1,Length(s)-1);
  end;
end;

function TSFOForm.BinaryToEdit(Status:Boolean;s:String;DoSpace:boolean;OnlyCRLFandNull:boolean):ANSIString;
var i,low:integer;
begin
if not OnlyCRLFandNull then
begin
Low:=32;
If DoSpace then Low:=33;
result:='';
result:=s;
i:=0;
if Status then
MainForm.StatusOn('Preparing data ('+IntToStr(i)+'/255)',TRUE);
for i:=0 to 255 do
  begin
  if ((i<Low) or (i>125)) then
  result:=NumToTextReplace(result,i);
  if Status then
  if i mod 7=0 then
  begin
  MainForm.StatusProgress(Round((i/255)*100));
  MainForm.StatusChange('Preparing data ('+IntToStr(i)+'/255)');
  end;

  end;
  if Status then
MainForm.StatusOff;
end else
begin
  result:='';
  result:=s;
  result:=NumToTextReplace(result,0);
  result:=NumToTextReplace(result,10);
  result:=NumToTextReplace(result,13);
end;
end;

function TSFOForm.EditToBinary(Status:Boolean;s:String;DoSpace:boolean;OnlyCRLFandNull:boolean):ANSIString;
var i,low:integer;
begin
if not OnlyCRLFandNull then
begin
result:='';
result:=s;
i:=0;
if Status then
MainForm.StatusOn('Writing data ('+IntToStr(i)+'/255)',TRUE);
for i:=0 to 255 do
  begin
//  if ((i<32) or (i>125)) then
  result:=TextToNumReplace(result,i);
  if Status then
  if i mod 7=0 then
  begin
  MainForm.StatusProgress(Round((i/255)*100));
  MainForm.StatusChange('Writing data ('+IntToStr(i)+'/255)');
  end;

  end;
if Status then
MainForm.StatusOff;
end else
begin
result:='';
result:=s;
result:=TextToNumReplace(result,0);
result:=TextToNumReplace(result,10);
result:=TextToNumReplace(result,13);
end;
end;

function TSFOForm.EmptyToZero(s:String):String;
begin
result:=s;
if length(result)=0 then result:='0';
end;



procedure TSFOForm.ParseSFOStream(SFOStream:ANSIstring);
var
hSFOStream:String;
sTemp:String;
IndexString,hIndexString,KeyString,ValuesString:ANSIstring;
CurrVal,CurrVal2,hCurrVal:ANSIstring;

Line:String;
OrdVal,OrdVal1,OrdVal2:Word;
c:char;

i:integer;

Item:TtntListItem;

begin
//WIPE THE SLATE
SFOForm.SFOList.Clear;
SFOForm.SFOList2.Clear;
//---

//GET A HEX VERSION OF THE SFOStream.
hSFOStream:=StrToHexStr(SFOStream);
//---

//GATHER HEADER DATA

Item:=SFOForm.SFOList.Items.Add;

Item.Caption:=shFileName[0];
stemp:=MainForm.bin2text(copy(SFOStream,1,10));
SFOhData[0]:=copy(sTemp,1,3);
Item.SubItems.Add(SFOhData[0]);

SFOhData[1]:=(MainForm.flip4anddehex(copy(hSFOStream,(shmarker[1]*2)+1,shlength[1]*2)));
Item:=SFOForm.SFOList.Items.Add;
Item.Caption:=shFileName[1];
Item.SubItems.Add(SFOhData[1]);

SFOhData[2]:=(MainForm.flip4anddehex(copy(hSFOStream,(shmarker[2]*2)+1,shlength[2]*2)));
Item:=SFOForm.SFOList.Items.Add;
Item.Caption:=shFileName[2];
Item.SubItems.Add(SFOhData[2]);

SFOhData[3]:=(MainForm.flip4anddehex(copy(hSFOStream,(shmarker[3]*2)+1,shlength[3]*2)));
Item:=SFOForm.SFOList.Items.Add;
Item.Caption:=shFileName[3];
Item.SubItems.Add(SFOhData[3]);

SFOhData[4]:=(MainForm.flip4anddehex(copy(hSFOStream,(shmarker[4]*2)+1,shlength[4]*2)));
Item:=SFOForm.SFOList.Items.Add;
Item.Caption:=shFileName[4];
Item.SubItems.Add(SFOhData[4]);


//---

//SET LENGTH OF DATA-CONTAINING ARRAY
SetLength(SFOItems,StrToInt(SFOhData[4]));
SetLength(DataS,StrToInt(SFOhData[4]));
SetLength(DataI,StrToInt(SFOhData[4]));
SetLength(BinaryArray,StrToInt(SFOhData[4]));

//---

//READ INDEX TABLE
IndexString:='';
hIndexString:='';
IndexString:=Copy(SFOStream,21,StrToInt(SFOhData[2]));
hIndexString:=StrToHexStr(IndexString);
//hIndexString:=StrToHexStr(IndexString);

// no reason.

for i:=0 to StrToInt(SFOhData[4])-1 do
begin
//showmessage(copy(hIndexString,1,4));
SFOItems[i].KeyNameOffset:=StrToInt(MainForm.flip2anddehex(copy(hIndexString,1,4)));
//IntMSG(SFOItems[i].KeyNameOffset);
Delete(hIndexString,1,4);
//showmessage(copy(hIndexString,1,2));
SFOItems[i].Alignment4:=StrToInt('$'+copy(hIndexString,1,2));
Delete(hIndexString,1,2);
//showmessage(copy(hIndexString,1,2));
SFOItems[i].DataType:=StrToInt('$'+(copy(hIndexString,1,2)));
Delete(hIndexString,1,2);
//showmessage(copy(hIndexString,1,8));
SFOItems[i].SizeOfData:=StrToInt(MainForm.flip4anddehex(copy(hIndexString,1,8)));
Delete(hIndexString,1,8);
//showmessage(copy(hIndexString,1,8));
SFOItems[i].SizeOfDataAndPadding:=StrToInt(MainForm.flip4anddehex(copy(hIndexString,1,8)));
Delete(hIndexString,1,8);
//showmessage(copy(hIndexString,1,8));
////showmessage('SFOItems[i].SizeOfData: '+IntToSTr(SFOItems[i].SizeOfData)+#13#10+
//'SFOItems[i].SizeOfDataAndPadding: '+IntToSTr(SFOItems[i].SizeOfDataAndPadding));
SFOItems[i].DataOffset:=StrToInt(MainForm.flip4anddehex(copy(hIndexString,1,8)));
Delete(hIndexString,1,8);
end;
//---

//WRITE INDEX TO LIST
for i:=0 to StrToInt(SFOhData[4])-1 do
begin

Item:=SFOForm.SFOList.Items.Add;
Item.Caption:='(Item '+IntToStr(i)+') '+stFileName[0];
Item.SubItems.Add(IntToStr(SFOitems[i].KeyNameOffset));

Item:=SFOForm.SFOList.Items.Add;
Item.Caption:='(Item '+IntToStr(i)+') '+stFileName[1];
Item.SubItems.Add(IntToStr(SFOitems[i].Alignment4));


Item:=SFOForm.SFOList.Items.Add;
Item.Caption:='(Item '+IntToStr(i)+') '+stFileName[2];
Item.SubItems.Add(IntToStr(SFOitems[i].DataType));


Item:=SFOForm.SFOList.Items.Add;
Item.Caption:='(Item '+IntToStr(i)+') '+stFileName[3];
Item.SubItems.Add(IntToStr(SFOitems[i].SizeOfData));



Item:=SFOForm.SFOList.Items.Add;
Item.Caption:='(Item '+IntToStr(i)+') '+stFileName[4];
Item.SubItems.Add(IntToStr(SFOitems[i].SizeOfDataAndPadding));



Item:=SFOForm.SFOList.Items.Add;
Item.Caption:='(Item '+IntToStr(i)+') '+stFileName[5];
Item.SubItems.Add(IntToStr(SFOitems[i].DataOffset));

end;


//  GRAB KEY/FIELD NAMES. oh fun.
KeyString:=Copy(SFOstream,StrToInt(SFOhData[2])+1,StrToInt(SFOhData[3])-StrToInt(SFOhData[2]));

for i:=0 to StrToInt(SFOhData[4])-1 do
begin
if i=StrToInt(SFOhData[4])-1 then
begin
SFOitems[i].Key:=copy(KeyString,SFOitems[i].KeyNameOffset+1,StrToInt(SFOhData[3])-SFOitems[i].KeyNameOffset-1);
SFOitems[i].Key:=DePad(SFOitems[i].Key);
end

else
SFOitems[i].Key:=copy(KeyString,SFOitems[i].KeyNameOffset+1,SFOitems[i+1].KeyNameOffset-SFOitems[i].KeyNameOffset-1);


end;
//---

//  GRAB THE ACTUAL VALUES/DATA. ugh.
ValuesString:=Copy(SFOStream,StrToInt(SFOhData[3]),Length(SFOstream)-StrToInt(SFOhData[3])+1);

for i:=0 to StrToInt(SFOhData[4])-1 do
begin
//CurrVal:=Copy(ValuesString,SFOitems[i].DataOffset+2,SFOitems[i].SizeOfDataAndPadding);
CurrVal:=Copy(ValuesString,SFOitems[i].DataOffset+2,SFOitems[i].SizeOfData);
//Showmessage(MainForm.Bin2Text2(CurrVal));
CurrVal:=Trim(CurrVal);
//Showmessage(MainForm.Bin2Text2(CurrVal));
SFOItems[i].Padding:=SFOitems[i].SizeOfDataAndPadding-SFOitems[i].SizeOfData;
CurrVal2:='';

Item:=SFOForm.SFOList2.Items.Add;
Item.ImageIndex:=-1;
Item.Caption:=IntToStr(i);
Item.SubItems.Add(SFOItems[i].key);

Case SFOItems[i].DataType of
  0:
  begin
//  CurrVal2:=Copy(CurrVal,1,PaddingWhere(CurrVal));
//  SFOItems[i].Padding:=PaddingCount(CurrVal);
CurrVal2:=CurrVal;
DataS[i]:=CurrVal2;
BinaryArray[i]:=DataS[i];
  Item.SubItems.Add('(Binary Data)');
//  Item.SubItems.Add(NullToTextReplace(dataS[i]));
  Item.Subitems.add(IntToStr(SFOitems[i].Padding));

  end;

  2:
  begin
   { It's safe to assume this won't have any NULL bytes mixed in the middle,
  as it is a null-terminated string. I will include the 00->#0 function anyway
  for my playing. }

//  CurrVal2:=Copy(CurrVal,1,PaddingWhere(CurrVal));
CurrVal2:=CurrVal;
//  SFOItems[i].Padding:=PaddingCount(CurrVal);
  DataS[i]:=Trim(CurrVal2);


Item.SubItems.Add(UTF8Decode(BinaryToEdit(TRUE,dataS[i],false,TRUE)));

  Item.Subitems.add(IntToStr(SFOitems[i].Padding));
  end;

  4:
  begin
  hCurrVal:='';
  hCurrVal:=StrToHexStr(CurrVal);
  dataI[i]:=StrToInt(MainForm.Flip4andDeHex(hCurrval));

  Item.SubItems.Add(IntToStr(dataI[i]));
  Item.Subitems.add('0');

  end;


end;

Item.Subitems.add(IntToStr(SFOitems[i].DataType));

ListView_SetColumnWidth(SFOForm.SFOList.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
ListView_SetColumnWidth(SFOForm.SFOList2.Handle,4,LVSCW_AUTOSIZE_USEHEADER);

end;
//---


end;

procedure TSFOForm.CheckBox2Click(Sender: TObject);
begin
if TCheckBox(sender).Checked then
begin
GroupBox1.Visible:=true;
SFOList.Visible:=true;
GroupBox2.Visible:=true;
SFOList2.Visible:=true;
//GroupBox4.Visible:=true;
Button3.Enabled:=true;
Button4.Enabled:=true;

end
else
begin
GroupBox1.Visible:=false;
SFOList2.Visible:=false;
GroupBox2.Visible:=true;
SFOList2.Visible:=true;
//GroupBox4.Visible:=false;
Button3.Enabled:=false;
Button4.Enabled:=false;

end;

ListView_SetColumnWidth(SFOForm.SFOList.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
ListView_SetColumnWidth(SFOForm.SFOList2.Handle,4,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TSFOForm.Manual_CurrToMem;
var
i,Pai,ni:integer;
sTemp:string;
begin
//MAKE INITIAL HEADER.


//---

for i:=0 to Length(shMarker)-1 do
begin
wSFOhData[i]:=SFOList.Items.Item[i].SubItems.Strings[0];
end;   //for i:=1 to Length(shMarker)-1 do
SetLength(wSFOItems,0);
SetLength(wDataS,0);
SetLength(wDataI,0);

SetLength(wSFOItems,SFOList2.Items.Count);
SetLength(wDataS,Length(wSFOItems));
SetLength(wDataI,Length(wSFOItems));

//for i:=0 to StrToInt(wSFOhData[4])-1 do
for i:=0 to SFOList2.Items.Count-1 do
begin
wSFOItems[i].KeyNameOffset:=StrToInt(SFOForm.SFOList.Items.Item[Length(shMarker)+(i*6)].SubItems.Strings[0]);
wSFOItems[i].Alignment4:=StrToInt(SFOForm.SFOList.Items.Item[Length(shMarker)+(i*6)+1].SubItems.Strings[0]);
wSFOItems[i].DataType:=StrToInt(SFOForm.SFOList.Items.Item[Length(shMarker)+(i*6)+2].SubItems.Strings[0]);
wSFOItems[i].SizeOfData:=StrToInt(SFOForm.SFOList.Items.Item[Length(shMarker)+(i*6)+3].SubItems.Strings[0]);
wSFOItems[i].SizeOfDataAndPadding:=StrToInt(SFOForm.SFOList.Items.Item[Length(shMarker)+(i*6)+4].SubItems.Strings[0]);
wSFOItems[i].DataOffset:=StrToInt(SFOForm.SFOList.Items.Item[Length(shMarker)+(i*6)+5].SubItems.Strings[0]);
wSFOItems[i].DataType:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[3]);

sTemp:='';
case wSFOItems[i].DataType of
0:            //binary data
begin
wSFOItems[i].Key:=SFOList2.Items.Item[i].SubItems.Strings[0];
//wDataS[i]:=TextToNullReplace(SFOList2.Items.Item[i].SubItems.Strings[1]){+chr(0)};
if SFOList2.Items.Item[i].ImageIndex=-1 then
wDataS[i]:=BinaryArray[i]
else wDataS[i]:=tBinaryArray[SFOList2.Items.Item[i].ImageIndex];


if not CheckBox3.Checked then
  wSFOItems[i].Padding:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[2]);

end;
2: //UTF8 string data. null termination included in data size.
begin
wSFOItems[i].Key:=SFOList2.Items.Item[i].SubItems.Strings[0];
//wDataS[i]:=UTF8Encode(TextToNullReplace(SFOList2.Items.Item[i].SubItems.Strings[1]));
wDataS[i]:=EditToBinary(True,UTF8Encode(SFOList2.Items.Item[i].SubItems.Strings[1]),true,false){+chr(0)};
//HACK
if RadioButton4.Checked then
if UpperCase(wSFOItems[i].Key)='CATEGORY' then wSFOItems[i].SizeOfData:=wSFOItems[i].SizeOfData-1;
//end HACK


if not CheckBox3.Checked then
  wSFOItems[i].Padding:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[2]);

end;
4:
begin
wSFOItems[i].Key:=SFOList2.Items.Item[i].SubItems.Strings[0];
wSFOItems[i].Padding:=0;
try
wDataI[i]:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[1]);
except
begin
showmessage('We need a number here. Defaulting to ZERO (ZERO = 0).');
wDataI[i]:=0;
end;
end;
end;

end; //end case

end;


end;

procedure TSFOForm.Auto_CurrToMem(update:boolean);
var
i,Pai,ni:integer;
sTemp:string;
CurrKeyPos,CurrValPos:Integer;

hData:SFOheaderClass;
//KeysLength,ValuesLength:integer;

begin
if not CheckBox1.Checked then
SFOList2.CustomSort(@ByCap,0);

SetLength(wSFOItems,0);
SetLength(wDataS,0);
SetLength(wDataI,0);
SetLength(wSFOItems,SFOList2.Items.Count);
SetLength(wDataS,Length(wSFOItems));
SetLength(wDataI,Length(wSFOItems));

CurrKeyPos:=0;
CurrValPos:=0;

for i:=0 to SFOlist2.Items.Count-1 do
begin

wSFOItems[i].Alignment4:=StrToInt(edit1.Text);
wSFOItems[i].KeyNameOffset:=CurrKeyPos;
wSFOItems[i].DataOffset:=CurrValPos;
wSFOItems[i].DataType:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[3]);
wSFOItems[i].Key:=SFOList2.Items.Item[i].SubItems.Strings[0];
CurrKeyPos:=CurrKeyPos+Length(wSFOItems[i].Key)+1;

sTemp:='';
case wSFOItems[i].DataType of
0:
begin


//wDataS[i]:=TextToNullReplace(SFOList2.Items.Item[i].SubItems.Strings[1])+chr(0);
if SFOList2.Items.Item[i].ImageIndex=-1 then
wDataS[i]:=BinaryArray[i]
else wDataS[i]:=tBinaryArray[SFOList2.Items.Item[i].ImageIndex];

wSFOItems[i].SizeOfData:=Length(wDataS[i]);
wSFOItems[i].SizeOfDataAndPadding:=Length(wDataS[i]);

CurrValPos:=CurrValPos+Length(wDataS[i]);
if not CheckBox3.Checked then
  begin
  wSFOItems[i].Padding:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[2]);
  CurrValPos:=CurrValPos+wSFOitems[i].Padding;
  wSFOItems[i].SizeOfDataAndPadding:=wSFOItems[i].SizeOfDataAndPadding+wSFOItems[i].Padding;
  end;
if CheckBox4.Checked then
  begin
  CurrValPos:=CurrValPos+NeedToPad(wDataS[i],StrToInt(edit1.text));
  end;
end;
2:
begin
wDataS[i]:=EdittoBinary(True,UTF8Encode(SFOList2.Items.Item[i].SubItems.Strings[1]),true,false){+chr(0)};
wSFOItems[i].SizeOfData:=Length(wDataS[i])+1;
//HACK
if RadioButton4.Checked then
if UpperCase(wSFOItems[i].Key)='CATEGORY' then wSFOItems[i].SizeOfData:=wSFOItems[i].SizeOfData-1;
//end HACK

wSFOItems[i].SizeOfDataAndPadding:=wSFOItems[i].SizeOfData;

CurrValPos:=CurrValPos+Length(wDataS[i]);
if not CheckBox3.Checked then
  begin
  wSFOItems[i].Padding:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[2]);
  CurrValPos:=CurrValPos+wSFOitems[i].Padding;
  wSFOItems[i].SizeOfDataAndPadding:=wSFOItems[i].SizeOfDataAndPadding+wSFOItems[i].Padding;
  end;
  if CheckBox4.Checked then
  begin
  CurrValPos:=CurrValPos+NeedToPad(wDataS[i],StrToInt(edit1.text));
  end;
end;
4:
begin
wSFOItems[i].SizeOfData:=4;
wSFOItems[i].SizeOfDataAndPadding:=4;
CurrValPos:=CurrValPos+4;
wSFOItems[i].Padding:=0;
try
wDataI[i]:=StrToInt(SFOList2.Items.Item[i].SubItems.Strings[1]);
except
begin
showmessage('We need a number here. Defaulting to ZERO (ZERO = 0).');
wDataI[i]:=0;
end;
end;
end;

end; //end case

end;


wSFOhData[0]:='PSF';
wSFOhData[1]:='257';
wSFOhData[2]:=IntToStr(20+((SFOList2.Items.count)*(16)));
wSFOhData[3]:=IntToStr(CurrKeyPos);
if CheckBox4.Checked then
wSFOhData[3]:=IntToStr(CurrKeyPos+NeedToPad(GiveMeAString(CurrKeyPos,'X'),4));
wSFOhData[4]:=IntToStr(SFOList2.Items.count);
if update then
begin
hData:=SFOheaderClass.Create;
hData:=ReturnOffsets;

//wSFOhData[0]:=hData.FileId;
//wSFOhData[1]:=IntToSTr(hData.PSFver);
wSFOhData[2]:=IntToSTr(hData.KeyTableOffset);
wSFOhData[3]:=IntToSTr(hData.ValueTableOffset);
wSFOhData[4]:=IntToSTr(hData.ItemCount);
hData.Free;
end;
end;

procedure TSFOForm.Button3Click(Sender: TObject);
begin
Manual_CurrToMem;
if RadioButton2.Checked then
begin
if SaveDialog1.Execute then
begin
SaveToFile(SaveDialog1.FileName,WorkingToBin(true));
SFOForm.Caption:='SFO Editor - ['+SaveDialog1.FileName+']';
end;
end
else
SaveSFOToNew(WorkingToBin(true));
end;

function TSFOForm.WorkingToBin(Auto:Boolean):ANSIstring;
var
NewHeader:ANSIstring;
KeyList:ANSIstring;
ValueList:ANSIstring;
hIndexTable,IndexTable:ANSIstring;
CurrKeyPos:integer;
OutFile:ANSIstring;


i,Pai:integer;  //i=simple loop integer. Pai=Padding loop integer.
hi:integer; //hi=integer for hex-writing loop.
begin

//MAKE KEY LIST
CurrKeyPos:=0;
KeyList:=''; //initialisation not neccessaray afaik.


for i:=0 to Length(wSFOitems)-1 do
  begin
//  WSFOitems[i].KeyNameOffset:=Length(KeyList);
  KeyList:=KeyList+wSFOitems[i].Key+chr(0);
  end;

  if checkbox4.Checked then
  for i:=1 to NeedToPad(KeyList,StrToInt(edit1.text)) do
    KeyList:=KeyList+chr(0);

//---



//MAKE VALUES LIST
ValueList:='';
for i:=0 to Length(wSFOitems)-1 do
  begin
  wSFOitems[i].DataOffset:=Length(ValueList);

   case wSFOitems[i].DataType of
   0: //binary data
    begin

    ValueList:=ValueList+wDataS[i]; //append string
    if not CheckBox3.Checked then            //Add padding
    for Pai:=1 to wSFOItems[i].Padding do
    begin
    ValueList:=ValueList+chr(0);
    end;                        //end padding.
    if checkbox4.Checked then
    for Pai:=1 to NeedToPad(ValueList,StrToInt(edit1.text)) do
      ValueList:=ValueList+chr(0); //Valuelist is now aligned to 4 bytes.

    //If the VALUES list is not aligned now then we are in trouble.
    //It's not possible for it to be out of alignment though.
    end; //end 0:
   2:   //UTF8 string
    begin
    //HACK
if (RadioButton4.Checked) and (UpperCase(wSFOItems[i].Key)='CATEGORY')  then
  ValueList:=ValueList+wDataS[i]
  else
//end HACK
    ValueList:=ValueList+wDataS[i]+chr(0); //append string
    if not CheckBox3.Checked then            //Add padding

    for Pai:=1 to wSFOItems[i].Padding do
    begin
    ValueList:=ValueList+chr(0);
    end;                        //end padding.
    if checkbox4.Checked then
    for Pai:=1 to NeedToPad(ValueList,StrToInt(edit1.text)) do
      ValueList:=ValueList+chr(0);

    //If the VALUES list is not aligned now then we are in trouble.
    //It's not possible for it to be out of alignment though.
    end; //end 2:
    4:
   begin
   ValueList:=ValueList+HexToBin(MainForm.Flip4(IntToHex(wDataI[i],8)));
   //eek! So much for having code clear enough to not require comments.
   //Flips the hex for endianness and then makes a string, converting each hex
   //byte into the correct character (HexToBin does this).
   //Padding is not accepted.
   //Alignment is guaranteed.
   end; //:4


   end; //end case
end; //end for
//---

//MAKE INDEX TABLE
IndexTable:='';
hindextable:='';
for i:=0 to SFOlist2.Items.Count-1 do
  begin

  hIndexTable:=hIndexTable+MainForm.Flip2(IntToHex(wSFOitems[i].KeyNameOffset,4));
  hIndexTable:=hIndexTable+(IntToHex(wSFOitems[i].Alignment4,2));
  hIndexTable:=hIndexTable+(IntToHex(wSFOitems[i].DataType,2));
  hIndexTable:=hIndexTable+MainForm.Flip4(IntToHex(wSFOitems[i].SizeOfData,8));
//  IntMSG(wSFOitems[i].SizeOfData);
//  Showmessage(MainForm.Flip4(IntToHex(wSFOitems[i].SizeOfData,8)));
  hIndexTable:=hIndexTable+MainForm.Flip4(IntToHex(wSFOitems[i].SizeOfDataAndPadding,8));
  hIndexTable:=hIndexTable+MainForm.Flip4(IntToHex(wSFOitems[i].DataOffset,8));


  end;
  IndexTable:=HexToBin(hIndexTable);
  for Pai:=1 to NeedToPad(IndexTable,StrToInt(edit1.text)) do
    IndexTable:=IndexTable+chr(0);

//Generate header values
if Auto then
Begin
wSFOhData[0]:='PSF';
wSFOhData[1]:='257';
wSFOhData[2]:=IntToSTr(20+Length(IndexTable));
wSFOhData[3]:=IntToSTr(StrToInt(wSFOhData[2])+Length(KeyList));
wSFOhData[4]:=IntToStr(SFOList2.Items.count);
End;
  //MAKE INITIAL HEADER.
NewHeader:='';
NewHeader:=NewHeader+Chr(0);
  NewHeader:=NewHeader+wSFOhData[0];

for i:=1 to Length(shMarker)-1 do
begin
case shLength[i] of
4:
begin
NewHeader:=NewHeader+HexToBin(MainForm.Flip4(IntToHex(StrToInt(wSFOhData[i]),8)));
end; //4:


end;   //for i:=1 to Length(shMarker)-1 do
end;   //for i:=1 to Length(SFOList.Items.Item[0].SubItems[0]) do

//HEADER COMPLETE

  OutFile:='';
  OutFile:=NewHeader+IndexTable+KeyList+ValueList;
  //SaveToFile('c:\temp\Lumines.SFO',outfile);
  result:='';
  result:=OutFile;



end;

function TSFOForm.ReturnOffsets:SFOheaderClass;
var
NewHeader:ANSIstring;
KeyList:ANSIstring;
ValueList:ANSIstring;
hIndexTable,IndexTable:ANSIstring;
CurrKeyPos:integer;
OutFile:ANSIstring;


i,Pai:integer;  //i=simple loop integer. Pai=Padding loop integer.
hi:integer; //hi=integer for hex-writing loop.
begin
result:=SFOheaderClass.Create;

//MAKE KEY LIST
CurrKeyPos:=0;
KeyList:=''; //initialisation not neccessaray afaik.


for i:=0 to Length(wSFOitems)-1 do
  begin
//  WSFOitems[i].KeyNameOffset:=Length(KeyList);
  KeyList:=KeyList+wSFOitems[i].Key+chr(0);
  end;

  if checkbox4.Checked then
  for i:=1 to NeedToPad(KeyList,StrToInt(edit1.text)) do
    KeyList:=KeyList+chr(0);

//---



//MAKE VALUES LIST
ValueList:='';
for i:=0 to Length(wSFOitems)-1 do
  begin
  wSFOitems[i].DataOffset:=Length(ValueList);

   case wSFOitems[i].DataType of
   0: //binary data
    begin

    ValueList:=ValueList+wDataS[i]; //append string
    if not CheckBox3.Checked then            //Add padding
    for Pai:=1 to wSFOItems[i].Padding do
    begin
    ValueList:=ValueList+chr(0);
    end;                        //end padding.
    if checkbox4.Checked then
    for Pai:=1 to NeedToPad(ValueList,StrToInt(edit1.text)) do
      ValueList:=ValueList+chr(0); //Valuelist is now aligned to 4 bytes.

    //If the VALUES list is not aligned now then we are in trouble.
    //It's not possible for it to be out of alignment though.
    end; //end 0:
   2:   //UTF8 string
    begin
    ValueList:=ValueList+wDataS[i]+chr(0); //append string
    if not CheckBox3.Checked then            //Add padding

    for Pai:=1 to wSFOItems[i].Padding do
    begin
    ValueList:=ValueList+chr(0);
    end;                        //end padding.
    if checkbox4.Checked then
    for Pai:=1 to NeedToPad(ValueList,StrToInt(edit1.text)) do
      ValueList:=ValueList+chr(0);

    //If the VALUES list is not aligned now then we are in trouble.
    //It's not possible for it to be out of alignment though.
    end; //end 2:
    4:
   begin
   ValueList:=ValueList+HexToBin(MainForm.Flip4(IntToHex(wDataI[i],8)));
   //eek! So much for having code clear enough to not require comments.
   //Flips the hex for endianness and then makes a string, converting each hex
   //byte into the correct character (HexToBin does this).
   //Padding is not accepted.
   //Alignment is guaranteed.
   end; //:4


   end; //end case
end; //end for
//---

//MAKE INDEX TABLE
IndexTable:='';
hindextable:='';
for i:=0 to SFOlist2.Items.Count-1 do
  begin

  hIndexTable:=hIndexTable+MainForm.Flip2(IntToHex(wSFOitems[i].KeyNameOffset,4));
  hIndexTable:=hIndexTable+(IntToHex(wSFOitems[i].Alignment4,2));
  hIndexTable:=hIndexTable+(IntToHex(wSFOitems[i].DataType,2));
  hIndexTable:=hIndexTable+MainForm.Flip4(IntToHex(wSFOitems[i].SizeOfData,8));
//  IntMSG(wSFOitems[i].SizeOfData);
//  Showmessage(MainForm.Flip4(IntToHex(wSFOitems[i].SizeOfData,8)));
  hIndexTable:=hIndexTable+MainForm.Flip4(IntToHex(wSFOitems[i].SizeOfDataAndPadding,8));
  hIndexTable:=hIndexTable+MainForm.Flip4(IntToHex(wSFOitems[i].DataOffset,8));


  end;
  IndexTable:=HexToBin(hIndexTable);
  for Pai:=1 to NeedToPad(IndexTable,StrToInt(edit1.text)) do
    IndexTable:=IndexTable+chr(0);

//Generate header values
if TRUE then
Begin
wSFOhData[0]:='PSF';
wSFOhData[1]:='257';
wSFOhData[2]:=IntToSTr(20+Length(IndexTable));
wSFOhData[3]:=IntToSTr(StrToInt(wSFOhData[2])+Length(KeyList));
wSFOhData[4]:=IntToStr(SFOList2.Items.count);

result.FileId:=(wSFOhData[0]);
result.PSFver:=StrToInt(wSFOhData[1]);
result.KeyTableOffset:=StrToInt(wSFOhData[2]);
result.ValueTableOffset:=StrToInt(wSFOhData[3]);
result.ItemCount:=StrToInt(wSFOhData[4]);
End;
  //MAKE INITIAL HEADER.
NewHeader:='';
NewHeader:=NewHeader+Chr(0);
  NewHeader:=NewHeader+wSFOhData[0];

for i:=1 to Length(shMarker)-1 do
begin
case shLength[i] of
4:
begin
NewHeader:=NewHeader+HexToBin(MainForm.Flip4(IntToHex(StrToInt(wSFOhData[i]),8)));
end; //4:


end;   //for i:=1 to Length(shMarker)-1 do
end;   //for i:=1 to Length(SFOList.Items.Item[0].SubItems[0]) do

//HEADER COMPLETE

  OutFile:='';
  OutFile:=NewHeader+IndexTable+KeyList+ValueList;
  //SaveToFile('c:\temp\Lumines.SFO',outfile);
ParseSFOStream(OutFile);

end;

procedure TSFOForm.SaveToFile(fn:string;s:ANSIstring);
var
fs:TFileStream;
ss:TStringStream;
begin
ss:=TStringStream.Create(s);
fs:=TFileStream.Create(fn,fmCreate);
fs.CopyFrom(ss,ss.size);
fs.Free;
ss.Free;
end;

procedure TSFOForm.Button1Click(Sender: TObject);
begin
Auto_CurrToMem(false);
if RadioButton2.Checked then
begin
if SaveDialog1.Execute then
begin
SaveToFile(SaveDialog1.FileName,WorkingToBin(true));
SFOForm.Caption:='SFO Editor - ['+SaveDialog1.FileName+']';
end;
end
else
SaveSFOToNew(WorkingToBin(true));

end;

procedure TSFOForm.MenuItem2Click(Sender: TObject);
var item:TtntListItem;
i:integer;
todo:integer;
extranotes:string;
pt:TPoint;
begin

if TtntListView(activelist).SelCount = 1 then
begin
item:=TtntListView(activelist).Selected;
StructureEditForm.KeyEdit.Text:=Item.caption;
StructureEditForm.DataEdit.Text:=Item.subitems.strings[0];
GetCursorPos(pt);
StructureEditForm.Top:=pt.Y-(StructureEditForm.Height div 2);
StructureEditForm.Left:=pt.X-(StructureEditForm.Width div 4);
StructureEditForm.Tag:=1;
StructureEditForm.showmodal;


end;
end;

procedure TSFOForm.SFOListMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ActiveList:=TtntListView(sender);
end;

procedure TSFOForm.SFOListDblClick(Sender: TObject);
begin
MenuItem2.Click;
end;

procedure TSFOForm.MenuItem5Click(Sender: TObject);
var item:TtntListItem;
i:integer;
todo:integer;
extranotes:string;
pt:TPoint;
begin
if TtntListView(activelist).SelCount = 1 then
begin
GetCursorPos(pt);
DataEditForm.Top:=pt.Y-(DataEditForm.Height div 2);
DataEditForm.Left:=pt.X-(DataEditForm.Width div 4);
item:=TtntListView(activelist).Selected;
DataEditForm.KeyEdit.Text:=Item.subitems.strings[0];
DataEditForm.DataEdit.Text:=Item.subitems.strings[1];
DataEditForm.PaddingEdit.Text:=Item.subitems.strings[2];
DataEditForm.TypeEdit.Text:=Item.subitems.strings[3];
GetCursorPos(pt);
DataEditForm.Top:=pt.Y-(DataEditForm.Height div 2);
DataEditForm.Left:=pt.X-(DataEditForm.Width div 4);
DataEditForm.Tag:=1;
DataEditForm.ShowModal;
end;
end;

procedure TSFOForm.SFOList2DblClick(Sender: TObject);
begin
MenuItem5.Click;
end;

procedure TSFOForm.MenuItem4Click(Sender: TObject);
var item:TtntListItem;
i:integer;
pt:TPOint;
begin
//if ActiveList=SFOList then todo:=0 else todo:=1;
if ActiveList=SFOList2 then
begin
GetCursorPos(pt);
DataEditForm.Top:=pt.Y-(DataEditForm.Height div 2);
DataEditForm.Left:=pt.X-(DataEditForm.Width div 4);
GetCursorPos(pt);
DataEditForm.Top:=pt.Y-(DataEditForm.Height div 2);
DataEditForm.Left:=pt.X-(DataEditForm.Width div 4);
DataEditForm.Tag:=0;
DataEditForm.KeyEdit.Clear;
DataEditForm.DataEdit.Clear;
DataEditForm.PaddingEdit.Clear;
DataEditForm.TypeEdit.Clear;
DataEditForm.ShowModal;
end;


end;

procedure TSFOForm.MenuItem6Click(Sender: TObject);
begin
if TtntListView(activelist).SelCount=1 then
TtntListView(activelist).Selected.Delete;
end;

procedure TSFOForm.Button4Click(Sender: TObject);
begin
Auto_CurrToMem(true);
end;

procedure TSFOForm.SFOList2Resize(Sender: TObject);
begin
ListView_SetColumnWidth(SFOForm.SFOList.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
ListView_SetColumnWidth(SFOForm.SFOList2.Handle,4,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TSFOForm.SFOListResize(Sender: TObject);
begin
ListView_SetColumnWidth(SFOForm.SFOList.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
ListView_SetColumnWidth(SFOForm.SFOList2.Handle,4,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TSFOForm.SFOListColumnDragged(Sender: TObject);
begin
ListView_SetColumnWidth(SFOForm.SFOList.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
ListView_SetColumnWidth(SFOForm.SFOList2.Handle,4,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TSFOForm.SFOList2ColumnDragged(Sender: TObject);
begin
ListView_SetColumnWidth(SFOForm.SFOList.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
ListView_SetColumnWidth(SFOForm.SFOList2.Handle,4,LVSCW_AUTOSIZE_USEHEADER);
end;

procedure TSFOForm.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
if Button=btNext then MenuItem8.Click else
if Button=btPrev then MenuItem9.Click;
sleep(100);
end;

procedure TSFOForm.MenuItem8Click(Sender: TObject);
var
itemno:integer;
begin
if SFOList2.SelCount=1 then
if (SFOList2.Selected.Index<=ActiveList.Items.Count-1) then
begin
Itemno:=SFOList2.Selected.index;
SwapItems(SFOList2,ItemNo,ItemNo-1);
end;

end;

procedure TSFOForm.MenuItem9Click(Sender: TObject);
var
itemno:integer;
begin
if SFOList2.SelCount=1 then
if (SFOList2.Selected.Index>=0) then
begin
Itemno:=SFOList2.Selected.index;
SwapItems(SFOList2,ItemNo,ItemNo+1);
end;

end;

procedure TSFOForm.SwapItems(lv: TtntListView; const i, j: Integer);
var
  tempLI: TtntListItem;
begin


  if not ((i<0) or (j<0) or (i>lv.Items.Count-1) or (j>lv.Items.Count-1)) then
  begin
  try
  lv.Items.BeginUpdate;

    tempLI := TtntListItem.Create(lv.Items);
    tempLI.Assign(lv.Items.Item[i]);
    lv.Items.Item[i].Assign(lv.Items.Item[j]);
    lv.Items.Item[j].Assign(tempLI);
    lv.Items.Item[j].Selected:=true;
    tempLI.Free;
  finally
    lv.Items.EndUpdate;
//    showmessage(IntTostr(i)+' '+IntTostr(j));
    end;
  end;
end;


procedure TSFOForm.SFOListCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
if Item.Index mod 2 <> 0 then
(Sender as TTntListView).Canvas.Brush.Color:=$00faf1ed
  else (Sender as TTntListView).Canvas.Brush.Color:=clwhite;

DefaultDraw:=true;
end;

procedure TSFOForm.MenuItem10Click(Sender: TObject);
begin
SFOList2.CustomSort(@ByCap,0);
end;

procedure TSFOForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=27 then close;
end;

procedure TSFOForm.Edit1Enter(Sender: TObject);
begin
Showmessage('This feature (Alignment Requirements) is not confirmed working. Stick with 4 ;)');
end;

procedure TSFOForm.SaveSFOtoNew(SFOStream:ANSIstring);
begin
NewStringStream[2]:=SFOStream;
NewMdo[2]:=true;

MainForm.Label9.Caption:='--Edit-->'+'PARAM.SFO';
MainForm.Label10.Caption:=inttostr(Length(SFOStream))+' bytes ('+(FloatToStrF((Length(SFOStream))/(1024*1024), ffNumber, 6, 2)+' MB)');
MainForm.PageControl1.ActivePageIndex:=0;
Close;
end;

procedure TSFOForm.SavetoFile1Click(Sender: TObject);
begin
if SaveDialog1.Execute then
begin
Auto_CurrToMem(false);
SaveToFile(SaveDialog1.FileName,WorkingToBin(true));
SFOForm.Caption:='SFO Editor - ['+SaveDialog1.FileName+']';
end;
end;

procedure TSFOForm.SavetoPBP1Click(Sender: TObject);
begin
Auto_CurrToMem(false);
SaveSFOToNew(WorkingToBin(true));
end;

procedure TSFOForm.PopupMenu2Popup(Sender: TObject);
begin
if SFOList2.SelCount=1 then
if SFOList2.Selected.SubItems[3]='0' then EditBinary1.Enabled:=true
else EditBinary1.Enabled:=false;
end;

procedure TSFOForm.BinaryViewer1Click(Sender: TObject);
begin
if SFOList2.SelCount=1 then
begin
BinaryForm.Caption:='Binary Viewer - ['+SFOList2.Selected.SubItems.Strings[0]+']';
if SFOList2.Selected.ImageIndex=-1 then
begin //is an established item
BinaryForm.Memo1.Text:=BinaryToEdit(True,BinaryArray[StrToInt(SFOList2.Selected.Caption)],True,false);
uBinary.IsTemp:=false;
uBinary.DataNo:=StrToInt(SFOList2.Selected.Caption);
end else
begin //is a temp/new item
BinaryForm.Memo1.Text:=BinaryToEdit(True,tBinaryArray[SFOList2.Selected.ImageIndex],True,false);
uBinary.IsTemp:=true;
uBInary.DataNo:=SFOList2.Selected.ImageIndex;
end;
BinaryForm.ShowModal;
end;

end;

procedure TSFOForm.OpenWith1Click(Sender: TObject);
Var OutStr:ANSIstring;
IsTemp:Boolean;
DataNo:integer;
rFileName:String;
TempDir:Array[1..400] of char;
begin
if SFOList2.SelCount=1 then
begin
GetTempPath(255,@TempDir);
rFileName:=StrPas(@TempDir)+'\'+mainform.randomfilename('.tmp');
OpenWithForm.ShowModal;
if uOpenWith.OK then
  begin
if SFOForm.SFOList2.Selected.ImageIndex=-1 then
begin //is an established item
OutStr:=BinaryArray[StrToInt(SFOList2.Selected.Caption)];
IsTemp:=false;
DataNo:=StrToInt(SFOList2.Selected.Caption);
end else
begin //is a temp/new item
BinaryForm.Memo1.Text:=tBinaryArray[SFOList2.Selected.ImageIndex];
IsTemp:=true;
DataNo:=SFOList2.Selected.ImageIndex;
end;
SaveToFile(rFileName,OutStr);
MainForm.Execute(uOpenWith.OpenWithEXE,rFileName);
if MessageDlg('You may now edit the data. Please click OK when you have made your changes or click Cancel to keep the data intact.',
    mtConfirmation, [mbOK, mbCancel], 0) = mrOK then
begin       //if mrOK
if not FileExists(rFileName) then showmessage('Temporary file has gone!') else
 if Length(ReadFile(rFileName))>0 then
 begin             //if length>0
  if not isTemp then BinaryArray[StrToInt(SFOList2.Selected.Caption)]:=ReadFile(rFileName) else
  tBinaryArray[SFOList2.Selected.ImageIndex]:=ReadFile(rFileName);
 end else showmessage('File is empty! Not used');


end;

end;
if FileExists(rFileName) then
if not DeleteFile(rFileName) then Showmessage('Unable to delete temp file ('+rFileName+').'#13#10+'Please make sure your editor program does not have a lock on the file.');
end;
end;

function TSFOForm.ReadFile(fn:string):ANSIstring;
var
FStream:TFilestream;
StSTream:TStringStream;
f:file;
begin
result:='';
  FStream := TFileStream.Create(fn, fmShareDenyNone or fmOpenRead);
  StStream := TStringStream.Create('');
  try
    StStream.CopyFrom(FStream, FStream.Size);
    result := StStream.DataString;

  finally
    StStream.Free;
    FStream.Free;    // free streams when finished. frees memory.
end;
end;
procedure TSFOForm.new1Click(Sender: TObject);
begin
FixView;
SFOForm.SFOList.Clear;
SFOForm.SFOList2.Clear;
SFOForm.Caption:='SFO Editor - [New File]';
end;

procedure TSFOForm.SFOList2Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
GroupBox2.Caption:='Data ('+IntToSTr(SFOList2.Items.count)+' items)';
end;

procedure TSFOForm.Close1Click(Sender: TObject);
begin
Close;
end;

procedure TSFOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
SetLength(wSFOItems,0);
SetLength(wDataS,0);
SetLength(wDataI,0);
SetLength(BinaryArray,0);
SetLength(tBinaryArray,0);

end;

procedure TSFOForm.Open1Click(Sender: TObject);
begin
MainForm.SpeedButton2.Click;
end;

procedure TSFOForm.RevertAdvancedOptionstoDefault1Click(Sender: TObject);
begin
//Reset Advanced Options
RadioButton3.Checked:=true;
CheckBox3.Checked:=false;
CheckBox1.Checked:=false;
CheckBox4.Checked:=true;
Edit1.Text:='4';
//
end;

procedure TSFOForm.RadioButton4Click(Sender: TObject);
begin
if TCheckBox(sender).Checked then ShowMessage('Any changes to a SaveGame SFO will make the PSP detect it is ''corrupted''.');
end;

procedure TSFOForm.Help2Click(Sender: TObject);
begin
SFOHelpForm.ShowModal;
end;

procedure TSFOForm.BasicRunnablePBP1Click(Sender: TObject);
var Item:TtntListItem;
begin
SFOList.Clear;
SFOList2.Clear;

Item:=SFOList2.Items.Add;
Item.Subitems.Add('BOOTABLE');
Item.SubItems.Add('1');
Item.SubItems.Add('0');
Item.SubItems.Add('4');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('CATEGORY');
Item.SubItems.Add('MG');
Item.SubItems.Add('1');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('REGION');
Item.SubItems.Add('32768');
Item.SubItems.Add('0');
Item.SubItems.Add('4');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE');
Item.SubItems.Add('YOUR_TITLE');
Item.SubItems.Add('100');
Item.SubItems.Add('2');

Auto_CurrToMem(true);
end;

procedure TSFOForm.LaunchUpdaterMustUpdate1Click(Sender: TObject);
var Item:TtntListItem;
begin
SFOList.Clear;
SFOList2.Clear;

Item:=SFOList2.Items.Add;
Item.Subitems.Add('BOOTABLE');
Item.SubItems.Add('1');
Item.SubItems.Add('0');
Item.SubItems.Add('4');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('CATEGORY');
Item.SubItems.Add('MG');
Item.SubItems.Add('1');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('PSP_SYSTEM_VER');
Item.SubItems.Add('2.00');
Item.SubItems.Add('3');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('REGION');
Item.SubItems.Add('32768');
Item.SubItems.Add('0');
Item.SubItems.Add('4');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE');
Item.SubItems.Add('PSP™ Update ver 2.00');
Item.SubItems.Add('100');
Item.SubItems.Add('2');
Auto_CurrToMem(true);

end;

procedure TSFOForm.N151Update1Click(Sender: TObject);
var Item:TtntListItem;
i:integer;
s:string;

begin
SFOList.Clear;
SFOList2.Clear;

Item:=SFOList2.Items.Add;
Item.Subitems.Add('BOOTABLE');
Item.SubItems.Add('1');
Item.SubItems.Add('0');
Item.SubItems.Add('4');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('CATEGORY');
Item.SubItems.Add('MG');
Item.SubItems.Add('1');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('DISC_VERSION');
Item.SubItems.Add('1.00');
Item.SubItems.Add('3');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('PARENTAL_LEVEL');
Item.SubItems.Add('1');
Item.SubItems.Add('0');
Item.SubItems.Add('4');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('REGION');
Item.SubItems.Add('32768');
Item.SubItems.Add('0');
Item.SubItems.Add('4');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE');
Item.SubItems.Add('PSP™ Update ver 1.51');
Item.SubItems.Add('105');
Item.SubItems.Add('2');

s:='';
for i:=1 to 34 do
  s:=s+chr(r2[i]);

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_0');
Item.SubItems.Add(UTF8DEcode(s));
Item.SubItems.Add('93');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_2');
Item.SubItems.Add('Mise à jour PSP™ ver. 1.51');
Item.SubItems.Add('98');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_3');
Item.SubItems.Add('Actualización de PSP™ ver. 1.51');
Item.SubItems.Add('93');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_4');
Item.SubItems.Add('PSP™-Aktualisierung Ver. 1.51');
Item.SubItems.Add('96');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_5');
Item.SubItems.Add('Aggiornamento della PSP™ ver. 1.51');
Item.SubItems.Add('91');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_6');
Item.SubItems.Add('PSP™-update versie 1.51');
Item.SubItems.Add('102');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_7');
Item.SubItems.Add('Actualização PSP™ ver 1.51');
Item.SubItems.Add('97');
Item.SubItems.Add('2');

s:='';
for i:=1 to 40 do
  s:=s+chr(r[i]);

Item:=SFOList2.Items.Add;
Item.Subitems.Add('TITLE_8');
Item.SubItems.Add(UTF8Decode(s));
Item.SubItems.Add('87');
Item.SubItems.Add('2');

Item:=SFOList2.Items.Add;
Item.Subitems.Add('UPDATER_VER');
Item.SubItems.Add('1.51');
Item.SubItems.Add('3');
Item.SubItems.Add('2');

Auto_CurrToMem(true);


end;

procedure TSFOForm.Button2Click(Sender: TObject);
begin
close;
end;

procedure TSFOForm.FixView;
begin
CheckBox2.Checked:=false;
CheckBox2.OnClick(CheckBox2);
ListView_SetColumnWidth(SFOForm.SFOList.Handle,1,LVSCW_AUTOSIZE_USEHEADER);
ListView_SetColumnWidth(SFOForm.SFOList2.Handle,4,LVSCW_AUTOSIZE_USEHEADER);
RadioButton3.Checked:=true;
end;

end.
