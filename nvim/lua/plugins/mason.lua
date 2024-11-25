local DEFAULT_SETTINGS = {
	-- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer@nightly", "lua_ls" }
	-- This setting has no relation with the `automatic_installation` setting.
	---@type string[]
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"cssls",
		"diagnosticls",
		"dockerls",
		"gopls",
		"graphql",
		"html",
		"jsonls",
		"tsserver",
		"shopify_theme_ls",
		"marksman",
		"nginx_language_server",
		"intelephense",
		"prismals",
		"ruby_lsp",
		-- "theme_check",
		"sqlls",
		"solidity_ls",
		"somesass_ls",
		"taplo",
		"tailwindcss",
		"yamlls",
		"prettierd",
	},

	-- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
	-- This setting has no relation with the `ensure_installed` setting.
	-- Can either be:
	--   - false: Servers are not automatically installed.
	--   - true: All servers set up via lspconfig are automatically installed.
	--   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
	--       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
	---@type boolean
	automatic_installation = false,

	-- See `:h mason-lspconfig.setup_handlers()`
	---@type table<string, fun(server_name: string)>?
	handlers = {
		function(server_name) -- default handler (optional)
			require("lspconfig")[server_name].setup({})
		end,
		-- ["shopify-cli"] = function()
		-- 	require("shopify_theme_ls").setup({
		-- 		settings = {
		-- 			themeCheck = {
		-- 				checkOnOpen = true,
		-- 				checkOnSave = true,
		-- 				checkOnChange = false,
		-- 				onlySingleFileChecks = false,
		-- 			},
		-- 		},
		-- 	})
		-- end,
	},
}

return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = DEFAULT_SETTINGS,
	},
}
