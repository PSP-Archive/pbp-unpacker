unit uOpenWith;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TOpenWithForm = class(TForm)
    Bevel1: TBevel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpenWithForm: TOpenWithForm;
  OpenWithEXE:String;
  OK:Boolean;

implementation

uses uPBPex;

{$R *.dfm}

procedure TOpenWithForm.Button2Click(Sender: TObject);
var i:integer;
begin
if FileExists(ComboBox1.Text) then
begin
OpenWithEXE:=ComboBox1.Text;
//Add Item
MainForm.OAddRecent(OpenWithExe);
//--
OK:=true;
close;
end else
showmessage(ComboBox1.Text+' does not exist. Please select a valid EXE file.');
end;

procedure TOpenWithForm.FormActivate(Sender: TObject);
begin
OK:=false;
ComboBox1.Clear;
ComboBox1.Items.Clear;
MainForm.OUpdateGlobalRecents;
end;

procedure TOpenWithForm.Button3Click(Sender: TObject);
begin
OK:=false;
close;
end;

procedure TOpenWithForm.Button1Click(Sender: TObject);
begin
if OpenDialog1.Execute then ComboBox1.Text:=OpenDialog1.FileName;
end;

procedure TOpenWithForm.FormCreate(Sender: TObject);
begin
MainForm.OReadGlobalRecents;
end;

end.
