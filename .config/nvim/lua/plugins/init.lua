return {
  "nvim-tree/nvim-tree.lua",
  "christoomey/vim-tmux-navigator",
  { 'lotabout/skim', run = ':call skim#install()' },
  'jremmen/vim-ripgrep',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'mhinz/vim-mix-format',
  'stephpy/vim-yaml',
  'pedrohdz/vim-yaml-folds',
  'shaunsingh/nord.nvim',
  'sainnhe/sonokai',
  'phanviet/vim-monokai-pro',
  'tomasr/molokai',
  'ap/vim-css-color',
  'metakirby5/codi.vim',
  'vim-test/vim-test',
  --  'vim-airline/vim-airline',
  --  'vim-airline/vim-airline-themes',
  -- 'terryma/vim-multiple-cursors',
  'vimwiki/vimwiki',
  'honza/vim-snippets',
  'marko-cerovac/material.nvim',
  'wellle/tmux-complete.vim',
  'jreybert/vimagit',
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}
