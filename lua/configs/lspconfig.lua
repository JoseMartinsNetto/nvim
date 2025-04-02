-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "lua_ls",
  "angularls",
  "gopls",
  "gofumpt",
  "golangci-lint",
  "golangci-lint-langserver",
  "golines",
  "gotests",
  "gomodifytags",
  "gci",
  "delve",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

if vim.fn.executable "gleam" == 1 then
  lspconfig.gleam.setup {
    cmd = { "gleam", "lsp" },
    filetypes = { "gleam" },
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,

    root_dir = function(fname)
      return lspconfig.util.root_pattern "gleam.toml"(fname) or lspconfig.util.find_git_ancestor(fname)
    end,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
