# nvim-config

Personal Neovim setup (0.12) built while learning.

## Stack

- Plugin manager: lazy.nvim
- LSP: native `vim.lsp` + nvim-lspconfig + Mason (lua_ls, ts_ls, basedpyright)
- Formatting/linting: none-ls (prettier, stylua, eslint_d when a project has an ESLint config)
- Fuzzy finder: Telescope
- File tree: neo-tree
- Syntax: nvim-treesitter (main branch)
- Theme: Catppuccin mocha

## Requirements

- Neovim 0.12+
- git, a C compiler (`cc`/`gcc`), `make`
- `tree-sitter` CLI
- ripgrep (`rg`); `fd` is optional
- A Nerd Font in your terminal (for icons)

## Install

    git clone git@github.com:phamkimhoangvu/nvim-config.git ~/.config/nvim
    nvim

lazy.nvim bootstraps itself and installs the plugins on first launch.
Then run `:Mason` to check that the tools are installed.

## Keymaps

Leader is `<Space>`.

| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>e` | File tree |
| `<leader>gf` | Format file |
| `<leader>ca` | Code action |
| `<leader>d` | Line diagnostics |
| `gd` | Go to definition | 
