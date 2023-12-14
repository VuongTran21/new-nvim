return {
  "machakann/vim-highlightedyank",
  lazy = false,
  config = function()
    vim.cmd[[let g:highlightedyank_highlight_duration = 100]]
  end
}
