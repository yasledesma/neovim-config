local lsp = require("lsp-zero").preset("recommended")
local cmp = require('cmp')
-- fix Undefined global 'vim'
lsp.nvim_workspace()

-- servers I always want by default
lsp.ensure_installed({
    'lua_ls',
    -- 'tsserver',  eslint already includes typescript? I'm not sure, so this will stay commented.
    'eslint',
    'gopls',
    'intelephense'
})

-- general settings
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

-- lsp keybindings
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)    -- go to definition
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)    -- see info about symbol
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)    -- go to next diagnostic (A.K.A. concerns raised by lsp)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)    -- go to previous diagnostics
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)    -- show symbol references
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)    -- rename every intance of the symbol in the current buf
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)    -- show diagnostics in a floating window
    vim.keymap.set({ 'n', 'x' }, 'gq', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 }) -- format shortcut
    end, opts)
    -- will have to look these up and see if they're useful for me and if I can make them work.
    -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)    -- probably won't ever use this
    -- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)    -- probably won't ever use this
    -- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)    -- floating windows don't seem to work
end)

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),    -- what does this do?
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
