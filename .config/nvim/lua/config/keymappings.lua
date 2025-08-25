vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymapset = vim.keymap.set
local opts = { noremap = true, silent = true }
local cycle_colorschemes = m.cycle_colorschemes
--file mappings
keymapset('i', 'JJ', '<Esc>')
keymapset('n', '<leader>ww', ':w<CR>', opts)
keymapset('n', '<leader>wq', ':wq<CR>', opts)
keymapset('n', '<leader>sq', ':q<CR>', opts)
keymapset('n', '<leader>qq', ':q!<CR>', opts)

--buffer mappings
keymapset('n', '<leader>bn', ':bNext<CR>', opts)
keymapset('n', '<leader>bp', ':bPrev<CR>', opts)
keymapset('n', '<leader>bf', ':b<CR>', opts)
keymapset('n', '<leader>bl', ':bl<CR>', opts)
keymapset('n', '<leader>bd', ':bd<CR>', opts)

-- tab mappings
keymapset('n', '<leader>to', ':tabnew<CR>', opts)
keymapset('n', '<leader>td', ':tabclose<CR>', opts)
keymapset('n', '<leader>tn', ':tabn<CR>', opts)
keymapset('n', '<leader>tp', ':tabp<CR>', opts)

--explore mappings
--keymapset('n','<leader>ee', ':Explore<CR>', opts)
keymapset('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
keymapset('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })
--keymapset('n', '<leader>ee', ':Lexplore<CR>', { noremap = true, silent = true })
-- keymapset('n', '<leader>e', function()
--     local current_buf = vim.api.nvim_get_current_buf()
--     local buf_name = vim.api.nvim_buf_get_name(current_buf)
--     if buf_name:match('^netrw') or vim.bo.filetype == 'netrw' then
--         vim.cmd('close')
--     else
--         vim.cmd('Lexplore')
--     end
-- end, { noremap = true, silent = true })

-- settigns reload
keymapset('n', '<leader>sow', ':source ~/.config/nvim/init.lua<CR>', opts)
keymapset('n', '<leader>sof', ':luafile %<CR>', opts) -- reloads the current Lua file

keymapset('i', '<leader>"', ':<CR>', opts)

-- cycle through collour schemes
keymapset('n', '<leader>nn', function() cycle_colorschemes(1) end, opts)
keymapset('n', '<leader>NN', function() cycle_colorschemes(-1) end, opts)

-- save without format
keymapset('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

keymapset('n', 'x','"_x', opts)
keymapset('n', 'd','"_d', opts)

keymapset('n', '<C-d>', '<C-d>zz', opts)
keymapset('n', '<C-u>', '<C-u>zz', opts)

--center on find 
keymapset('n', 'n', 'nzzzv' , opts)
keymapset('n', 'N', 'Nzzzv', opts)

-- resize splits using arrow keys
keymapset('n', '<Up>', ':resize +2<CR>', opts)
keymapset('n', '<Down>', ':resize -2<CR>', opts)
keymapset('n', '<Left>', ':vertical resize +2<CR>', opts)
keymapset('n', '<Right>', ':vertical resize -2<CR>', opts)

-- jumping between splits
keymapset('n', '<C-h>', ':wincmd h<CR>', opts)
keymapset('n', '<C-j>', ':wincmd j<CR>', opts)
keymapset('n', '<C-k>', ':wincmd k<CR>', opts)
keymapset('n', '<C-l>', ':wincmd l<CR>', opts)

-- toggle line wrap
keymapset('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- stay in indent mode
keymapset('v', '<', '<gv', opts)
keymapset('v', '>', '>gv', opts)

keymapset('v', 'p', '"_dP', opts)

-- diagnostic keymaps
keymapset('n', '[d', vim.diagnostic.goto_prev, opts)
keymapset('n', ']d', vim.diagnostic.goto_next, opts)
keymapset('n', '<leader>d', vim.diagnostic.open_float, opts)
keymapset('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- window split keymaps
-- keymapset('n', '<C-s>', ':wincmd s<CR>', opts)
-- keymapset('n', '<C-v>', ':wincmd v<CR>', opts)
