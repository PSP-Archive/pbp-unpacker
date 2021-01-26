program pPBPex;





uses
  Forms,
  uPBPex in 'uPBPex.pas' {MainForm},
  uSFO in 'uSFO.pas' {SFOForm},
  uSFOhelp in 'uSFOhelp.pas' {SFOHelpForm},
  uDataEdit in 'uDataEdit.pas' {DataEditForm},
  uStructureEdit in 'uStructureEdit.pas' {StructureEditForm},
  uStatus in 'uStatus.pas' {StatusForm},
  uBinary in 'uBinary.pas' {BinaryForm},
  uOpenWith in 'uOpenWith.pas' {OpenWithForm},
  uBinaryHelp in 'uBinaryHelp.pas' {BinaryHelpForm},
  uASCII in 'uASCII.pas' {ASCIIForm},
  uImageForm in 'uImageForm.pas' {ImageForm};

{$E EXE}

{$R *.res}


begin
  Application.Initialize;
  Application.Title := 'PBP Unpacker v0.94';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSFOForm, SFOForm);
  Application.CreateForm(TSFOHelpForm, SFOHelpForm);
  Application.CreateForm(TDataEditForm, DataEditForm);
  Application.CreateForm(TStructureEditForm, StructureEditForm);
  Application.CreateForm(TStatusForm, StatusForm);
  Application.CreateForm(TBinaryForm, BinaryForm);
  Application.CreateForm(TOpenWithForm, OpenWithForm);
  Application.CreateForm(TBinaryHelpForm, BinaryHelpForm);
  Application.CreateForm(TASCIIForm, ASCIIForm);
  Application.CreateForm(TImageForm, ImageForm);
  Application.HintHidePause:=10000;
  Application.Run;

end.
