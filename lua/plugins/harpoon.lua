return { -- List of favorite files/marks per project
  -- https://github.com/ThePrimeagen/harpoon
  "ThePrimeagen/harpoon",
  lazy = false,
  branch = "master",
  event = "VimEnter",
  dependencies = {
    -- https://github.com/nvim-lua/plenary.nvim
    "nvim-lua/plenary.nvim",
  },
  -- opts = {
  --   menu = {
  --     width = 120,
  --   },
  -- },
  config = function()
    local map = vim.keymap.set

    local harpoon_ui = require "harpoon.ui"
    local harpoon_mark = require "harpoon.mark"

    -- Add a file to the harpoon list
    map("n", "<A-a>", harpoon_mark.add_file, { desc = "Add file to Harpoon" })

    -- Toggle Harpoon menu
    map("n", "<A-`>", harpoon_ui.toggle_quick_menu, { desc = "Toggle Harpoon Menu" })

    -- Navigate to specific Harpoon marks using Alt + number
    map("n", "<A-1>", function()
      harpoon_ui.nav_file(1)
    end, { desc = "Go to Harpoon mark 1" })
    map("n", "<A-2>", function()
      harpoon_ui.nav_file(2)
    end, { desc = "Go to Harpoon mark 2" })
    map("n", "<A-3>", function()
      harpoon_ui.nav_file(3)
    end, { desc = "Go to Harpoon mark 3" })
    map("n", "<A-4>", function()
      harpoon_ui.nav_file(4)
    end, { desc = "Go to Harpoon mark 4" })
    map("n", "<A-5>", function()
      harpoon_ui.nav_file(5)
    end, { desc = "Go to Harpoon mark 5" })
  end,
}
