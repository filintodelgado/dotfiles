return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local lspconfig = require("lspconfig")

        -- Python
        lspconfig.pylsp.setup({
            capabilities = capabilities,
        })

        -- TypeScript/JavaScript
        lspconfig.ts_ls.setup({
            capabilities = capabilities,
        })

        -- Go
        lspconfig.gopls.setup({
            capabilities = capabilities,
        })

        -- Rust
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
        })

        -- C/C++
        lspconfig.clangd.setup({
            capabilities = capabilities,
            cmd = { "clangd", "--background-index" },
            filetypes = { "c", "cpp" },
        })

        -- Lua
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                     runtime = {
                         version = 'LuaJIT',
                     },
                    diagnostics = {
                        globals = {'vim'},
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        })
    end
}
