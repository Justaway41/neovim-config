-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>x", function()
    Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- Detect if the current OS is macOS
-- local is_mac = vim.loop.os_uname().sysname == "Darwin"
--
-- -- Window resizing mappings for macOS
-- if is_mac then
--     local mappings = {
--         { mode = "n", keys = "<leader>Up", command = ":resize +2<CR>", desc = "Increase window height" },
--         { mode = "n", keys = "<ledaer>Down", command = ":resize -2<CR>", desc = "Decrease window height" },
--         { mode = "n", keys = "<leader>Left", command = ":vertical resize -2<CR>", desc = "Decrease window width" },
--         { mode = "n", keys = "<leader>Right", command = ":vertical resize +2<CR>", desc = "Increase window width" },
--     }
--
--     for _, map in ipairs(mappings) do
--         vim.keymap.set(map.mode, map.keys, map.command, { noremap = true, silent = true, desc = map.desc })
--     end
--
--     print("macOS detected: Custom <Space> mappings for window resizing applied.") -- Debugging message
-- end
