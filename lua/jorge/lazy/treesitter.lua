return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function() 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "javascript",
                "html",
                "typescript",
                "go",
                "scss",
                "sql",
                "php",
                "http",
                "gitcommit",
                "gitignore",
            },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
