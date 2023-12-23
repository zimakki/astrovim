return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.wildfire-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.pack.lua" },
  -- TODO: tailwindcss is working well in tsx files but does not work as well in ex and heex files
  -- formatting the tailwindcss classes in ex and heex files is not working
  -- tailwindcss lsp is not showing up in ex and heex files
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.search.sad-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.split-and-window.windows-nvim" },
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
}
