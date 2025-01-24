local wk = require("which-key")
local fzf = require("fzf-lua")
local telescope = require("telescope")

wk.add({
  { "<leader>nt",  ":NvimTreeOpen<CR>" },
  { "<leader>nf",  ":NvimTreeFindFile<CR>" },
  { "<leader>l",   ":Lazy<CR>" },
  { "<leader>f/",  function() fzf.files() end },
  { "<leader>g/",  function() fzf.live_grep() end },
  { "<leader>fcs", function() fzf.colorschemes() end },
  { "<leader>fas", function() fzf.awesome_colorschemes() end },
  { "<leader>b/",  ":BLines<CR>" },
  { "<leader>t/",  ":Tags<CR>" },
  { "<leader>:/",  ":History:<CR>" },
  { "<leader>r/",  ":Rg:<CR>" },
  { "<leader>m",   ":Magit<CR>" },
  { "<leader>h",   ":Rest run<CR>" },
  { "gb",          ":Git blame<CR>" },
  { "mf",          ":MixFormat<CR>" },
  { "mt",          ":!mix test %<CR>" },
  { "<leader>g",   ":Rg" },

  -- vim-test
  { "<leader>tt",  ":TestNearest<CR>" },
  { "<leader>tT",  ":TestFile<CR>" },
  { "<leader>ta",  ":TestSuite<CR>" },
  { "<leader>tl",  ":TestLast<CR>" },
  { "<leader>tg",  ":TestVisit<CR>" },
  { "<leader>ngt", ":Neorg journal today<CR>" },
  { "<leader>ts",  function() telescope.extensions.rest.select_env() end }
})
