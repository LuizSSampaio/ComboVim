require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer" },
})

local lspconfig = require("lspconfig")
local lsp_defaults = lspconfig.util.default_config
local util = require("lspconfig/util")
local map = vim.keymap.set

lsp_defaults.capabilities = vim.tbl_deep_extend(
    "force",
    lsp_defaults.capabilities,
    require("cmp_nvim_lsp").default_capabilities()
)

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                    [vim.fn.stdpath "config" .. "/lua"] = true,
                },
            },
        },
    }
}
lspconfig.rust_analyzer.setup({
    capabilities = lsp_defaults.capabilities,
    settings = {
        filetypes = { "rust" },
        --root_dir = util.root_pattern("Cargo.toml"),
        ['rust_analyzer'] = {
            cargo = {
                allFeatures = true,
            },
        },
    },
})

local bufnr = vim.api.nvim_get_current_buf()

local function opts(desc)
    return { buffer = bufnr, desc = desc }
end

map("n", "gD", vim.lsp.buf.declaration, opts("Lsp Go to declaration"))
map("n", "gd", vim.lsp.buf.definition, opts("Lsp Go to definition"))
map("n", "K", vim.lsp.buf.hover, opts("Lsp hover information"))
map("n", "gi", vim.lsp.buf.implementation, opts("Lsp Go to implementation"))
map("n", "<leader>sh", vim.lsp.buf.signature_help, opts("Lsp Show signature help"))
map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts("Lsp Add workspace folder"))
map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts("Lsp Remove workspace folder"))

map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, opts("Lsp List workspace folders"))

map("n", "<leader>D", vim.lsp.buf.type_definition, opts("Lsp Go to type definition"))

map("n", "<leader>ra", function()
    require("nvchad.lsp.renamer")()
end, opts("Lsp NvRenamer"))

map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts("Lsp Code action"))
map("n", "gr", vim.lsp.buf.references, opts("Lsp Show references"))
