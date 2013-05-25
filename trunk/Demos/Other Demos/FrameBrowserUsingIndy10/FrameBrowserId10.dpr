program FrameBrowserId10;

{$R 'fbHelp.res' 'Resources\fbHelp.rc'}

uses
  Forms,
  FBUnitId10 in 'FBUnitId10.pas' {HTTPForm},
  HttpAsyncId10 in 'HttpAsyncId10.pas',
  UrlConId10 in 'UrlConId10.pas',
  AuthUnit in 'AuthUnit.pas' {AuthForm},
  CachUnitId in 'CachUnitId.pas',
  DownLoadId in 'DownLoadId.pas' {DownLoadForm},
  ProxyDlg in 'ProxyDlg.pas' {ProxyForm},
  Gopage in '..\..\Main Demos\Gopage.pas' {GoPageForm},
  Htmlabt in '..\..\Main Demos\Htmlabt.pas' {AboutBox},
  PreviewForm in '..\..\Main Demos\PreviewForm.pas' {PreviewForm},
  PrintStatusForm in '..\..\Main Demos\PrintStatusForm.pas' {PrnStatusForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(THTTPForm, HTTPForm);
  Application.CreateForm(TAuthForm, AuthForm);
  Application.CreateForm(TGoPageForm, GoPageForm);
  Application.Run;
end.
