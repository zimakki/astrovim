-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<leader>bb"] = { ":Telescope buffers<cr>", desc = " Buffers" },
    ["<leader>sw"] = { ":Telescope current_buffer_fuzzy_find<cr>", desc = " Search Buffer" },
    ["<leader>sh"] = { ":Telescope resume<cr>", desc = " Telescope History" },
    ["<leader>st"] = { ":TodoTelescope<cr>", desc = " Telescope todo's" },
    ["H"] = { ":bp<cr>", desc = "<<< buffer" },
    ["L"] = { ":bn<cr>", desc = ">>> buffer" },
    ["<leader>tt"] = { ":Neotest run<cr>", desc = "run tests" },
    ["<leader>tr"] = { ":Neotest run last<cr>", desc = "rerun last test" },
    ["<leader>to"] = { ":Neotest output<cr>", desc = "rerun last test" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
