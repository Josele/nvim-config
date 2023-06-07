return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    --"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
    require('neo-tree').setup({

      close_if_last_window = true,
      enable_git_status =false,
      enable_diagnostics = false,
      filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_hidden = false,
        },
        follow_current_file = true,
        use_libuv_file_watcher = true,
      },
      default_component_configs = {
        icon = {
            folder_closed = "►",
            folder_open = "▼",
            folder_empty = " ",
            default = "*",
        },
        git_status = {
          symbols = false
        }
      }
      --buffers = {
      --  follow_current_file = true,-- This will find and focus the file in the active buffer every
                                  -- time the current file is changed while the tree is open.
      --},
    })
  end,
}
