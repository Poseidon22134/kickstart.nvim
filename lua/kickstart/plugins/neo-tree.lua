-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        position = 'float',
        popup = {
          size = {
            height = '80%',
            width = '80%',
          },
          position = '50%', -- center of screen
          border = 'rounded', -- "single", "double", "rounded", "shadow"
        },
        mappings = {
          ['\\'] = 'close_window',
          ['t'] = 'move_down',
          ['n'] = 'move_up',
        },
      },
    },
  },
}
