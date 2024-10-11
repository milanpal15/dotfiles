-- This file is automatically loaded by plugins.core
-- LazyVim auto format
vim.g.autoformat = true

-- LazyVim picker to use.
-- Can be one of: telescope, fzf
-- Leave it to "auto" to automatically use the picker
-- enabled with `:LazyExtras`
vim.g.lazyvim_picker = "auto"

-- LazyVim root dir detection
-- Each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- LazyVim automatically configures lazygit:
--  * theme, based on the active colorscheme.
--  * editPreset to nvim-remote
--  * enables nerd font icons
-- Set to false to disable.
-- Set the options you want to override in `~/.config/lazygit/custom.yml`
-- WARN: on Windows you might want to set `editPreset: "nvim"` due to
-- this issue https://github.com/jesseduffield/lazygit/issues/3467
vim.g.lazygit_config = true

-- Options for the LazyVim statuscolumn
vim.g.lazyvim_statuscolumn = {
  folds_open = false, -- show fold sign when fold is open
  folds_githl = false, -- highlight fold sign with git sign color
}

-- Optionally setup the terminal to use
-- This sets `vim.o.shell` and does some additional configuration for:
-- * pwsh
-- * powershell
-- LazyVim.terminal.setup("pwsh")

-- Hide deprecation warnings
vim.g.deprecation_warnings = false

-- Set filetype to `bigfile` for files larger than 1.5 MB
-- Only vim syntax will be enabled (with the correct filetype)
-- LSP, treesitter and other ft plugins will be disabled.
-- mini.animate will also be disabled.
vim.g.bigfile_size = 1024 * 1024 * 1.5 -- 1.5 MB

-- Show the current document symbols location from Trouble in lualine
-- You can disable this for a buffer by setting `vim.b.trouble_lualine = false`
vim.g.trouble_lualine = true

local opt = vim.opt

-- Tab / Indentation 
opt.tabstop = 2 -- Number of spaces tabs count for
opt.shiftwidth = 2 -- Size of an indent
opt.softtabstop = 2
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Insert indents automatically
opt.wrap = false -- Disable line wrap

-- Search
opt.incsearch = true
opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Don't ignore case with capitals
opt.hlsearch = false 
--
-- Appearance
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.termguicolors = true -- True color support
opt.colorcolumn = '100'
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.cmdheight = 1 
opt.showcmd = true
vim.opt.ruler = true
opt.laststatus = 3 -- global statusline
opt.cursorline = true -- Enable highlighting of the current line
opt.completeopt = "menu,menuone,noselect,noinsert"
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.showmode = true -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.scrolloff = 4 -- Lines of context

-- Behaviour
opt.confirm = false -- Confirm to save changes before exiting modified buffer
opt.hidden = true
opt.errorbells = false
opt.swapfile =  false
opt.backup = false
opt.undofile = true
opt.undolevels = 10000
opt.backspace = "indent,eol,start"
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "screen"
opt.splitright = true -- Put new windows right of current
opt.autochdir = false
opt.iskeyword:append("-")
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
opt.mouse = "a" -- Enable mouse mode
-- opt.guicursor = ""

opt.autowrite = true -- Enable auto write
-- only set clipboard if not in ssh, to make sure the OSC 52
-- integration works automatically. Requires Neovim >= 0.10.0
opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = "~",
}
opt.foldlevel = 99
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.inccommand = "nosplit" -- preview incremental substitute
opt.jumpoptions = "view"
-- opt.linebreak = true -- Wrap lines at convenient points
opt.list = true -- Show some invisible characters (tabs...
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.shiftround = true -- Round indent
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.spelllang = { "en" }
opt.spelloptions:append("noplainbuffer")
-- opt.statuscolumn = [[%!v:lua.require'util'.ui.statuscolumn()]]
opt.timeoutlen = vim.g.vscode and 700 or 300 -- Lower than default (1000) to quickly trigger which-key
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
  opt.foldmethod = "expr"
  opt.foldtext = ""
else
  opt.foldmethod = "indent"
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0


if vim.g.neovide then
--  vim.g.neovide_text_gamma = 0.0
--  vim.g.neovide_text_contrast = 0.5
  vim.opt.linespace = 0
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  opt.cmdheight = 1
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.4
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = "#0f1117" .. alpha()
end

