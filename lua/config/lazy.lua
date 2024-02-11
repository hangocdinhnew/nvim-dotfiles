local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        colorscheme = "tokyonight",
      },
    },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

require("toggleterm").setup({
  open_mapping = "<F12>",
  -- Callback Functions
  on_create = function(term) end,
  on_open = function(term) end,
  on_close = function(term) end,
  on_stdout = function(term, job, data, name) end,
  on_stderr = function(term, job, data, name) end,
  on_exit = function(term, job, exit_code, name) end,
  -- Number Column
  hide_numbers = true,
  -- Shade Filetypes
  shade_filetypes = {},
  -- Autochdir
  autochdir = true,
  -- Shade Terminals
  shade_terminals = false,
  -- Shading Factor
  shading_factor = "50",
  -- Start in Insert Mode
  start_in_insert = true,
  -- Insert Mappings
  insert_mappings = false,
  -- Terminal Mappings
  terminal_mappings = false,
  -- Persist Size
  persist_size = false,
  -- Persist Mode
  persist_mode = true,
  -- Terminal Direction
  direction = "float",
  -- Close on Exit
  close_on_exit = true,
  -- Default Shell
  shell = "fish",
  -- Auto Scroll
  auto_scroll = true,
  -- Floating Window Options
  float_opts = {
    border = "curved",
    winblend = 3,
    zindex = 99, -- Use a positive integer
    -- Adjust the position to the top right
    width = function(_term)
      local width = math.ceil(vim.o.columns / 2)
      _term.float_opts.col = vim.o.columns - 2
      return width
    end,
    height = function(_term)
      local height = math.ceil(vim.o.lines / 2)
      _term.float_opts.row = vim.o.lines - 2
      return height
    end,
  },
})
