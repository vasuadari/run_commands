return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig');

    lspconfig['nextls'].setup({
      cmd = { 'nextls', '--stdio' },
      init_options = {
        extensions = {
          credo = { enable = true }
        },
        experimental = {
          completions = { enable = true }
        }
      },
    })

    lspconfig.elixirls.setup {
      cmd = { '/Users/vasu/.elixir-ls/release/language_server.sh' };
    }
  end
}
