gh = function(x)
return "https://github.com/" .. x
end

require("plugins.blink")
require("plugins.file_explorer")

vim.pack.add({
gh("nvim-mini/mini.pairs"), 			-- auto pairs ()
gh("neovim/nvim-lspconfig"),			-- lsp configs
gh("tpope/vim-commentary"), 			-- quick comment
gh("romus204/tree-sitter-manager.nvim"),
gh('stevearc/quicker.nvim'),			-- Enhanced quickfix/loclist
gh('lewis6991/gitsigns.nvim'),			-- some github integration
})


require('mini.pairs').setup()
require("tree-sitter-manager").setup()
require('quicker').setup()
require('gitsigns').setup()
