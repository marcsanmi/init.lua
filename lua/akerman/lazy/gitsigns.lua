return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            current_line_blame = false,
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                vim.keymap.set({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset Hunk' })
                vim.keymap.set('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'Undo Stage Hunk' })
                vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { desc = 'Preview Hunk' })
                vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end,
                    { desc = 'Blame Line Full' })
                vim.keymap.set('n', '<leader>tb', gs.toggle_current_line_blame, { desc = 'Toggle Current Line Blame' })
                vim.keymap.set('n', '<leader>hd', gs.diffthis, { desc = 'Diff This' })
                vim.keymap.set('n', '<leader>hD', function() gs.diffthis('~') end, { desc = 'Diff This ~' })
            end
        });
    end
}

