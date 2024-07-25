return {
  "nomnivore/ollama.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require('ollama').setup {
      model = 'llama3.1'
    }
  end,
}
