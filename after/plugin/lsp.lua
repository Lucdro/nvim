local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lua_opts = lsp_zero.nvim_lua_ls()
--require('lspconfig').lua_ls.setup(lua_opts)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	  'rust_analyzer',
	  'tsserver',
	  'eslint',
	  'lua_ls',
	  'vimls',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
