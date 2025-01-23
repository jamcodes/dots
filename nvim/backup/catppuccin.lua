-- DISABLED(jm):
if true then return {} end

return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  priority = 1000,
  opts = {
    integrations = {
      -- aerial = true,
      -- alpha = true,
      -- cmp = true,
      blink_cmp = true,
      dashboard = true,
      -- flash = true,
      -- fzf = true,
      grug_far = true,
      -- gitsigns = true,
      -- headlines = true,
      -- illuminate = true,
      indent_blankline = { enabled = true },
      -- leap = true,
      lsp_trouble = true,
      mason = true,
      markdown = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      -- navic = { enabled = true, custom_bg = "lualine" },
      -- neotest = true,
      -- neotree = true,
      -- noice = true,
      -- notify = true,
      semantic_tokens = true,
      -- snacks = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
    background = {
      dark = "mocha",
      light = "latte",
    },
    -- highlight_overrides = {
    --   mocha = function(C)
    --     return {
    --       FlashLabel = { fg = C.base, bg = C.red, style = { "bold" } },
    --     }
    --   end,
    --   frappe = function(C)
    --     return {
    --       FlashLabel = { fg = C.base, bg = C.red, style = { "bold" } },
    --     }
    --   end,
    -- },
  },
  init = function()
    vim.cmd.colorscheme "catppuccin"
  end
  -- specs = {
  --   {
  --     "akinsho/bufferline.nvim",
  --     optional = true,
  --     opts = function(_, opts)
  --       if (vim.g.colors_name or ""):find("catppuccin") then
  --         opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
  --       end
  --     end,
  --   },
  -- },
}