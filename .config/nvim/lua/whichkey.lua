local wk = require("which-key")
local rest = require("rest-nvim")

wk.add({
  { "<C-n>", ":NERDTreeToggle<CR>" },
  { "<leader>r", ":NERDTreeFind<CR>" },
  { "<leader>l", ":Lazy<CR>" },
  { "<leader>f/", ":lua require('fzf-lua').files()<CR>" },
  { "<leader>g/", ":lua require('fzf-lua').live_grep()<CR>" },
  { "<leader>b/", ":BLines<CR>" },
  { "<leader>t/", ":Tags<CR>" },
  { "<leader>:/", ":History:<CR>" },
  { "<leader>r/", ":Rg:<CR>" },
  { "<leader>m", ":Magit<CR>" },
  { "<leader>h", ":Rest run<CR>" },
  { "gb", ":Git blame<CR>" },
  { "mf", ":MixFormat<CR>" },
  { "mt", ":!mix test %<CR>" },
  { "<leader>g", ":Rg" },

  -- vim-test
  { "<silent> <leader>t", ":TestNearest<CR>" },
  { "<silent> <leader>T", ":TestFile<CR>" },
  { "<silent> <leader>a", ":TestSuite<CR>" },
  { "<silent> <leader>tl", ":TestLast<CR>" },
  { "<silent> <leader>tg", ":TestVisit<CR>" },
})
