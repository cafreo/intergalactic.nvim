--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- colors
local backg = hsl(260, 18, 13)
local backg2 = hsl(260, 14, 17)
local foreg = hsl(210, 4, 80)
local red = hsl(5, 85, 43)
local orange = hsl(20, 80, 50)
local yellow = hsl(39, 85, 58)
local green = hsl(81, 75, 48)
local blue = hsl(212, 75, 48)
local lightblue = hsl(197, 75, 48)
local violet = hsl(301, 75, 47)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    { bg = blue }, -- Columns set with 'colorcolumn'
    Conceal        { fg = backg, bg = foreg.darken(40) }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { fg = backg }, -- Character under the cursor
    CurSearch      { bg = yellow, fg = backg }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor        { bg = violet  }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM       { bg = violet  }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = violet  }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { bg = backg.lighten(10) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = yellow, bold = true }, -- Directory names (and other special names in listings)
    DiffAdd        { bg = blue  }, -- Diff mode: Added line |diff.txt|
    DiffChange     { bg = blue  }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { bg = blue  }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = foreg, bg = red, bold = true }, -- Diff mode: Changed text within a changed line |diff.txt|
    TermCursor     { bg = blue  }, -- Cursor in a focused terminal
    TermCursorNC   { bg = violet }, -- Cursor in an unfocused terminal
    ErrorMsg       { bg = red, fg = foreg }, -- Error messages on the command line
    VertSplit      { bg = blue  }, -- Column separating vertically split windows
    Folded         { bg = blue  }, -- Line used for closed folds
    FoldColumn     { bg = blue  }, -- 'foldcolumn'
    SignColumn     { bg = backg  }, -- Column where |signs| are displayed
    IncSearch      { fg = backg, bg = yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { fg = backg, bg = green }, -- |:substitute| replacement text highlighting
    LineNr         { fg = yellow.darken(30) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove    { LineNr }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { LineNr }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   { fg = yellow, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    EndOfBuffer    { LineNr, fg = LineNr.fg.darken(35) }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    CursorLineFold { bg = violet  }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { CursorLine }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParent     { bg = green }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    Normal         { fg = foreg }, -- Normal text
    ModeMsg        { Normal }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea        { fg = foreg }, -- Area for messages and cmdline
    MsgSeparator   { MsgArea }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg        { fg = green, bold = true }, -- |more-prompt|
    NonText        { fg = orange.lighten(20), bold = true }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    NormalFloat    { fg = foreg, bg = backg2 }, -- Normal text in floating windows.
    FloatBorder    { fg = yellow }, -- Border of floating windows.
    FloatTitle     { fg = yellow, bold = true }, -- Title of floating windows.
    NormalNC       { fg = foreg.darken(50)  }, -- normal text in non-current windows
    Pmenu          { NormalFloat }, -- Popup menu: Normal item.
    PmenuSel       { Pmenu, bg = Pmenu.bg.lighten(10) }, -- Popup menu: Selected item.
    PmenuKind      { Pmenu }, -- Popup menu: Normal item "kind"
    PmenuKindSel   { PmenuSel }, -- Popup menu: Selected item "kind"
    PmenuExtra     { Pmenu }, -- Popup menu: Normal item "extra text"
    PmenuExtraSel  { PmenuSel }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { NormalFloat }, -- Popup menu: Scrollbar.
    PmenuThumb     { NormalFloat, bg = foreg.darken(60) }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = green, bold = true }, -- |hit-enter| prompt and yes/no questions
    Search         { fg = backg, bg = green.lighten(20), bold = true }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    QuickFixLine   { Search }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey     { bg = violet  }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { fg = Normal.fg, sp = red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { fg = Normal.fg, sp = blue, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { fg = Normal.fg, sp = lightblue, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { fg = Normal.fg, sp = violet, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { bg = backg }, -- Status line of current window
    StatusLineNC   { bg = backg2 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { bg = violet  }, -- Tab pages line, not active tab page label
    TabLineFill    { bg = violet  }, -- Tab pages line, where there are no labels
    TabLineSel     { fg = foreg }, -- Tab pages line, active tab page label
    Title          { bg = violet  }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { bg = backg.lighten(20) }, -- Visual mode selection
    VisualNOS      { bg = violet  }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = red }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator   { fg = yellow }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { bg = violet }, -- Current match in 'wildmenu' completion
    WinBar         { bg = violet }, -- Window bar of current window
    WinBarNC       { bg = violet }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = foreg.darken(40) }, -- Any comment

    Constant       { fg = lightblue }, -- (*) Any constant
    String         { Constant }, --   A string constant: "this is a string"
    Character      { Constant }, --   A character constant: 'c', '\n'
    Number         { Constant }, --   A number constant: 234, 0xff
    Boolean        { Constant }, --   A boolean constant: TRUE, false
    Float          { Constant }, --   A floating point constant: 2.3e10

    Identifier     { fg = orange.lighten(20) }, -- (*) Any variable name
    Function       { Identifier }, --   Function name (also: methods for classes)

    Statement      { fg = yellow, bold = true }, -- (*) Any statement
    Conditional    { Statement }, --   if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --   case, default, etc.
    Operator       { Statement }, --   "sizeof", "+", "*", etc.
    Keyword        { Statement }, --   any other keyword
    Exception      { Statement }, --   try, catch, throw

    PreProc        { fg = violet }, -- (*) Generic Preprocessor
    Include        { PreProc }, --   Preprocessor #include
    Define         { PreProc }, --   Preprocessor #define
    Macro          { PreProc }, --   Same as Define
    PreCondit      { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = lightblue.darken(20) }, -- (*) int, long, char, etc.
    StorageClass   { Type }, --   static, register, volatile, etc.
    Structure      { Type }, --   struct, union, enum, etc.
    Typedef        { Type }, --   A typedef

    Special        { Normal }, -- (*) Any special symbol
    SpecialChar    { Special }, --   Special character in a constant
    Tag            { Special }, --   You can use CTRL-] on this
    Delimiter      { Special }, --   Character that needs attention
    SpecialComment { Special }, --   Special things inside a comment (e.g. '\n')
    Debug          { Special }, --   Debugging statements

    Underlined     { fg = blue, underline = true }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { ErrorMsg }, -- Any erroneous construct
    Todo           { fg = backg, bg = yellow }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { WarningMsg } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = orange } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg =lightblue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { Normal } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = green.lighten(20) } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError } , -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn } , -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo } , -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticHint } , -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk    { DiagnosticOk } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { sp = red, underline = true } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { sp = orange, underline = true } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { sp =lightblue, underline = true } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { sp = foreg, underline = true } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { sp = green.lighten(20), underline = true } , -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError    { DiagnosticError } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { DiagnosticWarn } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { DiagnosticInfo } , -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { DiagnosticHint } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk       { DiagnosticOk } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError        { DiagnosticError } , -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { DiagnosticWarn } , -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { DiagnosticInfo } , -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { DiagnosticHint } , -- Used for "Hint" signs in sign column.
    DiagnosticSignOk           { DiagnosticOk } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
