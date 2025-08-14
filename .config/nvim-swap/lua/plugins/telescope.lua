return {
  {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    -- main dependency
    "nvim-lua/plenary.nvim",
    -- other dependencies
    "BurntSushi/ripgrep",
    "nvim-telescope/telescope-fzf-native.nvim",
    -- optional dependencies
    "sharkdp/fd",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  }, 
  init = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i =  {}
        },
      },
      pickers = {
        find_files = {
--          theme = "dropdown",
          previewer = true,
          hidden = true,
        },
      },
    })
  end
}
}
