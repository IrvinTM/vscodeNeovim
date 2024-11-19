 -- <leader> key
vim.g.mapleader = ' '

-- Pegar sobre sin modificar el clipboard
vim.keymap.set('v', 'p', 'P')

-- Quitar selecion despues de buscar con /
vim.keymap.set('v', 'p', 'P')


-- Ignorar folded regions
--down
vim.cmd('nmap j gj')
--up
vim.cmd('nmap k gk')

-- Clipboard con el sistema
vim.opt.clipboard = 'unnamedplus'

-- doest work in vscode 
--mantener lineas abajo al scrollear
vim.opt.scrolloff = 10

--highlight when yank 
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})