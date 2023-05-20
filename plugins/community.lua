return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  -- TODO: try out spectra at some point
  -- { import = "astrocommunity.project.nvim-spectra" },
  -- TODO::work out why I can't jump to edit a file from lazygit - I thought flattn was supposed to fix this
  -- { import = "astrocommunity.terminal-integration.flatten-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
}
