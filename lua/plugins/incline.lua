return {
    {
        "b0o/incline.nvim",
        event = "BufReadPre",
        enabled = true,
        config = function()
            require("incline").setup({
                highlight = {
                    groups = {
                        InclineNormal = { guibg = "#FC56B1", guifg = "#000000" },
                        InclineNormalNC = { guifg = "#FC56B1", guibg = "#000000" },
                    },
                },
                window = { margin = { vertical = 0, horizontal = 1 } },
                render = function(props)
                    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                    local icon, color = require("nvim-web-devicons").get_icon_color(filename)
                    return { { icon, guifg = color }, { " " }, { filename } }
                end,
            })
        end,
    },
}
