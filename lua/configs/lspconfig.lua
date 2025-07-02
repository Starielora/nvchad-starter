require("nvchad.configs.lspconfig").defaults()

local servers = { "rust_analyzer", "glsl_analyzer", "clangd" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
