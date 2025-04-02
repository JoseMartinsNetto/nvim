require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", ":Oil<CR>", { desc = "File explorer" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code actions" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "LSP Rename" })

map("n", "gd", require("telescope.builtin").lsp_definitions, { desc = "LSP Goto definition" })
map("n", "gr", require("telescope.builtin").lsp_references, { desc = "LSP Goto References" })
map("n", "gI", require("telescope.builtin").lsp_implementations, { desc = "LSP Goto Implementation" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Goto Declaration" })
map("n", "<leader>D", require("telescope.builtin").lsp_type_definitions, { desc = "LSP Type definition" })
map("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, { desc = "LSP document symbols" })
map("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, { desc = "LSP Workspace Symbols" })
