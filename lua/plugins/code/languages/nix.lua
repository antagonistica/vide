return {

	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, { "nix" })
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				nixd = {},
				-- nil_ls = {}
			},
		},
	},
	require("conform").setup({
		formatters_by_ft = {
			nix = { "alejandra" },
		},
	})
}
