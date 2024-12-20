-- list of my keymap
local keymap = vim.keymap

-- no arrow key allowed
keymap.set({ 'n', 'i' }, '<up>', '<nop>')
keymap.set({ 'n', 'i' }, '<down>', '<nop>')
keymap.set({ 'n', 'i' }, '<left>', '<nop>')
keymap.set({ 'n', 'i' }, '<right>', '<nop>')

-- general keymap
keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'Write' })
keymap.set('n', '<leader>r', '<cmd>b#<cr>', { desc = 'Go to previous buffer' })
keymap.set('n', '<leader>d', '<cmd>bd<cr>', { desc = 'Close curren buffer' })
keymap.set('n', '<leader>c', '<cmd>qa!<cr>', { desc = 'Force quit' })
keymap.set('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit' })

-- Movement
-- Visual linewise up and down by default (and use gj gk to go quicker)
keymap.set({ 'n', 'v' }, 'j', 'gj')
keymap.set({ 'n', 'v' }, 'k', 'gk')
keymap.set({ 'n', 'v' }, 'gj', '5j')
keymap.set({ 'n', 'v' }, 'gk', '5k')
-- When jump to next match also center screen
-- Note: Use :norm! to make it count as one command. (i.e. for i_CTRL-o)
keymap.set({ 'n', 'v' }, 'n', '<cmd>norm! nzz<cr>', { silent = true })
keymap.set({ 'n', 'v' }, 'N', '<cmd>norm! Nzz<cr>', { silent = true })
-- Same when moving up and down
keymap.set({ 'n', 'v' }, '<C-u>', '<C-u>zz')
keymap.set({ 'n', 'v' }, '<C-d>', '<C-d>zz')
keymap.set({ 'n', 'v' }, '<C-b>', '<C-b>zz')
keymap.set({ 'n', 'v' }, '<C-f>', '<C-f>zz')

-- Visual mode
-- Remap H and L (top, bottom of screen to left and right end of line)
keymap.set({ 'n', 'v' }, 'H', '^')
keymap.set('n', 'L', '$')
keymap.set('v', 'L', 'g_')
-- Don't cancel visual select when shifting
keymap.set('x', '<', '<gv')
keymap.set('x', '>', '>gv')
keymap.set('x', '.', '<cmd>norm.<cr>')
-- Move visual block
keymap.set('v', 'J', "<cmd>m '>+1<cr>gv=gv")
keymap.set('v', 'K', "<cmd>m '<-2<cr>gv=gv")

-- Copy and paste
keymap.set('n', 'Y', 'y$')
-- Don't yank to default register when changing something
keymap.set({ 'n', 'x' }, 'c', '"xc')
-- After block yank and paste, move cursor to the end of operated text and don't override register
keymap.set('v', 'y', 'y`]')
keymap.set('v', 'p', '"_dP`]')
keymap.set('n', 'p', 'p`]')
keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
keymap.set('n', '<leader>yy', '"+yy')
keymap.set('n', '<leader>p', '"+p')

-- split window
keymap.set('n', '<C-w>l', '<C-w><C-l>', { desc = 'Move to right window' })
keymap.set('n', '<C-w>h', '<C-w><C-h>', { desc = 'Move to left window' })
keymap.set('n', '<C-w>k', '<C-w><C-k>', { desc = 'Move to top window' })
keymap.set('n', '<C-w>j', '<C-w><C-j>', { desc = 'Move to bottom window' })

-- terminal
keymap.set('t', '<ESC>', '<C-\\><C-n>')
keymap.set('t', '<leader><ESC>', '<ESC>')
