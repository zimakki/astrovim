local utils = require "astronvim.utils"
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "css")
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "tailwindcss", "cssls" })

      local lspconfig = require "lspconfig"
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      lspconfig.tailwindcss.setup {
        capabilities = capabilities,
        filetypes = { "html", "elixir", "eelixir", "heex" },
        init_options = {
          userLanguages = {
            elixir = "html-eex",
            eelixir = "html-eex",
            heex = "html-eex",
          },
        },
        settings = {
          tailwindCSS = {
            validate = true,
            rootFontSize = 16,
            showPixelEquivalents = true,
            suggestions = true,
            inspectPort = 3000,
            lint = {
              cssConflict = "warning",
              invalidApply = "error",
              invalidConfigPath = "error",
              invalidScreen = "error",
              invalidVariant = "error",
              invalidTailwindDirective = "error",
              recommendedVariantOrder = "warning",
            },
            hovers = true,
            includeLanguages = {
              heex = "html-eex",
              elixir = "html-eex",
              eelixir = "html-eex",
            },
            files = {
              exclude = {},
              "tailwind.config.js",
              "tailwind.config.cjs",
              "tailwind.config.ts",
              "tailwind.config.tsx",
              "tailwind.config.jsx",
              "tailwind.config.json",
            },
            emmetCompletions = true,
            colorDecorators = true,
            codeActions = true,
            classAttributes = {
              "class",
              "className",
              "class-names",
              "ng-class",
              "tw",
            },
            experimental = {
              configFile = "tailwind.config.js",
              classRegex = {
                'class[:]\\s*"([^"]*)"',
              },
            },
          },
        },
      }

      lspconfig.emmet_ls.setup {
        capabilities = capabilities,
        filetypes = { "html", "css", "elixir", "eelixir", "heex" },
      }
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "prettierd" }) end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "js-everts/cmp-tailwind-colors", opts = {} },
    },
    opts = function(_, opts)
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        if item.kind == "Color" then
          item = require("cmp-tailwind-colors").format(entry, item)
          if item.kind == "Color" then return format_kinds(entry, item) end
          return item
        end
        return format_kinds(entry, item)
      end
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        names = true,
        tailwind = true,
      },
    },
  },
}
