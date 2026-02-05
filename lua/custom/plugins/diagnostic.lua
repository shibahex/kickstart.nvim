-- Diagnostic configuration
-- See :help vim.diagnostic.Opts
-- Diagnostic configuration as a lazy.nvim spec
return {
  -- This isn't a real plugin, just using lazy's structure
  {
    'neovim/nvim-lspconfig', -- piggyback on lspconfig
    config = function()
      vim.diagnostic.config {
        severity_sort = true,
        update_in_insert = false,
        float = { border = 'rounded', source = 'if_many' },
        underline = { severity = vim.diagnostic.severity.ERROR },
        signs = vim.g.have_nerd_font and {
          text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.INFO] = '󰋽 ',
            [vim.diagnostic.severity.HINT] = '󰌶 ',
          },
        } or {},
        virtual_text = {
          source = 'if_many',
          spacing = 2,
          format = function(diagnostic) return diagnostic.message end,
        },
      }
    end,
  },
}
