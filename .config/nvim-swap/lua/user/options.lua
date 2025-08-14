vim.opt.backup = false -- creates a backup file
vim.o.compatible = false
-- vim.cmd("colorscheme habamax")
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.inccommand = "split"
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.pumblend = 10
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 1 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.laststatus = 3
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 1-- set number column width to 2 {default 4}
vim.opt.virtualedit = "block"
--  vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.scroll = 8
-- vim.opt.breakindent = false
-- vim.opt.breakat =\ \	!@*-+;:,./? -- which chars might cause line break
-- vim.opt.showbreak=  -- string to put before wrapped lines
vim.opt.smoothscroll = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.title = false
-- vim.opt.columns = 150
-- colorcolumn = "80",
-- colorcolumn = "120",
-- vim.opt.window = 32 --number of lines to scroll for ctrl-f and ctrl-b
-- vim.opt.redrawtime = 1000
vim.opt.fillchars = vim.opt.fillchars + "eob:~"
-- vim.opt.background = "dark"
vim.opt.hidden = true
-- switchbuf	"useopen" and/or "split"; which window to use when jumping
vim.opt.fillchars:append {
   stl = " ",
 }
vim.opt.comments = { "s1:--", "b:--[[", "e:]]" }
   
vim.opt.shortmess:append "c"
 
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2

-- vim.o.smarttab = true
vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }
-- vim.opt.listchars = { space = '_', tab = '>~' }
vim.opt.formatoptions = { n = true, j = true, t = true }
-- vim.o.isfname = vim.o.isfname .. ',@-@'
-- vim.opt.shortmess:append({ I = true })
-- vim.opt.wildignore:prepend('*.o')
-- vim.opt.whichwrap:remove({ 'b', 's' })
-- vim.o.paste = true
-- vim.o.timeoutlen = 200 -- Key mapping timeout length
vim.api.nvim_command("filetype plugin indent on")
vim.o.previewwindow = true
-- vim.o.auto_complete = true

-- to higlight text when yanking it
-- vim.cmd [[
-- autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup='Visual', timeout=300}
-- ]] 
-- vim.o.lushmode = true

