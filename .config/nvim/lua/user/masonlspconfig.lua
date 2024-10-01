local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "mason.nvim" },
}

function M.config()
  require("mason-lspconfig").setup{}
  require("mason-lspconfig").setup_handlers{
    function (server_name)
      require("lspconfig")[server_name].setup{}
    end
  }
end

return M
