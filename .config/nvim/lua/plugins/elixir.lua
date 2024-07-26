return {
  'elixir-tools/elixir-tools.nvim',
  tag = 'stable',
  requires = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('elixir').setup({
      nextls = { enable = false },
      elixirls = {
        enable = true,
        cmd = '/Users/vasu/.elixir-ls/release/language_server.sh',
      },
      projectionist = { enable = true },
    })
  end
}
