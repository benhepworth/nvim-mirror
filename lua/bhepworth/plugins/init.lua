return {
    "nvim-lua/plenary.nvim", -- lua functions that many plugins use
    "christoomey/vim-tmux-navigator", -- tmux & split window navigation

    -- Add Copilot:
    {
      "github/copilot.vim",
      -- event = "InsertEnter",  -- Lazy-load on first insert
      config = function()
        -- Optional: disable tab key to avoid conflicts
        vim.g.copilot_no_tab_map = true
  
        -- Example: accept suggestion with <C-J>
        vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      end
    },
}
