return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        styles = {
          comments = { italic = false },
        },
      }
      vim.cmd.colorscheme 'tokyonight-night'

      vim.cmd [[
        highlight Normal guibg=#16181a
        highlight NormalNC guibg=#16181a
        highlight VertSplit guibg=#16181a
        highlight StatusLine guibg=#16181a guifg=#ffffff
        highlight StatusLineNC guibg=#16181a guifg=#ffffff
        highlight LineNr guibg=#16181a guifg=#aaaaaa
        highlight CursorLineNr guibg=#16181a guifg=#ffffff
        highlight Pmenu guibg=#16181a guifg=#ffffff
        highlight PmenuSel guibg=#3c4048 guifg=#ffffff
        highlight TabLine guibg=#16181a guifg=#aaaaaa
        highlight TabLineSel guibg=#3c4048 guifg=#ffffff
      ]]
    end,
  },
}
