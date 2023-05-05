-- 追加したいプラグインはここに書く
return {
  { "dracula/vim" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji", -- add cmp source as dependency of cmp
    },
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      local cmp = require "cmp"
      -- modify the sources part of the options table
      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip",  priority = 750 },
        { name = "buffer",   priority = 500 },
        { name = "path",     priority = 250 },
        { name = "emoji",    priority = 700 },   -- add new source
      }

      -- return the new table to be used
      return opts
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { -- add a new dependency to telescope that is our new plugin
      "nvim-telescope/telescope-media-files.nvim",
    },
    -- the first parameter is the plugin specification
    -- the second is the table of options as set up in Lazy with the `opts` key
    config = function(plugin, opts)
      -- run the core AstroNvim configuration function with the options table
      require("plugins.configs.telescope")(plugin, opts)

      -- require telescope and load extensions as necessary
      local telescope = require "telescope"
      telescope.load_extension "media_files"
    end,
  },
  {
    'renerocksai/telekasten.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'renerocksai/calendar-vim',
      'nvim-telescope/telescope-symbols.nvim',
      'nvim-telescope/telescope-bibtex.nvim',
    },
    event = "User AstroFile",
    config = function()
      require("telekasten").setup({
        home = vim.fn.expand("~/Documents/note/"),
      })
      require("telescope").load_extension("bibtex")
    end
  },
  {
    'toppair/peek.nvim',
    build = "deno task --quiet build:fast",
    event = "User AstroFile",
    config = function()
      -- default config:
      require('peek').setup({
        auto_load = true,        -- whether to automatically load preview when
        -- entering another markdown buffer
        close_on_bdelete = true, -- close preview window on buffer delete
        syntax = true,           -- enable syntax highlighting, affects performance
        theme = 'dark',          -- 'dark' or 'light'
        update_on_change = true,
        app = 'webview',         -- 'webview', 'browser', string or a table of strings
        -- explained below

        filetype = { 'markdown' }, -- list of filetypes to recognize as markdown
        -- relevant if update_on_change is true
        throttle_at = 200000,      -- start throttling when file exceeds this
        -- amount of bytes in size
        throttle_time = 'auto',    -- minimum amount of time in milliseconds
        -- that has to pass before starting new render
      })
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end
  },
}
