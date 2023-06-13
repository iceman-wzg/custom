# NvChad config nvim

<!-- vim-markdown-toc GFM -->

* [1. How to Install Nvchad](#1-how-to-install-nvchad)
* [2. Install More Plugins](#2-install-more-plugins)
    * [2.1 Markdown-Preview.nvim](#21-markdown-previewnvim)
    * [2.2 nvim-treesitter](#22-nvim-treesitter)
    * [2.3 vim-table-mode](#23-vim-table-mode)
    * [2.4 vim-markdown-toc](#24-vim-markdown-toc)

<!-- vim-markdown-toc -->

## 1. How to Install Nvchad

**Pre-requisites:**

* Neovim 0.9.0
* Nerd Font JetbrainsMono Nerd Font Mono

**install**

`git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim`

`提示：选择安装样例`

**Chad集成插件列表**

```lua

local default_plugins = {
    "nvim-lua/plenary.nvim",-- lua模块集合函数库
    "nvim-tree/nvim-web-devicons",-- 显示图标函数集合
    "nvim-tree/nvim-tree.lua",-- 树形文件管理器
    "nvim-telescope/telescope.nvim",-- 文件模糊搜索
    "folke/which-key.nvim",-- 快捷键字典
    "lukas-reineke/indent-blankline.nvim",-- 缩进线
    "numToStr/Comment.nvim",-- 代码注释
    "nvim-treesitter/nvim-treesitter",-- 代码高亮、格式化、增量选择
    "lewis6991/gitsigns.nvim",-- 显示git状态
    -- =====语言补全插件=====
    "neovim/nvim-lspconfig",--neovim内置lsp
    "williamboman/mason.nvim",-- 补全插件管理
    "null-ls.nvim"
    -- nvim-cmp代码补全
    "hrsh7th/nvim-cmp",-- ====代码补全插件，cmp-xx都是补全来源===
    "hrsh7th/cmp-buffer",-- 来源buffer
    "hrsh7th/cmp-path",-- 来源路径
    "hrsh7th/cmp-nvim-lsp",-- 来源neovim内置lsp服务器
    "hrsh7th/cmp-nvim-lua",-- 来源lua服务器
    "saadparwaiz1/cmp_luasnip",-- lua代码片段
    "windwp/nvim-autopairs",-- 括号自动匹配
    "rafamadriz/friendly-snippets",-- 用户定义代码片段
}
```

## 2. Install More Plugins

**Import:**自定义安装插件均在custom目录下完成。注意`opts, dependencies, cmd, event, ft, keys`与父规范合并，其他覆盖。

### 2.1 Markdown-Preview.nvim

- 在~/.config/nvim/lua/custom/plugins.lua文件添加如下内容

```lua
  {
    "iamcco/markdown-preview.nvim",
    bulid = function()
      vim.fn["mkdp#util#install"]()
    end,
    cmd = {"MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle"},
    ft = "markdow"
  },
```

- 通过mappings.lua配置markdown快捷键, 此处会与代码片段重复，需要进一步完善！！！

### 2.2 nvim-treesitter

在Plugins.lua文件内添加event，否则报错，且无法安装

```lua
    event = function()
      require("nvim-treesitter.install").prefer_git = true
    end,
```

对configs/overrides.lua文件进行修改，增加语言支持，自动安装

### 2.3 vim-table-mode

对markdown表格支持，在Plugins.lua添加

```lua
  {
    "dhruvasagar/vim-table-mode",
    ft = "markdown"
  },
```

### 2.4 vim-markdown-toc

生成markdown文件目录插件

```lua
  {
    "mzlogin/vim-markdown-toc",
    ft = "markdown"
  },
```

<++>
