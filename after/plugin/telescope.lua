require('telescope')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
-- vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
-- vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
-- vim.keymap.set('n', '<leader>fm', builtin.marks, {})
-- vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {})
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
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
        }
    }
    -- other configuration values here
}

require("telescope").load_extension("ui-select")
