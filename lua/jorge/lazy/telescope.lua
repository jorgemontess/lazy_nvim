return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },

   config = function()

       require('telescope').setup({
         defaults = {
          use_less = true,
         },
       })

       local builtin = require('telescope.builtin')
          vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
          vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
          vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
          vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
          vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
       end,
}
