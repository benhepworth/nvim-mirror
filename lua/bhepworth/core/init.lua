require("bhepworth.core.options")
require("bhepworth.core.keymaps")

--vim.api.nvim_create_autocmd("BufWritePost", {
--  pattern = "*.yaml",
--  callback = function()
--    vim.cmd([[%s/\(\S\)\s*#/\1  #/g]])
--    vim.cmd("write")
--  end,
--})
