unit HTMLAbt;

{$include ..\..\source\htmlcons.inc}

interface

uses
  SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Buttons, ExtCtrls,
{$ifdef LCL}
  LResources,
{$endif}
  Htmlview, StdCtrls;

const
  Version = '10.1';

type
  TAboutBox = class(TForm)
    BitBtn1: TBitBtn;
    Viewer: THTMLViewer;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor CreateIt(Owner: TComponent; const ProgName, CompName: string);
  end;

var
  AboutBox: TAboutBox;

implementation

{$ifdef LCL}
{$else}
{$R *.DFM}
{$endif}

constructor TAboutBox.CreateIt(Owner: TComponent; const ProgName, CompName: string);
var
  S: string;
begin
inherited Create(Owner);
Viewer.DefFontName := 'MS Sans Serif';
Viewer.DefFontSize := 9;
Viewer.DefFontColor := clNavy;
S :='<body bgcolor="ffffeb" text="000080">'+
    '<center>'+
    '<h1>'+ProgName+'</h1>'+
    '<font color="Maroon">A demo program for the '+CompName+' component</font>'+
    '<h3>Version '+Version+' compiled with Delphi '+
{$ifdef Windows}
    '1'+
{$endif}
{$ifdef Ver90}
    '2'+
{$endif}
{$ifdef Ver100}
    '3'+
{$endif}
{$ifdef Ver120}
    '4'+
{$endif}
{$ifdef Ver130}
    '5'+
{$endif}
{$ifdef Ver140}
    '6'+
{$endif}
{$ifdef Ver150}
    '7'+
{$endif}
{$ifdef Ver170}
    '2005'+
{$endif}
{$ifdef Ver185}
    '2007'+
{$else}
{$ifdef Ver180}
    '2006'+
{$endif}
{$endif}
{$ifdef Ver200}
    '2009'+
{$endif}
{$ifdef Ver210}
    '2010'+
{$endif}
    '</h3>'+
    '</center>'+
    '</body>';
Viewer.LoadFromBuffer(@S[1], Length(S), '');
end;

end.
