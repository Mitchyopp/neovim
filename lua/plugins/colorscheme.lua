-- local function enable_transparency()
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- end

return {
    {
        'rebelot/kanagawa.nvim',
        priority = 1000,
        config = function()
            vim.cmd("colorscheme kanagawa-dragon")
            -- enable_transparency()
        end
    }
}
