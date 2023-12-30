return{
    {
    "williamboman/mason.nvim",

    config=function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
    end
    },
    {

    "williamboman/mason-lspconfig",
    config=function()
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "rust_analyzer","tsserver","pyright" },
        }
    end
    },
    {
        "neovim/nvim-lspconfig",
         config = function()
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            --lspconfig.rust_analyser.setup({

              -- settings = {
              --  ['rust-analyzer'] = {}
              --} 
            --})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
         end


    }
}
