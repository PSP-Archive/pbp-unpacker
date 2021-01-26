unit uStructureEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, ExtCtrls, ComCtrls;

type
  TStructureEditForm = class(TForm)
    Bevel2: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Panel1: TPanel;
    Bevel3: TBevel;
    GroupBox1: TGroupBox;
    KeyEdit: TTntEdit;
    GroupBox2: TGroupBox;
    DataEdit: TTntEdit;
    StatusBar1: TStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure KeyEditKeyPress(Sender: TObject; var Key: Char);
    function Validate:boolean;
    function ErrMsg(msg:string):boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StructureEditForm: TStructureEditForm;

implementation

uses uSFO;

{$R *.dfm}

procedure TStructureEditForm.FormActivate(Sender: TObject);
begin
self.ActiveControl:=DataEdit;
end;

procedure TStructureEditForm.KeyEditKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then close else
if key=#13 then
begin
If Validate then
begin
SFOForm.SFOList.Selected.SubItems.Strings[0]:=SFOForm.EmptyToZero(DataEdit.Text);
Close;
end;
end;
end;

function TSTructureEditForm.Validate:boolean;
var x:int64;
begin
result:=true;
if pos('OFFSET OF KEY',uppercase(KeyEdit.Text))>0 then
  begin
  if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>65535 then Result:=ErrMsg('This is a 16 bit value. It ranges 0-65535.')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')

  end else

if pos('ALIGNMENT',uppercase(KeyEdit.Text))>0 then
  begin
    if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>255 then Result:=ErrMsg('This is an 8 bit value. It ranges 0-255.')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')
  end else

if pos('DATA TYPE',uppercase(KeyEdit.Text))>0 then
  begin
  if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>255 then Result:=ErrMsg('This is an 8 bit value. It ranges 0-255.')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')


  end else

if pos('DATA (B)',uppercase(KeyEdit.Text))>0 then
  begin
    if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>4294967295 then Result:=ErrMsg('This is a 32 bit value. It ranges 0-4294967295 ((2^16)-1).')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')
  end else


if pos('PADDING',uppercase(KeyEdit.Text))>0 then
  begin
      if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>4294967295 then Result:=ErrMsg('This is a 32 bit value. It ranges 0-4294967295 ((2^16)-1).')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')
  end else

if pos('OFFSET OF DATA',uppercase(KeyEdit.Text))>0 then
  begin
      if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>4294967295 then Result:=ErrMsg('This is a 32 bit value. It ranges 0-4294967295 ((2^16)-1).')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')
  end;

if pos('OFFSET TO KEY TABLE',uppercase(KeyEdit.Text))>0 then
  begin
      if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>4294967295 then Result:=ErrMsg('This is a 32 bit value. It ranges 0-4294967295 ((2^16)-1).')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')
  end;

if pos('OFFSET TO VALUE TABLE',uppercase(KeyEdit.Text))>0 then
  begin
      if not TryStrToInt64(DataEdit.Text,x) then Result:=ErrMsg('Please enter a valid number')
    else if StrToInt64(DataEdit.Text)>4294967295 then Result:=ErrMsg('This is a 32 bit value. It ranges 0-4294967295 ((2^16)-1).')
      else if (StrToInt64(DataEdit.Text)<0) or (copy(DataEdit.Text,1,1)='-') then Result:=ErrMsg('This value must be positive.')
  end;
end;

function TStructureEditForm.ErrMsg(msg:string):Boolean;
begin
ShowMessage(msg);
result:=false;
end;

end.
