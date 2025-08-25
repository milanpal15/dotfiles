return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      mode = 'buffers', -- set to "tabs" to only show tabpages instead
      themable = true, -- allows highlight groups to be overridden i.e. sets highlights as default
      numbers = 'none', -- | "ordinal" | "buffer_id" | "both"
      close_command = 'Bdelete! %d', -- can be a string | function, see "Mouse actions"
      right_mouse_command = 'Bdelete! %d', -- can be a string | function, see "Mouse actions"
      left_mouse_command = 'buffer %d', -- can be a string | function, see "Mouse actions"
      middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
      buffer_close_icon = '✗', -- or '󰅖', '✕'
      close_icon = '',
      path_components = 1, -- Show only the file name without the directory
      modified_icon = '●',
      left_trunc_marker = '',
      right_trunc_marker = '',
      max_name_length = 30,
      max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
      tab_size = 16,
      diagnostics = false,
      diagnostics_update_in_insert = false,
      color_icons = true,
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      separator_style = { '│', '│' }, -- | "thick" | "thin" | { 'any', 'any' }
      enforce_regular_tabs = true,
      always_show_bufferline = true,
      show_tab_indicators = false,
      indicator = {
        style = 'none', -- 'icon', 'underline', 'none'
      },
      icon_pinned = '󰐃',
      minimum_padding = 1,
      maximum_padding = 5,
      maximum_length = 15,
      sort_by = 'insert_at_end',
    },
    highlights = {
      separator = {
        fg = '#434C5E',
      },
      buffer_selected = {
        bold = true,
        italic = false,
      },
      -- You can override more highlight groups here if needed
    },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)

    -- Keymaps
    local set = vim.keymap.set
    local opts = { noremap = true, silent = true, desc = 'Go to Buffer' }
    set('n', '<Leader>1', ':BufferLineGoToBuffer 1<CR>', opts)
    set('n', '<Leader>2', ':BufferLineGoToBuffer 2<CR>', opts)
    set('n', '<Leader>3', ':BufferLineGoToBuffer 3<CR>', opts)
    set('n', '<Leader>4', ':BufferLineGoToBuffer 4<CR>', opts)
    set('n', '<Leader>5', ':BufferLineGoToBuffer 5<CR>', opts)
    set('n', '<Leader>6', ':BufferLineGoToBuffer 6<CR>', opts)
    set('n', '<Leader>7', ':BufferLineGoToBuffer 7<CR>', opts)
    set('n', '<Leader>8', ':BufferLineGoToBuffer 8<CR>', opts)
    set('n', '<Leader>9', ':BufferLineGoToBuffer 9<CR>', opts)
    set('n', '<Leader>$', ':BufferLineGoToBuffer -1<CR>', opts)

    -- Optional: Cycling through buffers
    set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", opts)
    set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", opts)
  end,
}

