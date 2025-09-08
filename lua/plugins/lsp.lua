-- LSP keymaps
return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- list document symbols
    keys[#keys + 1] = { "<leader>ls", "<cmd>lua vim.lsp.buf.document_symbol()<CR>" }
    -- navigate to declaration and definition
    keys[#keys + 1] = { "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<CR>" }
    keys[#keys + 1] = { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>" }
    -- hover information
    keys[#keys + 1] = { "<leader>lk", "<cmd>lua vim.lsp.buf.hover()<CR>" }
    -- implementation
    keys[#keys + 1] = { "<leader>lI", "<cmd>lua vim.lsp.buf.implementation()<CR>" }
    -- signature help
    keys[#keys + 1] = { "<leader>lh", "<cmd>lua vim.lsp.buf.signature_help()<CR>" }
    -- rename symbol
    keys[#keys + 1] = { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>" }
    -- code action
    keys[#keys + 1] = { "<leader>lc", "<cmd>lua vim.lsp.buf.code_action()<CR>" }
    -- list symbol's references
    keys[#keys + 1] = { "<leader>lR", "<cmd>lua vim.lsp.buf.references()<CR>" }
  end,
}
