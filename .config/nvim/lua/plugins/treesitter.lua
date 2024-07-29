return   {
  "nvim-treesitter/nvim-treesitter",
  config = function(_, opts)
    local installer = require('nvim-treesitter.install')
    installer.prefer_git = true
    installer.compilers = { 'gcc-14' }
  end,
}
