-- local M = {
--   "williamboman/mason.nvim",
-- }
-- function M.config()
--   require("mason").setup{}
-- end

local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}


function M.config()
  local servers = {
   "lua_ls",
   "cssls",
   "html",
   "ts_ls",
   "marksman",
   "eslint",
   "bashls",
   "jsonls",
   "yamlls",
 }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }
end

return M
