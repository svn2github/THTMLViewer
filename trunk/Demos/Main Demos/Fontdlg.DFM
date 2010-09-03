object FontForm: TFontForm
  Left = 1012
  Top = 247
  BorderIcons = [biSystemMenu]
  Caption = 'Edit Default Font and Colors'
  ClientHeight = 421
  ClientWidth = 530
  Color = clBtnFace
  Constraints.MinHeight = 455
  Constraints.MinWidth = 538
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    530
    421)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 7
    Top = 271
    Width = 66
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '&Font Color'
    FocusControl = FontColorGrid
    ExplicitTop = 273
  end
  object Label2: TLabel
    Left = 85
    Top = 271
    Width = 65
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '&Link Color'
    FocusControl = HotSpotColorGrid
    ExplicitTop = 273
  end
  object Label3: TLabel
    Left = 8
    Top = 374
    Width = 61
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'Font &Size'
    FocusControl = FontSizeEdit
    ExplicitTop = 376
  end
  object Label4: TLabel
    Left = 169
    Top = 271
    Width = 70
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'Font &Name'
    FocusControl = FontListBox
    ExplicitTop = 273
  end
  object Label5: TLabel
    Left = 328
    Top = 271
    Width = 77
    Height = 16
    Anchors = [akRight, akBottom]
    Caption = '&Background'
    FocusControl = BackListBox
    ExplicitLeft = 309
    ExplicitTop = 273
  end
  object FontListBox: TListBox
    Left = 169
    Top = 293
    Width = 148
    Height = 115
    Anchors = [akLeft, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Sorted = True
    TabOrder = 0
    OnClick = ListBoxClicks
    ExplicitTop = 296
    ExplicitWidth = 128
  end
  object FontColorGrid: TColorGrid
    Left = 8
    Top = 293
    Width = 72
    Height = 72
    Anchors = [akLeft, akBottom]
    ClickEnablesColor = True
    ForegroundIndex = -1
    ForegroundEnabled = False
    BackgroundEnabled = False
    Selection = 3
    TabOrder = 2
    TabStop = True
    OnChange = FontColorGridChange
    ExplicitTop = 295
  end
  object HotSpotColorGrid: TColorGrid
    Left = 85
    Top = 293
    Width = 72
    Height = 72
    Anchors = [akLeft, akBottom]
    ClickEnablesColor = True
    ForegroundIndex = -1
    ForegroundEnabled = False
    BackgroundEnabled = False
    TabOrder = 3
    TabStop = True
    OnChange = HotSpotColorGridChange
    ExplicitTop = 295
  end
  object BackListBox: TListBox
    Left = 328
    Top = 292
    Width = 108
    Height = 115
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnClick = ListBoxClicks
    ExplicitLeft = 309
    ExplicitTop = 294
  end
  object OKButton: TButton
    Left = 447
    Top = 353
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'O&K'
    Default = True
    ModalResult = 1
    TabOrder = 5
    ExplicitLeft = 428
    ExplicitTop = 355
  end
  object Cancel: TButton
    Left = 447
    Top = 382
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
    ExplicitLeft = 428
    ExplicitTop = 384
  end
  object ResetButton: TButton
    Left = 447
    Top = 324
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Reset'
    TabOrder = 6
    OnClick = ResetButtonClick
    ExplicitLeft = 428
    ExplicitTop = 326
  end
  object FontSizeEdit: TSpinEdit
    Left = 85
    Top = 371
    Width = 65
    Height = 26
    Anchors = [akLeft, akBottom]
    MaxValue = 24
    MinValue = 6
    TabOrder = 4
    Value = 12
    OnChange = ListBoxClicks
    ExplicitTop = 373
  end
  object FontViewer: THTMLViewer
    Left = 8
    Top = 8
    Width = 513
    Height = 256
    ViewImages = False
    TabOrder = 8
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = htSingle
    HistoryMaxCount = 0
    DefFontName = 'Times New Roman'
    DefPreFontName = 'Courier New'
    NoSelect = True
    ScrollBars = ssVertical
    CharSet = DEFAULT_CHARSET
    PrintMarginLeft = 2.000000000000000000
    PrintMarginRight = 2.000000000000000000
    PrintMarginTop = 2.000000000000000000
    PrintMarginBottom = 2.000000000000000000
    PrintScale = 1.000000000000000000
    htOptions = []
    ExplicitWidth = 493
    ExplicitHeight = 259
  end
end
