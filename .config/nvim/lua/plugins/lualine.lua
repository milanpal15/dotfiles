-- Set lualine as statusline
return {
  'nvim-lualine/lualine.nvim',
  opts = function()
    -- Custom onedark theme colors
    local colors = {
      blue = '#61afef',
      green = '#98c379',
      purple = '#c678dd',
      cyan = '#56b6c2',
      red1 = '#e06c75',
      red2 = '#be5046',
      yellow = '#e5c07b',
      fg = '#abb2bf',
      bg = '#282c34',
      gray1 = '#828997',
      gray2 = '#2c323c',
      gray3 = '#3e4452',
    }

    local onedark_theme = {
      normal = {
        a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.gray3 },
        c = { fg = colors.fg, bg = colors.gray2 },
      },
      command = { a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' } },
      insert = { a = { fg = colors.bg, bg = colors.blue, gui = 'bold' } },
      visual = { a = { fg = colors.bg, bg = colors.purple, gui = 'bold' } },
      terminal = { a = { fg = colors.bg, bg = colors.cyan, gui = 'bold' } },
      replace = { a = { fg = colors.bg, bg = colors.red1, gui = 'bold' } },
      inactive = {
        a = { fg = colors.gray1, bg = colors.bg, gui = 'bold' },
        b = { fg = colors.gray1, bg = colors.bg },
        c = { fg = colors.gray1, bg = colors.gray2 },
      },
    }

    -- Resolve theme from environment
    local env_var_nvim_theme = os.getenv("NVIM_THEME") or "nord"
    local theme = env_var_nvim_theme == "onedark" and onedark_theme or env_var_nvim_theme

    local mode = {
      'mode',
      fmt = function(str)
        return ' ' .. str
      end,
    }

    local filename = {
      'filename',
      file_status = true, -- show modified/readonly
      path = 0,           -- just the filename
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' },
      cond = hide_in_width,
    }

    return {
      options = {
        icons_enabled = true,
        theme = theme,
        section_separators = { left = ' ', right = ' ' },
        component_separators = { left = ' ', right = ' ' },
        disabled_filetypes = { 'alpha', 'neo-tree', 'Avante' },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { 'branch' },
        lualine_c = { filename },
        lualine_x = {
          diagnostics,
          diff,
          { 'encoding', cond = hide_in_width },
          { 'filetype', cond = hide_in_width },
        },
        lualine_y = { 'location' },
        lualine_z = { 'progress' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive' },
    }
  end,
}

