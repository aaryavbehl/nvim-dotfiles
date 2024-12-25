return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup {
      theme = "hyper",  -- Set the theme to hyper (or your desired theme)
      config = {
        header = {},  -- Clear the custom header/logo completely

        shortcut = {
          {
            desc = " Find File",
            group = "@keyword",
            key = "f",
            action = "Telescope find_files",
          },
          {
            desc = " Update Plugins",
            group = "@property",
            key = "u",
            action = "Lazy update",
          },
          {
            desc = "鈴Exit",
            group = "@error",
            key = "q",
            action = "qa",
          },
        },
        packages = { enable = true }, -- Display loaded plugins count
        project = {
          enable = true,
          limit = 5,
          icon = " ",
          label = "Projects",
          action = function(path)
            vim.cmd("Telescope find_files cwd=" .. path)
          end,
        },
        mru = { enable = true, limit = 8, icon = " ", label = "Recent Files" },
        footer = { "🚀 Ready to code!" }, -- Custom footer
      },
    }
  end,
}
