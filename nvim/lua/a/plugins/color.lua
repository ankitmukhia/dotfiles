return {
	"rebelot/kanagawa.nvim",
	config = function()
		require('kanagawa').setup({
			compile = false,
			undercurl = false,
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = false},
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false,
			dimInactive = false,
			terminalColors = false,
			colors = {
				palette = {},
				theme = {
					wave = {},
					lotus = {},
					dragon = {},
					all = {
						ui = {
							bg_gutter = "none"
						},
						diag = {
							error = "#FF8080"
						}
					},
				},
			},
			overrides = function(colors) -- add/modify highlights
				return {}
			end,
			theme = "wave",              -- Load "wave" theme when 'background' option is not set
			background = {                 -- map the value of 'background' option to a theme
				dark = "dragon",       -- try "dragon" !
				light = "lotus"
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanagawa")
	end
}

