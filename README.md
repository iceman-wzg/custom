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
