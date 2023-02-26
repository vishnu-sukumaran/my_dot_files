-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map("n", "<Leader>t", ":NvimTreeFindFileToggle<CR>")
map("n", "<Leader><Space>", ":nohl<CR>")                -- clears search highlight

-- jumping b/w buffers
map("n", "<Leader>s", ":bn<CR>")                            -- Next buffer
map("n", "<Leader>a", ":bp<CR>")                            -- Prev buffer
map("n", "<Leader>d", ":ls<CR>:bd ")                        -- delete buffer
map("n", "<Leader>o", "<plug>(openbrowser-open)")      -- open url
map("v", "<Leader>o", "<plug>(openbrowser-open)")      -- open url
map("n", "<Leader>x", "<plug>(openbrowser-search)")    -- open search
map("v", "<Leader>x", "<plug>(openbrowser-search)")    -- open search


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
