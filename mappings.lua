---@type MappingsTable
local M = {}
M.md ={
  i = {
    [",1"] = {"#<Space><Enter><++><Esc>kA", "一级标题"},
    [",2"] = {"##<Space><Enter><++><Esc>kA", "二级标题"},
    [",3"] = {"###<Space><Enter><++><Esc>kA", "三级标题"},
    [",4"] = {"####<Space><Enter><++><Esc>kA", "四级标题"},
    [",l"] = {"--------<Enter>", "分割线"},
    [",n"] = {"---<Enter><Enter>", "短线"},
    [",b"] = {"**** <++><Esc>F*hi", "粗体"},
    [",s"] = {"~~~~ <++><Esc>F~hi", "斜体"},
    [",i"] = {"** <Esc>F*i", "删除"},
    [",d"] = {"`` <++><Esc>F`i", "强调"},
    [",c"] = {"```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA", "代码块"},
    [",m"] = {"- []<space>", "标记"},
    [",h"] = {"====<space><++><Esc>F=hi", "横线"},
    [",p"] = {"![](<++>) <++><Esc>F[a", "图片"},
    [",a"] = {"[](<++>) <++><Esc>F[a", "超链接"},
    [",,"] = {"<Space><++><Space>", "tag"},
    [",f"] = {"<Esc>/<++><CR>:nohlsearch<CR>_c4l", "查找"},
  },
  n = {
    ["r"] = {"<Esc>:MarkdownPreview<CR>", "md-preview"}
  },
}

return M
