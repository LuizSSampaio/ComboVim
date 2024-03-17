vim.g.rustaceanvim = {
    server = {
        default_settings = {
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                    loadOutDirsFromCheck = true,
                    runBuildScripts = true,
                },
                checkOnSave = {
                    allFeatures = true,
                    command = "clippy",
                    extraArgs = { "--no-deps" },
                },
            },
        },
    },
}
