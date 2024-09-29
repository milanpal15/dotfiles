local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "c", "vimdoc", "query", "lua", "markdown", "markdown_inline", "bash", "typescript", "javascript", "html", "vim", "scss", "json", "json5" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Leader>ss", 
        node_incremental = "<Leader>si",
        scope_incremental = "<Leader>sc",
        node_decremental = "<Leader>sd",
      },
  },  
  }
end

return M
