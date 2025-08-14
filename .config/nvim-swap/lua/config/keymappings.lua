local wk= require("which-key")
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local vimmap = vim.keymap.set
-- Keymap without Which-Key
-- vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', { noremap = true, silent = true })
-- Indenting
vimmap("v", "<", "<gv", { silent = true, noremap = true })
vimmap("v", ">", ">gv", { silent = true, noremap = true })

wk.add(
  {
    -- file editing
    {
      name = "file",
      { "JJ", "<Esc>", desc="Escape", mode={"i","v"} },
      { "<leader>ww", "<cmd>w<cr>", desc="Save file" },
      { "<leader>wq", "<cmd>wq<cr>", desc="Save and quit file" },
      { "<leader>qq", "<cmd>q!<cr>", desc="Quit file(force)" },
    },

    -- buffer navigation
    {  
      name = "buffer",
      mode = { "n" }, 
      { "<leader>bn", "<cmd>bNext<cr>", desc="Next buffer" },
      { "<leader>bd", "<cmd>bdelete<cr>", desc="Delete buffer" },
    },

    -- nvim tree
    {
      name = "explore",
      mode = {"n","v","i"},
      { "<leader>ee", "<cmd>NvimTreeToggle<cr>", desc="Toggle nvim tree" },
      { "<leader>ef", "<cmd>NvimTreeFocus<cr>", desc="Change focus to nvim tree" },
      { "<leader>eq", "<cmd>NvimTreeClose<cr>", desc="Close nvim tree" },
    },

    -- window management
    { 
      name = "window",
      mode = { "n" },
      { "<leader>sv", "<cmd>vsplit<cr>", desc="Split vertically" },
      { "<leader>sh", "<cmd>split<cr>", desc="Split horizontally" },
    },

    -- telescope management
    {
      name = "telescope",
      { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Show buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
    },

    -- Comment line
    {
      name = "comment",
      { "<C-/>","gcc", desc="Toggle comment" }
    }
  }
)

