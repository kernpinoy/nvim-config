local builtin = require('telescope.builtin')

require("telescope").load_extension('harpoon')
require('telescope').load_extension('aerial')

-- For navigation
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pp', builtin.diagnostics, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
