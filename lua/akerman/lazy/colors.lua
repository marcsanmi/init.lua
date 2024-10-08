function ColorMyPencils(color)
	color = color or "melange"
	-- color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "@type", { fg = "#57757E" })
    vim.api.nvim_set_hl(0, "@package", { fg = "#8cbe85" })
    vim.api.nvim_set_hl(0, "@module", { fg = "#8cbe85" })

    vim.api.nvim_set_hl(0, "GoPackageName", { fg = "#8cbe85" })

    -- Functions and methods 
    vim.api.nvim_set_hl(0, "@function", { fg = "#D4A06A" })
    vim.api.nvim_set_hl(0, "@method", { fg = "#D4A06A" })

    -- Keywords (func, return)
    vim.api.nvim_set_hl(0, "@keyword", { fg = "#D1793F" })
    vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#D1793F" })
end

return {
--    {
--        "folke/tokyonight.nvim",
--        config = function()
--            require("tokyonight").setup({
--                -- your configuration comes here
--                -- or leave it empty to use the default settings
--                style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--                transparent = true, -- Enable this to disable setting the background color
--                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--                styles = {
--                    -- Style to be applied to different syntax groups
--                    -- Value is any valid attr-list value for `:help nvim_set_hl`
--                    comments = { italic = false },
--                    keywords = { italic = false },
--                    -- Background styles. Can be "dark", "transparent" or "normal"
--                    sidebars = "dark", -- style for sidebars, see below
--                    floats = "dark", -- style for floating windows
--                },
--            })
--        end
--    },
--    {
--        "rose-pine/neovim",
--        name = "rose-pine",
--        config = function()
--            require('rose-pine').setup({
--                disable_background = true,
--                styles = {
--                    italic = false,
--                },
--            })
--
--            vim.cmd("colorscheme rose-pine")
--
--            ColorMyPencils()
--        end
--    },
    {
        "savq/melange-nvim",
        config = function()
            vim.opt.termguicolors = true
            ColorMyPencils()
        end
    },
}


