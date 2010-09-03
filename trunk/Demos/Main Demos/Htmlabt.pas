unit HTMLAbt;

{$include ..\..\source\htmlcons.inc}

interface

uses
  SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Buttons, ExtCtrls,
{$ifdef LCL}
  LResources, LCLVersion,
{$endif}
  Htmlview, StdCtrls;

const
  Version = '10.1';

type

  { TAboutBox }

  TAboutBox = class(TForm)
    BitBtn1: TBitBtn;
    Viewer: THTMLViewer;
  public
    constructor CreateIt(Owner: TComponent; const ProgName, CompName: string);
  end;

implementation

{$ifdef LCL}
{$else}
{$R *.DFM}
{$endif}

constructor TAboutBox.CreateIt(Owner: TComponent; const ProgName, CompName: string);
var
  S: String;
begin
  inherited Create(Owner);
  inherited Loaded;
  Viewer.DefFontName := 'MS Sans Serif';
  Viewer.DefFontSize := 9;
  Viewer.DefFontColor := clNavy;
  S :='<body bgcolor="ffffeb" text="000080">'+
    '<center>'+
    '<h1>'+ProgName+'</h1>'+
    '<font color="Maroon">A demo program for the '+CompName+' component</font>'+
    '<h3>Version '+Version+' compiled with '+
{$ifdef Ver90}
    'Delphi 2'+
{$endif}
{$ifdef Ver93}
    'C++Builder 1'+
{$endif}
{$ifdef Ver100}
    'Delphi 3'+
{$endif}
{$ifdef Ver110}
    'C++Builder 3'+
{$endif}
{$ifdef Ver120}
    'Delphi 4'+
{$endif}
{$ifdef Ver125}
    'C++Builder 4'+
{$endif}
{$ifdef Ver130}
  {$ifdef BCB}
    'C++Builder 5'+
  {$else}
    'Delphi 5'+
  {$endif}
{$endif}
{$ifdef Ver140}
    'Delphi 6'+
{$endif}
{$ifdef Ver150}
    'Delphi 7'+
{$endif}
{$ifdef Ver170}
    'Delphi 2005'+
{$endif}
{$ifdef Ver185}
    'Delphi 2007'+
{$else}
  {$ifdef Ver180}
      'Delphi 2006'+
  {$endif}
{$endif}
{$ifdef Ver200}
    'Delphi 2009'+
{$endif}
{$ifdef Ver210}
    'Delphi 2010'+
{$endif}
{$ifdef LCL}
    'Lazarus ' + lcl_version +
{$endif}
    '</h3>'+
    '</center>'+
    '</body>';
  Viewer.LoadFromBuffer(@S[1], Length(S), '');
end;

initialization
{$ifdef LCL}
{$I HtmlAbt.lrs}
{$endif}
end.
