unit FrameViewerReg;

interface

uses classes, HTMLView, FramView, FramBrwz;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('HtmlViewer/FrameViewer', [THTMLViewer, TFrameViewer, TFrameBrowser]);
end;

end.
