return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    config = function()
        vim.lsp.enable('clangd')
        vim.lsp.enable('ts_ls')
        vim.lsp.enable('gopls')
        vim.lsp.enable('rust_analyzer')
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('pyright')
    end
}
