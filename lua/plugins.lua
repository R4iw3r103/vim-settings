vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
	-- Write plugins you wanna add below.
	-- use "hoge/hoge-plugin"
	use 'wbthomason/packer.nvim'
  use "Shougo/ddc-around"
  use 'Shougo/ddc.vim'
	use 'vim-denops/denops.vim'
  use "folke/tokyonight.nvim"
  use "kdheepak/tabline.nvim"
  use "tpope/vim-commentary"
  use "dinhhuy258/git.nvim"
  use { 
    "neoclide/coc.nvim",
    branch = "release"
  }
  use({
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  })
  use {
  "nvim-lualine/lualine.nvim",
  requires = { "nvim-tree/nvim-web-devicons", opt = true }
}
  use {'kyazdani42/nvim-web-devicons'}
  -- use("nvim-tree/nvim-web-devicons")
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
	use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
  use "brglng/vim-im-select"
end)
