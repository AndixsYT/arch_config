vim.pack.add({
gh("saghen/blink.lib"),
gh("saghen/blink.cmp")
})

local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup()
