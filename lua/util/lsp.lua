local mapkey = require("util.keymapper").mapvimkey
local Remap = require("util.keymapper").M
local nnoremap = Remap.nnoremap

local M = {}

M.on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	nnoremap("gf", "<cmd>Lspsaga finder<CR>", opts) -- show definition, references
	nnoremap("gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	nnoremap("gp", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	nnoremap("gd", "<cmd>Lspsaga goto_definition<CR>", opts) -- see definition and make edits in window
	nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	nnoremap("<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	nnoremap("<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	nnoremap("<leader>od", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	nnoremap("<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	nnoremap("[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	nnoremap("]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	nnoremap("K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	nnoremap("<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side

	if client.name == "pyright" then
		mapkey("<leader>oi", "PyrightOrganizeImports", "n", opts) -- organise imports
		mapkey("<leader>db", "DapToggleBreakpoint", "n", opts) -- toggle breakpoint
		mapkey("<leader>dr", "DapContinue", "n", opts) -- continue/invoke debugger
		mapkey("<leader>dt", "lua require('dap-python').test_method()", "n", opts) -- run tests
	end

	if client.name == "tsserver" then
		mapkey("<leader>rf", ":TypescriptRenameFile<CR>", "n")
	end
end

return M
