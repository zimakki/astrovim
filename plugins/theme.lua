return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},

  require("notify").setup {
    background_colour = "NotifyBackground",
    -- TODO: work out how to back the baground transparent
    -- the below has no effect
    -- background_alpha = 0.8,
    -- background_opacity = 0.8,
    fps = 30,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "✎",
      WARN = "",
    },
    level = 2,
    minimum_width = 50,
    render = "default",
    stages = "fade_in_slide_out",
    timeout = 1000,
    top_down = true,
  },
}
