unit uImageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TImageForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImageForm: TImageForm;

implementation

{$R *.dfm}

procedure TImageForm.FormActivate(Sender: TObject);
begin
self.Width:=900;
self.height:=900;
self.AutoSize:=true;
self.AutoSize:=false;
end;

procedure TImageForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  const 
  SC_DragMove = $F012;
begin
if Button= mbRight then close else
  begin
 ReleaseCapture;
  Perform(WM_SYSCOMMAND, SC_DragMove, 0);
  end;
end;

procedure TImageForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then close;
end;

end.
