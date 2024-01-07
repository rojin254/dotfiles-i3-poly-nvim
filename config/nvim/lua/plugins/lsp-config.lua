return {

    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
    },
    {

        "williamboman/mason-lspconfig",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "pyright" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            --lspconfig.rust_analyser.setup({

            -- settings = {
            --  ['rust-analyzer'] = {}
            --}
            --})
            vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    -- Enable completion triggered by <c-x><c-o>
                    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
                    local opts = { buffer = ev.buf }
                    vim.keymap.set("n", "K", vim.lsp.buf.hover,opts)
                    vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration,opts)
                    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition,opts)
                    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references,opts)
                    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation,opts)
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,opts)
                    vim.keymap.set('n', '<leader>gh', vim.lsp.buf.signature_help, opts)
                end
        })
        end
    },
}
