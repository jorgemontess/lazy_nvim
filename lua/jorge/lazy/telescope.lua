return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    require('telescope').setup({
      defaults = {
        use_less = true,
        -- opcional: ignora .git al buscar
        -- vimgrep_arguments = {
        --   'rg', '--color=never', '--no-heading', '--with-filename',
        --   '--line-number', '--column', '--smart-case',
        --   '--hidden', '--glob', '!.git/'
        -- },
      },
    })

    local builtin = require('telescope.builtin')

    -- Tus atajos originales
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<leader>pg', builtin.live_grep, {}) -- (regex)
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})

    -- 🔎 NUEVO: Live Grep "literal" (sin regex) -> busca env( sin tener que escapar
    vim.keymap.set('n', '<leader>pl', function()
      builtin.live_grep({
        additional_args = function()
          return { '--fixed-strings' }  -- igual que -F
        end
      })
    end, { desc = 'Live grep (literal, sin regex)' })
  end,
}

