unit uDataEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TntStdCtrls, ComCtrls, TntComCtrls;

type
  TDataEditForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DataEdit: TTntEdit;
    Bevel3: TBevel;
    GroupBox3: TGroupBox;
    PaddingEdit: TTntEdit;
    GroupBox4: TGroupBox;
    TypeEdit: TTntEdit;
    Bevel5: TBevel;
    Bevel2: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    StatusBar1: TStatusBar;
    Button1: TButton;
    KeyEdit: TComboBox;
    Button2: TButton;
    procedure KeyEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure TypeEditChange(Sender: TObject);
    function Validate:Boolean;
    function ErrMsg(msg:string):boolean;
    procedure KeyEditSelect(Sender: TObject);
    procedure KeyEditChange(Sender: TObject);
    procedure DataEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataEditForm: TDataEditForm;
  DataNo:Integer;
  DataType:Integer;

implementation

uses uSFO, uPBPex;

{$R *.dfm}

procedure TDataEditForm.KeyEditKeyPress(Sender: TObject; var Key: Char);
var item:TTNTListItem;
begin
if Key=#27 then close else
if key=#13 then
if Validate then
begin
if self.Tag=1 then
begin
SFOForm.SFOList2.Selected.SubItems.Strings[0]:=KeyEdit.Text;

{if TypeEdit.Text='2' then
begin
if DataNo=0 then wDataS[DataNo]:=tBinaryArray[DataNo];
end;}

if TypeEdit.Text='0' then
begin
//if DataNo=2 then tBinaryArray[DataNo]:=wDataS[DataNo];
SFOForm.SFOList2.Selected.SubItems.Strings[1]:=SFOForm.EmptyToZero('(Binary Data)');
end else
SFOForm.SFOList2.Selected.SubItems.Strings[1]:=DataEdit.Text;
SFOForm.SFOList2.Selected.SubItems.Strings[2]:=SFOForm.EmptyToZero(PaddingEdit.Text);
SFOForm.SFOList2.Selected.SubItems.Strings[3]:=SFOForm.EmptyToZero(TypeEdit.Text);
end //tag=1
else
begin //tag!=1
Item:=SFOForm.SFOList2.Items.add;
SetLength(tBinaryArray,Length(tBinaryArray)+1);
Item.caption:='(New)';
Item.ImageIndex:=Length(tBinaryArray)-1;
Item.SubItems.Add(SFOForm.EmptyToZero(KeyEdit.Text));
if TypeEdit.Text='0' then
begin         //Type=0
Item.SubItems.Add(SFOForm.EmptyToZero('(Binary Data)'))
end else              //Type!=0
Item.SubItems.Add(DataEdit.Text);
Item.SubItems.Add(SFOForm.EmptyToZero(PaddingEdit.Text));
Item.SubItems.Add(SFOForm.EmptyToZero(TypeEdit.Text));
end;

Close;
end;
end;

procedure TDataEditForm.FormActivate(Sender: TObject);
var i:integer;
begin
KeyEdit.Items.Clear;
for i:=0 to 25 do
  begin
  KeyEdit.Items.Add(Keys[i]);
  end;

{if self.tag=1 then
	begin
  if SFOForm.SFOList2.Selected.ImageIndex=-1 then
	DataNo:=StrToInt(SFOForm.SFOList2.Selected.Caption) else
		DataNo:=SFOForm.SFOList2.Selected.ImageIndex;
	DataNo:=StrToInt(SFOForm.SFOList2.Selected.Caption);
	end;}


self.ActiveControl:=KeyEdit;
end;

procedure TDataEditForm.TypeEditChange(Sender: TObject);
begin
if TTntEdit(sender).Text='0' then DataEdit.Enabled:=false
else DataEdit.Enabled:=true;
end;

function TDataEditForm.Validate:boolean;
var x:int64;
begin
result:=true;


if result then
if (StrToInt64(TypeEdit.Text)<>0) and (StrToInt64(TypeEdit.Text)<>2) and (StrToInt64(TypeEdit.Text)<>4) then Result:=ErrMsg('Only data types 0, 2 and 4 are known. If more data types are discovered, they will be added.');
if result then
if not Length(PaddingEdit.Text)=0 then
if not TryStrToInt64(PaddingEdit.Text,x) then Result:=ErrMSG('Padding must be a number.');
if result then
if not TryStrToInt64(TypeEdit.Text,x) then Result:=ErrMSG('Data Type must be a number.');
if result then
if StrToInt64(TypeEdit.Text)>255 then Result:=ErrMSG('Data Type is an 8-bit value of range 0-255.');
if result then
if (StrToInt64(TypeEdit.Text)<0) or (copy(TypeEdit.Text,1,1)='-') then Result:=ErrMSG('Data Type must be positive.');

if StrToInt(TypeEdit.Text)=4 then
begin
  if result then
  if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMSG('Data must be a number.');
if result then
  if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMSG('Data must be positive.');
if result then
  if StrToInt64(DataEdit.Text)>4294967295 then Result:=ErrMsg('Data is a 32 bit value. It ranges 0-4294967295 ((2^16)-1).');
end;

end;

function TDataEditForm.ErrMsg(msg:string):Boolean;
begin
ShowMessage(msg);
result:=false;
end;

procedure TDataEditForm.KeyEditSelect(Sender: TObject);
var i:integer;
begin
for i:=0 to 25 do
  begin
  if KeyEdit.Text=Keys[i] then TypeEdit.Text:=IntToStr(KeyDataType[i]);
  end;

end;

procedure TDataEditForm.KeyEditChange(Sender: TObject);
begin
GroupBox1.Caption:='Key ('+IntToStr(Length(SFOForm.EditToBinary(False,KeyEdit.Text,true,false)))+')';
end;

procedure TDataEditForm.DataEditChange(Sender: TObject);
begin
GroupBox2.Caption:='Data ('+IntToStr(Length(SFOForm.EditToBinary(False,dataEdit.Text,true,false)))+')';
end;

end.
