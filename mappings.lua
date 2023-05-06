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
    -- telekasten
    ["<leader>z"] = { "<cmd>Telekasten panel<cr>" },
    ["<leader>zf"] = { "<cmd>Telekasten find_notes<CR>" },
    ["<leader>zg"] = { "<cmd>Telekasten search_notes<CR>" },
    ["<leader>zd"] = { "<cmd>Telekasten goto_today<CR>" },
    ["<leader>zz"] = { "<cmd>Telekasten follow_link<CR>" },
    ["<leader>zn"] = { "<cmd>Telekasten new_note<CR>" },
    ["<leader>zc"] = { "<cmd>Telekasten show_calendar<CR>" },
    ["<leader>zB"] = { "<cmd>Telekasten show_backlinks<CR>" },
    ["<leader>zI"] = { "<cmd>Telekasten insert_img_link<CR>" },
    ["<leader>zb"] = { "<cmd>Telescope bibtex<CR>" },
  },
  i = {
    ["[["] = { "<cmd>Telekasten insert_link<CR>" },
  }
}
