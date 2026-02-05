return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-f>", -- Raccourci sûr (Ctrl+f) pour accepter l'IA
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      ignore_filetypes = { "bigfile", "snacks_input", "snacks_notif" },
      color = {
        suggestion_color = "#808080",
      },
      disable_inline_completion = false, 
    })
  end,
}