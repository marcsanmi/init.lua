return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            current_line_blame = false,
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                vim.keymap.set('n', '<leader>tb', gs.toggle_current_line_blame, {})
                vim.keymap.set('n', '<leader>hd', gs.diffthis)

            end
        });
    end
}
