local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' }
--  dependencies = {
--    "AndreM222/copilot-lualine",
--  },
}
function M.config()
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'auto',
  --  component_separators = { left = '', right = ''},
  --  section_separators = { left = '', right = ''},
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },

      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
  --  ignore_focus = {},
      ignore_focus = { "NvimTree" },
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'searchcount', 'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location', "os.date('%a')", 'data', "require'lsp-status'.status()"}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = { "quickfix", "man", "fugitive" },
  --  extensions = {}
  }
end

return M
