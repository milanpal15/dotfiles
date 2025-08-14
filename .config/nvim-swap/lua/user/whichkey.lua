local M = {
  "folke/which-key.nvim",
  dependencies={
    "echasnovski/mini.icons"
  }
}

function M.config()
  local mappings = {
--    { "q","<cmd>confirm q<CR>", desc="Quit" },
--    -- { "h", "<cmd>nohlsearch<CR>", desc="NOHL" },
--    { ";", "<cmd>tabnew | terminal<CR>", desc="Term" },
--    { "v", "<cmd>vsplit<CR>", desc="Split" },
--    { "b", name = "Buffers" },
--    { "d", name = "Debug" },
--    { "f", name = "Find" },
--    { "g", name = "Git" },
--    { "l", name = "LSP" },
--    { "p", name = "Plugins" },
--    { "t", name = "Test" },
--    { "a",
--      name = "Tab",
--     { "n", "<cmd>$tabnew<cr>", "New Empty Tab" },
--     { "N", "<cmd>tabnew %<cr>", "New Tab" },
--     { "o", "<cmd>tabonly<cr>", "Only" },
--     { "h", "<cmd>-tabmove<cr>", "Move Left" },
--     { "l", "<cmd>+tabmove<cr>", "Move Right" },
 --   },
--    { "T", { name = "Treesitter" }},
  }

  local wk = require("which-key")
  wk.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    win = {
      border = "rounded",
      position = "bottom",
      padding = { 2, 2, 2, 2 },
    },
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  wk.add(mappings, opts)
end

return M
