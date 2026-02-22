-- ========================================================================== --
--                                                                            --
--    File         :  lualine-nvim.lua                                        --
--    Location     :  $XDG_CONFIG_HOME/nvim/lua/plugins/lualine-nvim.lua      --
--    Version      :  0.0.1                                                   --
--    Description  :                                                          --
--        A fast and easy config for Neovim statusline                        --
--    Reference    :                                                          --
--        https://github.com/nvim-lualine/lualine.nvim                        --
--                                                                            --
-- ========================================================================== --

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        -- theme = " ",
        icons_enabled = true,
        section_separators = { left = " ", right = " " },
        component_separators = "|",
      },
    })
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
