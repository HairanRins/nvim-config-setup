return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'ibhagwan/fzf-lua' },
  config = function()
    require('dashboard').setup({
      theme = 'doom',
      config = {
      header = {
        [[ ]],
        [[ ]],
        [[               ▄▄██████████▄▄             ]],
        [[               ▀▀▀   ██   ▀▀▀             ]],
        [[       ▄██▄   ▄▄████████████▄▄   ▄██▄     ]],
        [[     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ]],
        [[    ████▄ ▄███▀              ▀███▄ ▄████  ]],
        [[   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ]],
        [[   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ]],
        [[    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ]],
        [[       ███           ▀▀           ███     ]],
        [[       ██████████████████████████████     ]],
        [[   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ]],
        [[   ███  ███ ███   ██    ██   ███▄███  ███ ]],
        [[   ▀██▄████████   ██    ██   ████████▄██▀ ]],
        [[    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ]],
        [[     ▀███▄  ▀███████    ███████▀  ▄███▀   ]],
        [[       ▀███    ▀▀██████████▀▀▀   ███▀     ]],
        [[         ▀    ▄▄▄    ██    ▄▄▄    ▀       ]],
        [[               ▀████████████▀             ]],
        [[ ]],
        [[ ]]
      },
        center = {
          { icon = ' ', desc = 'New file         ', action = 'ene | startinsert', key = 'n' },
          { icon = '󰈞 ', desc = 'Find file        ', action = 'FzfLua files', key = 'f' },
          { icon = '󰄉 ', desc = 'Recent files     ', action = 'FzfLua oldfiles', key = 'r' },
          { icon = '󰊄 ', desc = 'Find text        ', action = 'FzfLua live_grep', key = 't' },
          { icon = ' ', desc = 'Neovim config    ', action = 'edit $MYVIMRC', key = 'c' },
          { icon = '󰒲 ', desc = 'Lazy             ', action = 'Lazy', key = 'l' },
          { icon = '󰅚 ', desc = 'Quit NVIM        ', action = 'qa', key = 'q' },
        },
        footer = function()
          local stats = require("lazy").stats()
          local date = os.date("󰃭 %d-%m-%Y  󱑒 %H:%M:%S")
          return { 
            date,
            "󰚥 Plugins: " .. stats.count .. " loaded",
            "󰓗 Neovim v" .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch
          }
        end,
      },
    })
    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#89b4fa" })
  end,
}