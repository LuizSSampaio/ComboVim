require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    "nvim-treesitter/nvim-treesitter",
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter"
        }
    },
    "lewis6991/gitsigns.nvim",
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                dependencies = "rafamadriz/friendly-snippets"
            },
            "windwp/nvim-autopairs",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path"
        }
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" }
    },
    "mfussenegger/nvim-lint",
    "mhartington/formatter.nvim",
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" }
    }
})
