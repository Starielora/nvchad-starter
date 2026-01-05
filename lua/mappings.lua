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

-- Poor man's vs and vscode emulation
map({"n", "i"}, "<F12>", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition" })
map({"n", "i"}, "<F11>", "<cmd>lua vim.lsp.buf.declaration()<cr>", { desc = "Go to declaration" })
map({"n", "i"}, "<A-Left>", "<cmd>Telescope jumplist<cr>", { desc = "Telescope jumplist" });
map({"n"}, "<leader><F12>", ":Telescope lsp_references<cr>", { desc = "Telescope references" })
map({"n"}, "<F4>", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Telescope document symbols" })
map({"n"}, "<leader><F4>", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "Telescope workspace symbols" })

map({"n"}, "<F1>", "<cmd>Telescope<cr>", { desc = "Telescope menu" })
map({"n"}, "<C-p>", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
map({"n"}, "<F2>", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
map({"n"}, "<F3>", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live grep" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
