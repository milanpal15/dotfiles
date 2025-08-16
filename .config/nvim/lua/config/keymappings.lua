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

--explore mappings
--keymapset('n','<leader>ee', ':Explore<CR>', opts)
keymapset('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
keymapset('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })
--keymapset('n', '<leader>ee', ':Lexplore<CR>', { noremap = true, silent = true })
keymapset('n', '<leader>e', function()
    local current_buf = vim.api.nvim_get_current_buf()
    local buf_name = vim.api.nvim_buf_get_name(current_buf)
    if buf_name:match('^netrw') or vim.bo.filetype == 'netrw' then
        vim.cmd('close')
    else
        vim.cmd('Lexplore')
    end
end, { noremap = true, silent = true })

-- settigns reload
keymapset('n', '<leader>sow', ':source ~/.config/nvim/init.lua<CR>', opts)
keymapset('n', '<leader>sof', ':luafile %<CR>', opts) -- reloads the current Lua file

keymapset('i', '<leader>"', ':<CR>', opts)



keymapset('n', '<leader>nn', function() cycle_colorschemes(1) end, opts)
keymapset('n', '<leader>NN', function() cycle_colorschemes(-1) end, opts)
