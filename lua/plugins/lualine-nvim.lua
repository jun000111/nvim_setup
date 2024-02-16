local config = function()
	require("lualine").setup({
		options = {
			theme = "auto",
			globalstatus = true,
		},
		tabline = {
			lualine_a = { "branch" },
			lualine_b = { "buffers" },
			lualine_c = { "diff" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
		},
		sections = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
