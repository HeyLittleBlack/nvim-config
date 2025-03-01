return {
  -- lsp keymaps
  {
    "neovim/nvim-lspconfig",
    --"LazyVim/LazyVim",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "K", false }
    end,
  },
}
