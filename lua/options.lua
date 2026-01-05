require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.opt.relativenumber = true

-- isnt there a better solution? No idea why glsl_analyzer works only on .glsl files despite having more in config
vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.vert,*.frag,*.comp,*.mesh,*.task" },
  callback = function()
    vim.opt.filetype = "glsl"
  end,
})

-- vim.o.shell = "powershell"
