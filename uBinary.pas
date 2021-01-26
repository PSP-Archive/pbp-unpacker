unit uBinary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TntStdCtrls;

type
  TBinaryForm = class(TForm)
    Bevel1: TBevel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BinaryForm: TBinaryForm;
  IsTemp:Boolean;
  DataNo:integer;


implementation

uses uSFO, uPBPex, uBinaryHelp, uASCII;

{$R *.dfm}

procedure TBinaryForm.Button1Click(Sender: TObject);
begin
if IsTemp then
tBinaryArray[DataNo]:=SFOForm.EditToBInary(True,memo1.Text,True,false)
else
BinaryArray[DataNo]:=SFOForm.EditToBInary(True,memo1.Text,True,false);

memo1.Clear;
self.Close;
end;

procedure TBinaryForm.Button3Click(Sender: TObject);
begin
BinaryHelpForm.ShowModal;
end;

procedure TBinaryForm.Button4Click(Sender: TObject);
begin
ASCIIForm.ShowModal;
end;

procedure TBinaryForm.CheckBox1Click(Sender: TObject);
begin
memo1.WordWrap:=CheckBox1.Checked;
if memo1.WordWrap then memo1.ScrollBars:=ssVertical else memo1.ScrollBars:=ssBoth;
end;

procedure TBinaryForm.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TBinaryForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Memo1.Clear;
end;

end.
