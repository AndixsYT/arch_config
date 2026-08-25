vim.pack.add({ 
gh('marko-cerovac/material.nvim'),
gh('tamton-aquib/staline.nvim'),
gh('tomiis4/BufferTabs.nvim'),
})

vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.cmd('colorscheme material-deep-ocean')
  end,
})

require('material').setup{
  disable = { background = true, },
}


require('staline').setup{
  mode_colors = {
  n = "#2bbb4f",
  i = "#986fec",
  c = "#e27d60",
  v = "#4799eb",   -- etc..
  },
}

require('buffertabs').setup()
