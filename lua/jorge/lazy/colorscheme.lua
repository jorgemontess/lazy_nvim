function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end


return {
    -- CATPPUCCIN COLORSCHEME
    { "catppuccin/nvim", name = "catppuccin",

        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true, -- disables setting the background color.
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = false, -- Force no italic
                no_bold = false, -- Force no bold
                no_underline = false, -- Force no underline
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" }, -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                },
            })
        end
    },

    {
        --ROSE-PINE COLORSCHEME
        --
        "rose-pine/neovim", name = "rose-pine",
        priority = 1000,

            config = function()
                require('rose-pine').setup({

                    disable_background = true,

                    styles = {
                        bold = true,
                        italic = false,
                        transparency = true,
                    },
                })

                --SET COLORSCHEME
                vim.cmd("colorscheme catppuccin")

                ColorMyPencils()

            end
    },

  -- TOKYONIGHT

    {

      "folke/tokyonight.nvim",
      --lazy = false,
      --priority = 1000,
      opts = {},
      config = function()
        require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
          style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
          light_style = "day", -- The theme is used when the background is set to light
          transparent = true, -- Enable this to disable setting the background color
          terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
          styles = {
            -- Style to be applied to different syntax groups
            -- Value is any valid attr-list value for `:help nvim_set_hl`
            comments = { italic = true },
            keywords = { italic = true },
            functions = {},
            variables = {},
            -- Background styles. Can be "dark", "transparent" or "normal"
            sidebars = "dark", -- style for sidebars, see below
            floats = "dark", -- style for floating windows
          },
          sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
          day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
          hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
          dim_inactive = false, -- dims inactive windows
          lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

          --- You can override specific color groups to use other groups or a hex color
          --- function will be called with a ColorScheme table
          ---param colors ColorScheme
          --on_colors = function(colors) end,

          --- You can override specific highlights to use other groups or a hex color
          --- function will be called with a Highlights and ColorScheme table
          ---param highlights Highlights
          ---param colors ColorScheme
          --on_highlights = function(highlights, colors) end,
        })
      end

    },

    {
        --ROSE-PINE COLORSCHEME
        --
        "rebelot/kanagawa.nvim",

            config = function()
                require('kanagawa').setup({

                    compile = false,             -- enable compiling the colorscheme
                    undercurl = true,            -- enable undercurls
                    commentStyle = { italic = true },
                    functionStyle = {},
                    keywordStyle = { italic = true},
                    statementStyle = { bold = true },
                    typeStyle = {},
                    transparent = true,         -- do not set background color
                    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
                    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
                    colors = {                   -- add/modify theme and palette colors
                        palette = {},
                        theme = { wave = {}, lotus = {}, dragon = {},
                            all = { ui = { bg_gutter = "none"} }
                        },
                    },
                    overrides = function(colors) -- add/modify highlights
                        local theme = colors.theme
                        return {
                            FloatBorder = { fg = "none", bg = "none" },
                            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
                        }
                    end,
                    theme = "wave",              -- Load "wave" theme when 'background' option is not set
                    background = {               -- map the value of 'background' option to a theme
                        dark = "wave",           -- try "dragon" !
                        light = "lotus"
                    },
                })

            end
    },
}
