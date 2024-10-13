-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  nvdash = {
    load_on_startup = true,
  },

  tabufline = {
    enabled = false,
    -- lazyload = false,
    --  more opts
    -- order = { "treeOffset", "buffers", "tabs", "btns", "abc" },
    -- modules = {
    --   -- You can add your custom component
    --   abc = function()
    --     return "hi"
    --   end,
    -- },
  },
}

return M
