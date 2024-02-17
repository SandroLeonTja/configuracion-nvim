--local mason_status, mason = pcall(require,"mason")
--if not mason_status then
 --   return
--end

--local mason_lspconfig_status, mason_lspconfig = pcall(require,"mason-lspconfig")
--if not mason_lspconfig_status then
 --   return
--end

--mason.setup()

--mason_lspconfig.setup({
--    ensure_installed = {
 --       "lua_ls",
  --      "lemminx",
   --     "tailwindcss",
    --    "tsserver",
     --   "quick_lint_js",
      --  "vtsls",
      --  "biome",
   -- }
--})
------------------
-- Configuración Mason
local mason_status, mason = pcall(require,"mason")

if not mason_status then 
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require,"mason-lspconfig")

if not mason_lspconfig_status then
  return
end


mason.setup()

mason_lspconfig.setup({

  -- Servidores LSP para instalar
  ensure_installed = {
    "lua_ls",
    "lemminx",
    "tsserver",
  },

  -- Configuración tsserver para JSX
  tsserver = {
    filetypes = { 
      "typescript",
      "typescriptreact",
      "typescript.tsx" 
    }
  }  

})
