return {
  "preservim/nerdtree",
  'xuyuanp/nerdtree-git-plugin',
  'christoomey/vim-tmux-navigator',
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({})
    end
  },
  { 'lotabout/skim', run = ':call skim#install()' },
  'jremmen/vim-ripgrep',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'tpope/vim-commentary',
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
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',
  'terryma/vim-multiple-cursors',
  'vimwiki/vimwiki',
  'prabirshrestha/vim-lsp',
  'mattn/vim-lsp-settings',
  'prabirshrestha/asyncomplete.vim',
  'prabirshrestha/asyncomplete-lsp.vim',
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
  {
    "nvim-treesitter/nvim-treesitter",
    config = function(_, opts)
      require('nvim-treesitter.install').prefer_git = true
    end,
  },
  'honza/vim-snippets',
  'marko-cerovac/material.nvim',
  'wellle/tmux-complete.vim',
  {
    "vasuadari/rest.nvim",
    rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
    config = function()
      require("rest-nvim").setup({
        skip_ssl_verification = true,
        -- Jump to request line on run
        env_file = '.env',
        custom_dynamic_variables = {},
        env_pattern = "\\.env$",
        env_edit_command = "tabedit",
        highlight = {
          enable = true,
          timeout = 150,
        },
        -- Encode URL before making request
        encode_url = true,
        result = {
          behavior = {
            decode_url = true,
            show_info = {
              url = true,
              headers = true,
              http_info = true,
              curl_command = true,
            },
            statistics = {
              enable = true,
              ---@see https://curl.se/libcurl/c/curl_easy_getinfo.html
              stats = {
                { "total_time", title = "Time taken:" },
                { "size_download_t", title = "Download size:" },
              },
            },
            formatters = {
              json = "jq",
              html = function(body)
                if vim.fn.executable("tidy") == 0 then
                  return body, { found = false, name = "tidy" }
                end
                local fmt_body = vim.fn.system({
                  "tidy",
                  "-i",
                  "-q",
                  "--tidy-mark",      "no",
                  "--show-body-only", "auto",
                  "--show-errors",    "0",
                  "--show-warnings",  "0",
                  "-",
                }, body):gsub("\n$", "")

                return fmt_body, { found = true, name = "tidy" }
              end,
            },
          },
          split = {
            horizontal = false,
            in_place = false,
            stay_in_current_window_after_split = false
          },
        },
      })
    end
  },
  'jreybert/vimagit',
  {
    "elixir-tools/elixir-tools.nvim",
    tag = "stable",
    requires = { "nvim-lua/plenary.nvim" }
  },
}

