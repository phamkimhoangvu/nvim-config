return {
  {
    "nvimtools/none-ls.nvim",

    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },

    config = function()
      local null_ls = require("null-ls")
      local eslint = require("none-ls.diagnostics.eslint_d").with({
        condition = function(utils)
          return utils.root_has_file({
            "eslint.config.js",
            "eslint.config.mjs",
            "eslint.config.cjs",
            "eslint.config.ts",
            ".eslintrc",
            ".eslintrc.js",
            ".eslintrc.cjs",
            ".eslintrc.json",
            ".eslintrc.yaml",
            ".eslintrc.yml",
          })
        end,
      })

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          eslint,
        },
      })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
