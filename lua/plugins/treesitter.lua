return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup({})

    -- async install; does nothing for parsers already installed
    require("nvim-treesitter").install({
      "lua",
      "python",
      "javascript",
      "typescript",
      "tsx",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "lua",
        "python",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
      callback = function()
        -- pcall so a missing parser doesn't throw an error
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
