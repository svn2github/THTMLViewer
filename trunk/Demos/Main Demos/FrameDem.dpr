program FrameDem;
{A program to demonstrate the TFrameViewer component}

{$include ..\..\source\htmlcons.inc}

uses
  Forms,
{$ifdef LCL}
  Interfaces,
  ColorGrd in 'ColorGrd.pas' {TColorGrid},
{$else}
  PrintStatusForm in 'PRINTSTATUSFORM.PAS' {PrnStatusForm},
  Gopage in 'GOPAGE.PAS' {GoPageForm},
  PreviewForm in 'PREVIEWFORM.PAS' {PreviewForm},
{$endif}
  FDemUnit in 'FDEMUNIT.PAS' {Form1},
  Fontdlg in 'FONTDLG.PAS' {FontForm},
  Submit in 'SUBMIT.PAS' {SubmitForm},
  HTMLAbt in 'HTMLABT.PAS' {AboutBox},
  ImgForm in 'IMGFORM.PAS' {ImageForm};

{$R *.RES}

{$IFDEF WINDOWS}{$R FrameDem.rc}{$ENDIF}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSubmitForm, SubmitForm);
  Application.Run;
end.
