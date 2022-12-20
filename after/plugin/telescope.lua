local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, {})
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {})
-- vim.keymap.set('n', '<leader>fr', builtin.registers, {})
--
require('telescope').setup {
    defaults = {
        layout_config = {
            vertical = { width = 0.8 }
            -- other layout configuration here
        },
        -- other defaults configuration here
    },
    -- other configuration values here
}
