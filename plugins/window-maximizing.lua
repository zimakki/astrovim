local prefix = "<leader>m"
return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim",
  },
  opts = {},
  keys = {
    { prefix, desc = "🪟" },
    { prefix .. "m", "<cmd>WindowsMaximize<cr>", desc = "[M]aximize>" },
    { prefix .. "e", "<cmd>WindowsEqualize<cr>", desc = "[E]qualize<cr>" },
    { prefix .. "t", "<cmd>WindowsToggleAutowidth<cr>", desc = "[T]oggle Auto width" },
  },
  cmd = {
    "WindowsMaximize",
    "WindowsMaximizeVertically",
    "WindowsMaximizeHorizontally",
    "WindowsEqualize",
    "WindowsEnableAutowidth",
    "WindowsDisableAutowidth",
    "WindowsToggleAutowidth",
  },
  init = function()
    vim.o.winwidth = 1
    vim.o.winminwidth = 1
    vim.o.equalalways = false
  end,
}
