-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- mappings seen under group name "Buffer"
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- 🔭 Telescope
    ["<leader>bb"] = { ":Telescope buffers<cr>", desc = "🔭 Buffers" },
    ["<leader>ss"] = { ":Telescope current_buffer_fuzzy_find<cr>", desc = "🔭 Search Buffer" },
    ["<leader>sh"] = { ":Telescope resume<cr>", desc = "🔭Telescope History" },
    ["<leader>st"] = { ":TodoTelescope<cr>", desc = "🔭 Telescope todo's" },
    ["<leader>sc"] = { ":Telescope command_history<CR>", desc = "🔭 Telescope command_history" },

    ["H"] = { ":bp<cr>", desc = "<<< buffer" },
    ["L"] = { ":bn<cr>", desc = ">>> buffer" },

    -- 🧪 testing
    ["<leader>tt"] = { ":wa<cr>:Neotest run<cr>", desc = "🧪 run tests" },
    ["<leader>tT"] = { ":Neotest summary<cr>", desc = "🧪 open tests summary" },
    ["<leader>tr"] = { ":wa<cr>:Neotest run last<cr>", desc = "🧪 rerun last test" },
    ["<leader>to"] = { ":Neotest output<cr>", desc = "🧪 open test output" },
    ["<leader>tp"] = { ":Neotest output-panel<cr>", desc = "🧪 open test panel" },
    ["<leader>td"] = { ":wa<cr>:TestNearest<cr>", desc = "🧪 🐞 debug nearest test" },

    ["<leader>sw"] = { ":Sad<CR>", desc = "🔃 find and replace" },

    ["<C-e>"] = { "$", desc = "got the end of the line" },
    ["<C-a>"] = { "0", desc = "got the start of the line" },
    ["yY"] = { "ggVG", desc = "select AAAALLLLLLLLLL" },
    ["<C-p>"] = { "@qn", desc = "🏃💨 rrruuuunnnn the macro and go to the next search term!!" },

    ["<leader>aa"] = { ":ChatGPT<cr>", desc = "🧠 💬 ChatGPT" },
    ["gj"] = { ":lua require('illuminate').goto_next_reference(wrap)<CR>", desc = "🏃💡 Illuminate Next" },
    ["gk"] = { ":lua require('illuminate').goto_prev_reference(wrap)<CR>", desc = "🏃💡 Illuminate Prev" },
    ["gf"] = { "gF", desc = "📁 Better gf! you want to go to the line number if it can find it" },
  },
  i = {
    ["<C-e>"] = { "<esc>A", desc = "▶ got the end of the line" },
    ["<C-a>"] = { "<esc>I", desc = "◀ got the start of the line" },
    ["<C-p>"] = { "|>", desc = "insert a |>" },
    ["<C-j>"] = { "<%=", desc = "insert a <%=" },
    ["<C-k>"] = { "%>", desc = "insert a %>" },
  },
  v = {
    ["<C-e>"] = { "$", desc = "▶ got the end of the line" },
    ["<C-a>"] = { "0", desc = "◀ got the start of the line" },
    ["<leader>ai"] = { ":ChatGPTEditWithInstructions<cr>", desc = "💬 ChatGPTEditWithInstructions" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
