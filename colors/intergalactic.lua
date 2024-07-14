-- You probably always want to set this in your vim file
vim.opt.background = 'dark'
vim.g.colors_name = 'intergalactic'

-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.
--
-- This isn't strictly required but it can be a useful trick if you are
-- incrementally editing your config a lot and want to be sure your themes
-- changes are being picked up without restarting neovim.
--
-- Note if you're working in on your theme and have :Lushify'd the buffer,
-- your changes will be applied with our without the following line.
--
-- The performance impact of this call can be measured in the hundreds of
-- *nanoseconds* and such could be considered "production safe".
--package.loaded['lush_theme.intergalactic'] = nil

-- include our theme file and pass it to lush to apply
--require('lush')(require('lush_theme.intergalactic'))

local colors = {
-- content here will not be touched
-- PATCH_OPEN
Normal = {fg = "#CACCCE"},
DiagnosticHint = {link = "Normal"},
ModeMsg = {link = "Normal"},
Special = {link = "Normal"},
ColorColumn = {bg = "#1F74D6"},
Comment = {fg = "#767A7F"},
Conceal = {fg = "#1F1B27", bg = "#767A7F"},
Constant = {fg = "#1FA2D6"},
Boolean = {link = "Constant"},
Character = {link = "Constant"},
Float = {link = "Constant"},
Number = {link = "Constant"},
String = {link = "Constant"},
CurSearch = {fg = "#1F1B27", bg = "#EFAF39"},
Cursor = {fg = "#1F1B27"},
CursorColumn = {bg = "#D21ECF"},
CursorIM = {bg = "#D21ECF"},
CursorLine = {bg = "#352E42"},
CursorLineSign = {link = "CursorLine"},
CursorLineFold = {bg = "#D21ECF"},
CursorLineNr = {fg = "#EFAF39", bold = true},
DiagnosticFloatingError = {link = "DiagnosticError"},
DiagnosticSignError = {link = "DiagnosticError"},
DiagnosticVirtualTextError = {link = "DiagnosticError"},
DiagnosticFloatingHint = {link = "DiagnosticHint"},
DiagnosticSignHint = {link = "DiagnosticHint"},
DiagnosticVirtualTextHint = {link = "DiagnosticHint"},
DiagnosticInfo = {fg = "#1FA2D6"},
DiagnosticFloatingInfo = {link = "DiagnosticInfo"},
DiagnosticSignInfo = {link = "DiagnosticInfo"},
DiagnosticVirtualTextInfo = {link = "DiagnosticInfo"},
DiagnosticOk = {fg = "#ACE444"},
DiagnosticFloatingOk = {link = "DiagnosticOk"},
DiagnosticSignOk = {link = "DiagnosticOk"},
DiagnosticVirtualTextOk = {link = "DiagnosticOk"},
DiagnosticUnderlineError = {sp = "#CB2010", underline = true},
DiagnosticUnderlineHint = {sp = "#CACCCE", underline = true},
DiagnosticUnderlineInfo = {sp = "#1FA2D6", underline = true},
DiagnosticUnderlineOk = {sp = "#ACE444", underline = true},
DiagnosticUnderlineWarn = {sp = "#E65E19", underline = true},
DiagnosticWarn = {fg = "#E65E19"},
DiagnosticFloatingWarn = {link = "DiagnosticWarn"},
DiagnosticSignWarn = {link = "DiagnosticWarn"},
DiagnosticVirtualTextWarn = {link = "DiagnosticWarn"},
DiffAdd = {bg = "#1F74D6"},
DiffChange = {bg = "#1F74D6"},
DiffDelete = {bg = "#1F74D6"},
DiffText = {fg = "#CACCCE", bg = "#CB2010", bold = true},
Directory = {fg = "#EFAF39", bold = true},
EndOfBuffer = {fg = "#7F560A"},
ErrorMsg = {fg = "#CACCCE", bg = "#CB2010"},
Error = {link = "ErrorMsg"},
FloatBorder = {fg = "#EFAF39"},
FloatTitle = {fg = "#EFAF39", bold = true},
FoldColumn = {bg = "#1F74D6"},
Folded = {bg = "#1F74D6"},
Identifier = {fg = "#EB7E47"},
Function = {link = "Identifier"},
IncSearch = {fg = "#1F1B27", bg = "#EFAF39"},
LineNr = {fg = "#C18310"},
LineNrAbove = {link = "LineNr"},
LineNrBelow = {link = "LineNr"},
MatchParent = {bg = "#96D61F"},
MoreMsg = {fg = "#96D61F", bold = true},
MsgArea = {fg = "#CACCCE"},
MsgSeparator = {link = "MsgArea"},
NonText = {fg = "#EB7E47", bold = true},
NormalFloat = {fg = "#CACCCE", bg = "#292531"},
Pmenu = {link = "NormalFloat"},
PmenuSbar = {link = "NormalFloat"},
NormalNC = {fg = "#62666A"},
PmenuExtra = {link = "Pmenu"},
PmenuKind = {link = "Pmenu"},
PmenuSel = {fg = "#CACCCE", bg = "#3D3749"},
PmenuExtraSel = {link = "PmenuSel"},
PmenuKindSel = {link = "PmenuSel"},
PmenuThumb = {fg = "#CACCCE", bg = "#4E5255"},
PreProc = {fg = "#D21ECF"},
Define = {link = "PreProc"},
Include = {link = "PreProc"},
Macro = {link = "PreProc"},
PreCondit = {link = "PreProc"},
Question = {fg = "#96D61F", bold = true},
Search = {fg = "#1F1B27", bg = "#ACE444", bold = true},
QuickFixLine = {link = "Search"},
SignColumn = {bg = "#1F1B27"},
Debug = {link = "Special"},
Delimiter = {link = "Special"},
SpecialChar = {link = "Special"},
SpecialComment = {link = "Special"},
Tag = {link = "Special"},
SpecialKey = {bg = "#D21ECF"},
SpellBad = {fg = "#CACCCE", sp = "#CB2010", undercurl = true},
SpellCap = {fg = "#CACCCE", sp = "#1F74D6", undercurl = true},
SpellLocal = {fg = "#CACCCE", sp = "#1FA2D6", undercurl = true},
SpellRare = {fg = "#CACCCE", sp = "#D21ECF", undercurl = true},
Statement = {fg = "#EFAF39", bold = true},
Conditional = {link = "Statement"},
Exception = {link = "Statement"},
Keyword = {link = "Statement"},
Label = {link = "Statement"},
Operator = {link = "Statement"},
Repeat = {link = "Statement"},
StatusLine = {bg = "#1F1B27"},
StatusLineNC = {bg = "#292531"},
Substitute = {fg = "#1F1B27", bg = "#96D61F"},
TabLine = {bg = "#D21ECF"},
TabLineFill = {bg = "#D21ECF"},
TabLineSel = {fg = "#CACCCE"},
TermCursor = {bg = "#1F74D6"},
TermCursorNC = {bg = "#D21ECF"},
Title = {bg = "#D21ECF"},
Todo = {fg = "#1F1B27", bg = "#EFAF39"},
Type = {fg = "#1880AA"},
StorageClass = {link = "Type"},
Structure = {link = "Type"},
Typedef = {link = "Type"},
Underlined = {fg = "#1F74D6", underline = true},
VertSplit = {bg = "#1F74D6"},
Visual = {bg = "#483F5A"},
VisualNOS = {bg = "#D21ECF"},
WarningMsg = {fg = "#CB2010"},
DiagnosticError = {link = "WarningMsg"},
WildMenu = {bg = "#D21ECF"},
WinBar = {bg = "#D21ECF"},
WinBarNC = {bg = "#D21ECF"},
Winseparator = {fg = "#EFAF39"},
lCursor = {bg = "#D21ECF"},
-- PATCH_CLOSE
-- content here will not be touched
}

-- colorschemes generally want to do this
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='my_theme'")

-- apply highlight groups
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
