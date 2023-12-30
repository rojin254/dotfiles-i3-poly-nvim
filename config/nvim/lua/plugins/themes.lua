local kanagawa= {
	{
		"rebelot/kanagawa.nvim",
		config=function()
	 		vim.cmd.colorscheme("kanagawa-wave")
		end
	}
}
local tokyonight={
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config=function()
--            vim.cmd[[colorscheme tokyonight-night]]
--            vim.cmd[[colorscheme tokyonight-storm]]
--            vim.cmd[[colorscheme tokyonight-day]]
            vim.cmd[[colorscheme tokyonight-moon]]
        end

    }

}
return tokyonight
