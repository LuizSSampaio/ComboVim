require('telescope').setup({ 
    file_ignore_patterns = { "node%_modules/.*" },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
    }
})
--require('telescope').load_extension('fzf')
