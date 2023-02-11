local packer = require("packer")
local lsp_fts = {"rust", "python", "haskell", "cs"}

packer.startup({
  {

    {
      "wbthomason/packer.nvim",
      opt = true
    },

    {
      "catppuccin/nvim",
      as = "catppuccin",
      -- disable = true,
      config = function()
        require("catppuccin").setup({flavour = "mocha"})
        vim.cmd.colorscheme("catppuccin")
      end
    },

    {
      "nvim-treesitter/nvim-treesitter",
      event = "BufReadPre",
      ft = {"c", "cpp", "lua", "rust", "haskell", "python", "cs", "markdown"},
      config = function()
        require("nvim-treesitter.configs").setup {
          highlight = {enable = true}
        }
      end
    },
    
    {
      "nvim-telescope/telescope.nvim",
      keys = "<C-c>",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons"
      },
      tag = "0.1.0",
      config = function()
        local telescope = require("telescope")
        telescope.setup {
          defaults = {
            layout_config = {preview_width = 50}
          }
        }

        vim.keymap.set("n", "<C-c>", require("telescope.builtin").find_files)
      end
    },

    {
      "onsails/lspkind.nvim",
      ft = lsp_fts
    },

    {
      "hrsh7th/cmp-nvim-lsp",
      after = "lspkind.nvim"
    },
    
    {
      "L3MON4D3/LuaSnip",
      after = "cmp-nvim-lsp",
      -- ft = lsp_fts,
    },

    {
      "hrsh7th/nvim-cmp",
      after = "LuaSnip",
      requires = {{"saadparwaiz1/cmp_luasnip", after = 'nvim-cmp'}},
      config = function()
        local cmp = require("cmp")

        cmp.setup({
          snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
          },
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          },
          mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({select = true}),
          }),
          sources = cmp.config.sources({
            {name = "nvim_lsp"},
            {name = "luasnip"},
          }),
          formatting = {
            format = require("lspkind").cmp_format {
              preset = "codicons",
              mode = "symbol_text",
              -- menu = { -- buffer = "[Buffer]", nvim_lsp = "[LSP]",
                -- luasnip = "[LuaSnip]", nvim_lua = "[Lua]",
                -- latex_symbols = "[Latex]", },
              maxwidth = 30,
              ellipsis_char = "..."
            },
          }
        })
      end
    },

    {
      "neovim/nvim-lspconfig",
      after = "nvim-cmp",
      config = function()
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
          vim.lsp.handlers.hover, {border = "single"})
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
            vim.lsp.handlers.signature_help, {border = "single" }) 

        for _, server in pairs({"rust_analyzer", "pyright", "hls", "omnisharp"}) do

          require("lspconfig")[server].setup {
            capabilities = require("cmp_nvim_lsp").default_capabilities(),

            on_attach = function(client, bufnr)

              vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = bufnr})
              vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer = bufnr})
              vim.keymap.set("n", "gn", vim.diagnostic.goto_next, {buffer = bufnr})
              vim.keymap.set("n", "gN", vim.diagnostic.goto_prev, {buffer = bufnr})
              vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = bufnr})
              vim.keymap.set("n", "=", vim.lsp.buf.format, {buffer = bufnr})

              vim.keymap.set("n", "gc", vim.lsp.buf.code_action, {buffer = bufnr})

              vim.keymap.set("n", "[g", vim.lsp.buf.implementation, {buffer = bufnr})
              vim.keymap.set("n", "[k", vim.lsp.buf.signature_help, {buffer = bufnr})
              vim.keymap.set("n", "[r", vim.lsp.buf.rename, {buffer = bufnr})
              vim.keymap.set("n", "[t", vim.lsp.buf.type_definition, {buffer = bufnr})
              vim.keymap.set("n", "[d", vim.diagnostic.open_float, {buffer = bufnr})


              vim.keymap.set("n", "[R", vim.lsp.buf.references, {buffer = bufnr})
            end,
            cmd = server == "omnisharp" and {"dotnet", "/home/penguin/.omnisharp/bin/OmniSharp.dll"} or nil,
          }
        end
      end
    },

    {
      "lervag/vimtex",
      config = function()
        vim.g.vimtex_quickfix_enabled = 0
        vim.g.vimtex_view_general_viewer = "sumatrapdfwrapper"
        vim.g.vimtex_view_general_options = "-reuse-instance @pdf"
      end
    },

    {
      "nvim-lualine/lualine.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("lualine").setup {
          options = {
            theme = "catppuccin",
            -- component_separators = { left = "", right = ""},
            --section_separators = { left = "", right = ""},
          },
          sections = {
            lualine_a = {"mode"},
            lualine_x = {"filetype"},
            lualine_y = {},
            lualine_z = {"location"}
          },
        }
      end
    }
  },

  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({border = "single"})
      end
    }
  }
})
