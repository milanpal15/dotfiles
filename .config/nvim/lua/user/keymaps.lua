vim.g.mapleader = ' ' 
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local mode = { 	
		all = { "n", "i", "v", "o", "x" },
    allexcepti 	= { "n", "v", "o", "x" },
    niv = { "n", "i", "v" },
		ni = { "n", "i" },
		nv = { "n", "v" },
		no = { "n", "o" },
		nx = { "n", "x" },
		iv = { "i", "v" },
		io = { "i", "o" },
		ix = { "i", "x" },
		vo = { "v", "o" },
		vx = { "v", "x" },
		ox = { "o" , "x" },
		o = { "o" },
		x = { "x" },
		n = { "n" },
		i = { "i" },
		v = { "v" },
	    }

local keys = {
    leader = " "
    }

-- keymap( mode.i, 'jj','<Esc>', opts )
keymap( mode.nv, keys.leader .. 'jj','<Esc>', opts )
keymap( mode.allexcepti, '<C-h>', '^', opts )
keymap( mode.allexcepti, '<C-l>', 'g_', opts )
keymap( mode.n, '<Leader>wq', '<cmd>wq<cr>', opts )
keymap( mode.n, '<Leader>ww', '<cmd>w<cr>', opts )
keymap( mode.n, '<Space>', '', opts )
keymap( mode.all, keys.leader .. 'bn', '<cmd>bNext<cr>',opts )
-- m is alt here
keymap( mode.n, '<m-h>', '<C-w>h', opts )
keymap( mode.n, '<m-j>', '<C-w>j', opts )
keymap( mode.n, '<m-k>', '<C-w>k', opts )
keymap( mode.n, '<m-l>', '<C-w>l', opts )

-- to center every time any of the keys here is pressed
keymap(mode.n, "n", "nzz", opts )
keymap(mode.n, "N", "Nzz", opts )
keymap(mode.n, "*", "*zz", opts )
keymap(mode.n, "#", "#zz", opts )
keymap(mode.n, "g*", "g*zz", opts )
keymap(mode.n, "g#", "g#zz", opts )

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- when deleting something don't save it in + register or yank it 
keymap("x", "p", [["_dP]])

vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

-- vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

-- tailwind bearable to work with
keymap({ "n", "x" }, "j", "gj", opts)
keymap({ "n", "x" }, "k", "gk", opts)
keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)

-- escape when in terminal
vim.api.nvim_set_keymap('t', '<C-;>', '<C-\\><C-n>', opts)

-- making space actully space
keymap(mode.i, "<C-;>", " ",opts )
