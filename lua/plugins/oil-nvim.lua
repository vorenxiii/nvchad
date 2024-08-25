return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    require("oil").setup {
      default_file_explorer = true,
    }
  end,
}
