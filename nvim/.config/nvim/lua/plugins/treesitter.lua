return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   lazy = false,
   config = function ()
      local config = require("nvim-treesitter.configs")
      config.setup({
         ensure_instaled = {"lua", "javascript", "c_sharp", "yaml", "python"},
         highlight = { enable = true },
       indent = { enable = true },
         auto_install = true
      })
   end
}
