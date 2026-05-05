return {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            window = {
                completion = {
                    border = "rounded",
                },
                documentation = {
                    border = "rounded"
                }
            },
            mapping = {
                ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-y>"] = cmp.config.disable, -- Disable default `<C-y>` mapping
                ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            },
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- LSP completions
                { name = "buffer" },   -- Buffer completions
                { name = "path" },     -- Path completions
            }),
        })

        -- Set up command-line completions
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "path" },
            }, {
                { name = "cmdline" },
            }),
        })

        -- Set up search completions
        cmp.setup.cmdline("/", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })
    end,
}

