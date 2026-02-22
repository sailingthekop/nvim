-- ========================================================================== --
--                                                                            --
--    File         :  nvim-tree.lua                                           --
--    Location     :  $XDG_CONFIG_HOME/lua/plugins/nvim-tree.lua              --
--    Version      :  0.0.1                                                   --
--    Description  :                                                          --
--        A file explorer tree for neovim                                     --
--                                                                            --
-- ========================================================================== --

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
    vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
      },
      view = {
        adaptive_size = true,
      },
    })
  end,
}
