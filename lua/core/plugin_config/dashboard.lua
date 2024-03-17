local logo = [[
_________               ___.        ____   ____.__         
\_   ___ \  ____   _____\_ |__   ___\   \ /   /|__| _____  
/    \  \/ /  _ \ /     \| __ \ /  _ \   Y   / |  |/     \ 
\     \___(  <_> )  Y Y  \ \_\ (  <_> )     /  |  |  Y Y  \
 \______  /\____/|__|_|  /___  /\____/ \___/   |__|__|_|  /
        \/             \/    \/                         \/ 
]]
logo = string.rep("\n", 8) .. logo .. "\n\n"

require("dashboard").setup({
    theme = "doom",
    hide = {
        statusline = false,
    },
    config = {
        header = vim.split(logo, "\n"),
        center = {
            { action = "Telescope find_files",                                    desc = " Find file",       icon = " ", key = "f" },
            { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
            { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
            { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
            { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end
    },
})
