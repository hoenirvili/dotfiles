return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      go = { 'goimports' },
      python = { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' },
      javascrit = { 'prettierd' },
      typescript = { 'prettierd' },
      typescriptreact = { 'prettierd' },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    notify_on_error = true,
  },
}
