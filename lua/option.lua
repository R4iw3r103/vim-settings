local set = vim.opt

set.swapfile = false
set.helplang = "ja"
set.syntax = "on"
set.encoding = "utf-8"
set.title = true
set.number = true
set.ruler = true
set.smartcase = true
set.cursorline = true
set.shiftwidth = 2
set.tabstop = 2
set.hls = true
set.clipboard = "unnamed"
set.showmatch = true
set.fileencodings = "utf-8"
set.updatetime = 300
set.laststatus = 2
set.expandtab = true
set.autoindent = true
set.smartindent = true

require("lualine").setup()
vim.cmd[[colorscheme tokyonight-night]]
require("tabline").setup()
require("nvim-treesitter.configs").setup({
  auto_install = true,
  highlight = {
    enable = true,
  },
})
require("nvim-web-devicons").setup {
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };
  color_icons = true;
  default = true;
}
require('git').setup()

