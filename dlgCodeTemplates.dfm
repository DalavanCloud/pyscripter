inherited CodeTemplates: TCodeTemplates
  Left = 340
  Top = 192
  HelpContext = 540
  Caption = 'Code Templates'
  ClientHeight = 426
  ClientWidth = 430
  ShowHint = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 436
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 426
    Align = alClient
    TabOrder = 0
    DesignSize = (
      430
      426)
    object btnAdd: TButton
      Left = 6
      Top = 118
      Width = 84
      Height = 24
      Action = actAddItem
      Images = CommandsDataModule.Images
      TabOrder = 3
    end
    object btnDelete: TButton
      Left = 89
      Top = 118
      Width = 84
      Height = 24
      Action = actDeleteItem
      Images = CommandsDataModule.Images
      TabOrder = 4
    end
    object btnMoveup: TButton
      Left = 173
      Top = 118
      Width = 84
      Height = 24
      Action = actMoveUp
      Images = CommandsDataModule.Images
      TabOrder = 5
    end
    object btnMoveDown: TButton
      Left = 257
      Top = 118
      Width = 84
      Height = 24
      Action = actMoveDown
      Images = CommandsDataModule.Images
      TabOrder = 6
    end
    object btnUpdate: TButton
      Left = 341
      Top = 118
      Width = 84
      Height = 24
      Action = actUpdateItem
      Images = CommandsDataModule.Images
      TabOrder = 7
    end
    object btnCancel: TButton
      Left = 263
      Top = 394
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 9
    end
    object btnOK: TButton
      Left = 179
      Top = 394
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
    object btnHelp: TButton
      Left = 347
      Top = 394
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Help'
      TabOrder = 8
      OnClick = btnHelpClick
    end
    object GroupBox: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 148
      Width = 424
      Height = 239
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Code Template:'
      TabOrder = 2
      DesignSize = (
        424
        239)
      object Label1: TLabel
        Left = 8
        Top = 21
        Width = 31
        Height = 13
        Caption = '&Name:'
      end
      object Label2: TLabel
        Left = 8
        Top = 65
        Width = 48
        Height = 13
        Caption = '&Template:'
      end
      object Label5: TLabel
        Left = 8
        Top = 44
        Width = 57
        Height = 13
        Caption = '&Description:'
      end
      object Label4: TLabel
        Left = 8
        Top = 200
        Width = 204
        Height = 13
        Caption = 'Press Shift+Ctrl+M for Modifier completion'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Shell Dlg 2'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 215
        Width = 214
        Height = 13
        Caption = 'Press Shift+Ctrl+P for Parameter completion'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Shell Dlg 2'
        Font.Style = []
        ParentFont = False
      end
      object SynTemplate: TSynEdit
        Left = 9
        Top = 90
        Width = 408
        Height = 110
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Style = []
        TabOrder = 1
        CodeFolding.GutterShapeSize = 11
        CodeFolding.CollapsedLineColor = clGrayText
        CodeFolding.FolderBarLinesColor = clGrayText
        CodeFolding.IndentGuidesColor = clGray
        CodeFolding.IndentGuides = True
        CodeFolding.ShowCollapsedLine = False
        CodeFolding.ShowHintMark = True
        UseCodeFolding = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.Width = 0
        Options = [eoAutoIndent, eoAutoSizeMaxScrollWidth, eoDragDropEditing, eoEnhanceHomeKey, eoGroupUndo, eoHideShowScrollbars, eoKeepCaretX, eoShowScrollHint, eoTrimTrailingSpaces]
        TabWidth = 4
        FontSmoothing = fsmNone
      end
      object edDescription: TEdit
        Left = 83
        Top = 43
        Width = 334
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object edShortcut: TEdit
        Left = 83
        Top = 19
        Width = 121
        Height = 21
        TabOrder = 0
        OnKeyPress = edShortcutKeyPress
      end
    end
    object lvItems: TListView
      Left = 1
      Top = 1
      Width = 428
      Height = 109
      Align = alTop
      Columns = <
        item
          Caption = 'Name'
          Width = 120
        end
        item
          Caption = 'Description'
          Width = 280
        end>
      ColumnClick = False
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = lvItemsChange
      OnDeletion = lvItemsDeletion
    end
  end
  object ActionList: TActionList
    Images = CommandsDataModule.Images
    OnUpdate = ActionListUpdate
    Left = 379
    Top = 27
    object actAddItem: TAction
      Caption = '&Add'
      Hint = 'Add item'
      ImageIndex = 49
      OnExecute = actAddItemExecute
    end
    object actDeleteItem: TAction
      Caption = '&Delete'
      Hint = 'Delete item'
      ImageIndex = 14
      OnExecute = actDeleteItemExecute
    end
    object actMoveUp: TAction
      Caption = '&Up'
      Hint = 'Move item up'
      ImageIndex = 47
      OnExecute = actMoveUpExecute
    end
    object actMoveDown: TAction
      Caption = '&Down'
      Hint = 'Move item down'
      ImageIndex = 48
      OnExecute = actMoveDownExecute
    end
    object actUpdateItem: TAction
      Caption = '&Update'
      Hint = 'Update item'
      ImageIndex = 39
      OnExecute = actUpdateItemExecute
    end
  end
end
