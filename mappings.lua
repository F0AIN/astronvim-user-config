return {
  n = {
    ["s"] = { "<Nop>" },
    -- 画面操作
    ["ss"] = { "<cmd>split<cr>" },
    ["sv"] = { "<cmd>vsplit<cr>" },
    ["s-"] = { "<C-w>-" },
    ["s+"] = { "<C-w>+" },
    ["s="] = { "<C-w>=" },
    -- 移動系
    ["sn"] = { "<cmd>bnext<cr>" },
    ["sp"] = { "<cmd>bprevious<cr>" },
    ["sh"] = { "<C-w>h" },
    ["sj"] = { "<C-w>j" },
    ["sk"] = { "<C-w>k" },
    ["sl"] = { "<C-w>l" },
    -- terminal
    ["<leader>t"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  }
}
