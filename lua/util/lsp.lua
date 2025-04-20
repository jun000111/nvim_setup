-- util/lsp.lua
local mapkey = require("util.keymapper").mapvimkey

local M = {}

M.on_attach = function(client, bufnr)
	local opts = { buffer = bufnr }

	-- LSP core
	mapkey("<leader>fd", "Lspsaga finder", "n", opts) -- Find definition, references
	mapkey("<leader>gd", "Lspsaga peek_definition", "n", opts)
	mapkey("<leader>gD", "Lspsaga goto_definition", "n", opts)
	mapkey("<leader>ca", "Lspsaga code_action", "n", opts)
	mapkey("<leader>rn", "Lspsaga rename", "n", opts)
	mapkey("<leader>D", "Lspsaga show_line_diagnostics", "n", opts)
	mapkey("<leader>d", "Lspsaga show_cursor_diagnostics", "n", opts)
	mapkey("<leader>pd", "Lspsaga diagnostic_jump_prev", "n", opts)
	mapkey("<leader>nd", "Lspsaga diagnostic_jump_next", "n", opts)
	mapkey("K", "Lspsaga hover_doc", "n", opts)

	-- Language-specific additions
	if client.name == "pyright" then
		mapkey("<leader>oi", "PyrightOrganizeImports", "n", opts)
		mapkey("<leader>db", "DapToggleBreakpoint", "n", opts)
		mapkey("<leader>dr", "DapContinue", "n", opts)
		mapkey("<leader>dt", function() require("dap-python").test_method() end, "n", opts)
	end

	if client.name == "tsserver" then
		mapkey("<leader>oi", function()
			vim.lsp.buf.execute_command({
				command = "_typescript.organizeImports",
				arguments = { vim.fn.expand("%:p") },
			})
		end, "n", opts)
	end
end

-- Optional: Lazy.nvim-compatible command
M.typescript_organise_imports = {
	description = "Organise Imports",
	callback = function()
		vim.lsp.buf.execute_command({
			command = "_typescript.organizeImports",
			arguments = { vim.fn.expand("%:p") },
		})
	end,
}

return M

