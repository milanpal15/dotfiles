local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {"williamboman/mason.nvim"},
}

function M.config()
  require("nvim-treesitter.configs").setup {
  }
end

return M
