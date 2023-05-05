return {
  lsp = {
    setup_handlers = {
      -- add custom handler
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
      tsserver = function(_, opts) require("typescript").setup { server = opts } end,
    },
  },
  plugins = {
    "simrat39/rust-tools.nvim",
    "jose-elias-alvarez/typescript.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer", "tsserver" },
      },
    },
  },
}


--[[
return {
  lsp = {
    setup_handlers = {
      -- add custom handler
      tsserver = function(_, opts) require("typescript").setup { server = opts } end
    }
  },
  plugins = {
    "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "tsserver" }, -- automatically install lsp
      },
    },
  },
}
]]
