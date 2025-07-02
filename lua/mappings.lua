require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-_>", ":norm gcc<CR>", { desc = "Toggle comment" })
map("v", "<C-_>", ":norm gcc<CR>", { desc = "Toggle comment" }) -- TODO fix to not look like single line comment and don't exit visual mode

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      row = 0.15,
      col = 0.05,
      width = 0.9,
      height = 0.6,
    },
  }
end, { desc = "terminal toggle floating term" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
