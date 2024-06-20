return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- import nvim-autopairs
    -- local cond = require("nvim-autopairs.conds")
    -- local Rule = require("nvim-autopairs.rule")
    local autopairs = require("nvim-autopairs")

    -- you can exclude filetypes
    -- autopairs.add_rule(Rule("$$", "$$"):with_pair(cond.not_filetypes({ "markdown" })))

    -- configure autopairs
    autopairs.setup({
      -- disable_filetype = { "TelescopePrompt", "markdown" },
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { "string" }, -- don't add pairs in lua string treesitter nodes
        javascript = { "template_string" }, -- don't add pairs in javscript template_string treesitter nodes
        java = false, -- don't check treesitter on java
      },
    })

    -- import nvim-autopairs completion functionality
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    -- import nvim-cmp plugin (completions plugin)
    local cmp = require("cmp")

    -- make autopairs and completion work together
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
