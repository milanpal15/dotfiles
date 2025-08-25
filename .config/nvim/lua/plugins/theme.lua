return {
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    contrast = true,
    borders = false,
    disable_background = false,
    italic = false,
    uniform_diff_background = true,
    bold = false,
  },
  config = function(_, opts)
    -- Set initial Nord options
    vim.g.nord_contrast = opts.contrast
    vim.g.nord_borders = opts.borders
    vim.g.nord_disable_background = opts.disable_background
    vim.g.nord_italic = opts.italic
    vim.g.nord_uniform_diff_background = opts.uniform_diff_background
    vim.g.nord_bold = opts.bold

    -- Apply theme
    require('nord').set()

    -- Create a variable to track the background state
    local background_disabled = opts.disable_background

    -- Function to toggle background
    local function toggle_transparency()
      background_disabled = not background_disabled
      vim.g.nord_disable_background = background_disabled
      require('nord').set()  -- Re-apply theme settings
    end

    -- Set keymap
    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}

