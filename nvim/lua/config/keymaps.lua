-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local del = vim.keymap.del

--del("i", "<M-l>")
local M = {}

M.general = {
  n = {
    ["<TAB>"] = { "<cmd>BufferLineCycleNext<CR>", "Next Buffer" },
    ["<S-TAB>"] = { "<cmd>BufferLineCyclePrev<CR>", "Previous Buffer" },
  },
}

M.copilot = {
  i = {
    ["<M-l>"] = { "<cmd>lua require('copilot.suggestion').accept() <CR>", "Testing meta key" },
  },
}

M.docstrings = {
  n = {
    ["<leader>cg"] = { "<cmd>DogeGenerate<CR>", "Generate default docstring" },
  },
}

for _, plugin_table in pairs(M) do
  for mode, mode_table in pairs(plugin_table) do
    for keybind, mapping in pairs(mode_table) do
      vim.keymap.set(mode, keybind, mapping[1], { desc = mapping[2] })
    end
  end
end
