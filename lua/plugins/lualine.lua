return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "auto", -- follows the active colorscheme (catppuccin)
      globalstatus = true, -- one statusline for all splits
    },
  },
}
