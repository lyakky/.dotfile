local vim = vim
-- ensure that packer is installed
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.api.nvim_command('packadd packer.nvim')
end
vim.cmd('packadd packer.nvim')
local packer = require 'packer'
local util = require 'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

require("packer").startup({
  function(use)
    use { 'lewis6991/impatient.nvim', config = [[require('impatient')]] }
    use({ "wbthomason/packer.nvim", opt = true })
    -- 基础
    use 'nvim-lua/plenary.nvim' -- 很多 lua 插件依赖的库
    use 'kyazdani42/nvim-web-devicons' -- 显示图标
    use 'folke/which-key.nvim' -- 用于配置和提示快捷键
    use 'tami5/sqlite.lua' -- 数据库
    -- ui
    use 'liuchengxu/vista.vim' -- 导航栏
    use 'kyazdani42/nvim-tree.lua' -- 文件树
    use 'mhinz/vim-startify' -- 启动界面
    use 'vim-airline/vim-airline' -- 状态栏
    use 'vim-airline/vim-airline-themes' -- 状态栏的主题
    use 'akinsho/bufferline.nvim' -- buffer
    use 'kazhala/close-buffers.nvim' -- 一键删除不可见 buffer
    use 'gelguy/wilder.nvim' -- 更加智能的命令窗口
    use 'romgrk/fzy-lua-native' -- wilder.nvim 的依赖
    use 'xiyaowong/nvim-transparent' -- 可以移除掉背景色，让 vim 透明
    -- 颜色主题
    use 'folke/tokyonight.nvim'
    -- git 管理
    use 'tpope/vim-fugitive' -- 显示 git blame，实现一些基本操作的快捷执行
    use 'rhysd/git-messenger.vim' -- 利用 git blame 显示当前行的 commit message
    use 'lewis6991/gitsigns.nvim' -- 显示改动的信息
    -- 命令执行
    use 'voldikss/vim-floaterm' -- 以悬浮窗口的形式打开终端
    use 'CRAG666/code_runner.nvim' -- 一键运行代码
    -- 高效编辑
    use 'honza/vim-snippets' -- 安装公共的的 snippets
    use 'mbbill/undotree' -- 显示编辑的历史记录
    use 'mg979/vim-visual-multi' -- 同时编辑多个位置
    use 'AckslD/nvim-neoclip.lua' -- 保存 macro
    use 'windwp/nvim-spectre' -- 媲美 vscode 的多文件替换
    -- 快速移动
    use 'ggandor/lightspeed.nvim'
    -- c/c++
    use 'jackguo380/vim-lsp-cxx-highlight' -- 为 c/cpp 提供基于 lsp 的高亮
    use 'skywind3000/vim-cppman' -- http://cplusplus.com/ 和 http://cppreference.com/ 获取文档


    -- nvim-lspconfig
    use 'neovim/nvim-lspconfig'
    --use 'williamboman/nvim-lsp-installer'
    use 'williamboman/mason-lspconfig.nvim'
    use 'mfussenegger/nvim-dap'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'williamboman/mason.nvim'
    --autocompletion
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use "b0o/schemastore.nvim" --json schema
    --nvim-treesitter
    use 'tree-sitter/tree-sitter'
    use 'nvim-treesitter/nvim-treesitter'
    --telescope
    use 'nvim-telescope/telescope.nvim'
  end,
})
