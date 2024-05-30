require("akerman.remap")
require("akerman.set")
require("akerman.lazy_init")
require("akerman.statusline")

local augroup = vim.api.nvim_create_augroup
local AkermanGroup = augroup('akerman', {})
local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    group = AkermanGroup,
    callback = function(e)
        local opts = { buffer = e.buf }

        -- Go to the definition of the symbol under the cursor
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        -- Show hover information for the symbol under the cursor
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        -- Search for workspace symbols
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        -- Open a floating window with diagnostic information
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        -- Show available code actions
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        -- Show references to the symbol under the cursor
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        -- Rename the symbol under the cursor
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        -- Show signature help for the symbol under the cursor
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        -- Go to the next diagnostic (error/warning)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        -- Go to the previous diagnostic (error/warning)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

