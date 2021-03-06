local mapper = function(mode, key, result)
  vim.fn.nvim_buf_set_keymap(0, mode, key, result, { noremap = true, silent = true })
end

local custom_attach = function(client)
  require'completion'.on_attach(client)
  require'diagnostic'.on_attach(client)

  mapper('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
  mapper('n', '<leader>K', '<cmd>lua vim.lsp.buf.hover()<CR>')

  mapper('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  mapper('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
end

require'nvim_lsp'.tsserver.setup { on_attach=custom_attach }

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}

