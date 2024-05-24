return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.6",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = { '.git/', '.idea/', '.vscode/', '.cargo/' }, -- Exclude specified directories
                mappings = {
                    i = {                                                            -- 'i' for insert mode mappings within Telescope prompts
                        ['<C-j>'] = 'move_selection_next',                           -- Move selection down
                        ['<C-k>'] = 'move_selection_previous',                       -- Move selection up
                        ['<Tab>'] = 'move_selection_next',                           -- Move selection down with Tab
                    }
                },
                extensions = {
                    file_browser = {
                        -- Configuration options here
                        -- theme = "ivy",
                    }
                }
            }
        })

        require("telescope").load_extension "file_browser"

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', function()
            builtin.find_files({
                hidden = true
            })
        end, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({
                search = vim.fn.input("Grep > "),
                additional_args = function() return { "--hidden" } end
            })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

        vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
    end
}

