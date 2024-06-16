-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/penguin/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/penguin/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/penguin/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/penguin/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/penguin/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    after_files = { "/home/penguin/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n©\2\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0034\4\0\0=\4\v\0035\4\f\0=\4\r\3=\3\14\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_a\1\0\4\14lualine_x\0\14lualine_y\0\14lualine_z\0\14lualine_a\0\1\2\0\0\tmode\foptions\1\0\2\foptions\0\rsections\0\1\0\2\17globalstatus\2\ntheme\fmoonfly\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    after = { "cmp_luasnip" },
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¯\6\1\0\n\0-\0R6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\t\0005\5\b\0=\5\n\4=\4\v\0035\4\15\0009\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\16\0049\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\17\4=\4\r\0039\4\18\0009\4\19\0049\4\20\0045\6\22\0009\a\18\0009\a\21\a)\t¸ˇB\a\2\2=\a\23\0069\a\18\0009\a\21\a)\t\4\0B\a\2\2=\a\24\0069\a\18\0009\a\25\aB\a\1\2=\a\26\0069\a\18\0009\a\27\aB\a\1\2=\a\28\0069\a\18\0009\a\29\a5\t\30\0B\a\2\2=\a\31\0069\a\18\0009\a \aB\a\1\2=\a!\0069\a\18\0009\a\"\aB\a\1\2=\a#\6B\4\2\2=\4\18\0039\4\f\0009\4$\0044\6\3\0005\a%\0>\a\1\0065\a&\0>\a\2\6B\4\2\2=\4$\0035\4*\0006\5\0\0'\a'\0B\5\2\0029\5(\0055\a)\0B\5\2\2=\5+\4=\4,\3B\1\2\1K\0\1\0\15formatting\vformat\1\0\1\vformat\0\1\0\4\vpreset\rcodicons\tmode\16symbol_text\18ellipsis_char\b...\rmaxwidth\3\30\15cmp_format\flspkind\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\t<C-e\15close_docs\n<C-d>\14open_docs\t<CR>\1\0\1\vselect\2\fconfirm\n<C-y>\nabort\14<C-space>\rcomplete\n<C-f>\n<C-b>\1\0\a\n<C-d>\0\n<C-b>\0\n<C-f>\0\14<C-space>\0\n<C-y>\0\t<C-e\0\t<CR>\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\2\15completion\0\18documentation\0\rbordered\vwindow\vconfig\tview\tdocs\1\0\1\tdocs\0\1\0\1\14auto_open\1\fsnippet\1\0\6\fmapping\0\vwindow\0\15formatting\0\fsources\0\tview\0\fsnippet\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nﬁ\a\0\2\b\0/\0ö\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0006\6\0\0009\6\5\0069\6\6\0069\6\a\0065\a\b\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\n\0006\6\0\0009\6\5\0069\6\6\0069\6\v\0065\a\f\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\r\0006\6\0\0009\6\14\0069\6\15\0065\a\16\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\17\0006\6\0\0009\6\14\0069\6\18\0065\a\19\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\20\0006\6\0\0009\6\5\0069\6\6\0069\6\21\0065\a\22\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\23\0006\6\0\0009\6\5\0069\6\6\0069\6\24\0065\a\25\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\26\0006\6\0\0009\6\5\0069\6\6\0069\6\27\0065\a\28\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\29\0006\6\0\0009\6\5\0069\6\6\0069\6\30\0065\a\31\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5 \0006\6\0\0009\6\5\0069\6\6\0069\6!\0065\a\"\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5#\0006\6\0\0009\6\5\0069\6\6\0069\6$\0065\a%\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5&\0006\6\0\0009\6\5\0069\6\6\0069\6'\0065\a(\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5)\0006\6\0\0009\6\14\0069\6*\0065\a+\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5,\0006\6\0\0009\6\5\0069\6\6\0069\6-\0065\a.\0=\1\t\aB\2\5\1K\0\1\0\1\0\1\vbuffer\0\15references\a[R\1\0\1\vbuffer\0\15open_float\a[d\1\0\1\vbuffer\0\20type_definition\a[t\1\0\1\vbuffer\0\vrename\a[r\1\0\1\vbuffer\0\19signature_help\a[k\1\0\1\vbuffer\0\19implementation\a[g\1\0\1\vbuffer\0\16code_action\agC\1\0\1\vbuffer\0\vformat\6=\1\0\1\vbuffer\0\nhover\6K\1\0\1\vbuffer\0\14goto_prev\agN\1\0\1\vbuffer\0\14goto_next\15diagnostic\agn\1\0\1\vbuffer\0\16declaration\agD\vbuffer\1\0\1\vbuffer\0\15definition\bbuf\blsp\agd\6n\bset\vkeymap\bvimœ\3\1\0\v\0\21\00006\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\4\0016\3\0\0009\3\1\0039\3\2\0039\3\5\0035\4\6\0B\1\3\2=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\4\0016\3\0\0009\3\1\0039\3\2\0039\3\b\0035\4\t\0B\1\3\2=\1\a\0006\0\n\0005\2\v\0B\0\2\4H\3\15Ä6\5\f\0'\a\r\0B\5\2\0028\5\4\0059\5\14\0055\a\17\0006\b\f\0'\n\15\0B\b\2\0029\b\16\bB\b\1\2=\b\18\a3\b\19\0=\b\20\aB\5\2\1F\3\3\3R\3Ô\127K\0\1\0\14on_attach\0\17capabilities\1\0\2\17capabilities\0\14on_attach\0\25default_capabilities\17cmp_nvim_lsp\nsetup\14lspconfig\frequire\1\3\0\0\18rust_analyzer\vclangd\npairs\1\0\1\vborder\vsingle\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\0" },
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\1\14highlight\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n¥\2\0\0\b\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\4=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0006\5\0\0'\a\15\0B\5\2\0029\5\16\5B\1\4\1K\0\1\0\15find_files\22telescope.builtin\n<C-c>\6n\bset\vkeymap\bvim\rdefaults\1\0\1\rdefaults\0\25file_ignore_patterns\1\2\0\0\17node_modules\18layout_config\1\0\2\25file_ignore_patterns\0\18layout_config\0\1\0\1\18preview_width\0032\nsetup\14telescope\frequire\0" },
    keys = { { "", "<C-c>" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-moonfly-colors"] = {
    config = { "\27LJ\2\n;\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\fmoonfly\16colorscheme\bcmd\bvim\0" },
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  vimtex = {
    config = { "\27LJ\2\nd\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\fzathura\23vimtex_view_method\28vimtex_quickfix_enabled\6g\bvim\0" },
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\nd\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\fzathura\23vimtex_view_method\28vimtex_quickfix_enabled\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n©\2\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0034\4\0\0=\4\v\0035\4\f\0=\4\r\3=\3\14\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_a\1\0\4\14lualine_x\0\14lualine_y\0\14lualine_z\0\14lualine_a\0\1\2\0\0\tmode\foptions\1\0\2\foptions\0\rsections\0\1\0\2\17globalstatus\2\ntheme\fmoonfly\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nﬁ\a\0\2\b\0/\0ö\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0006\6\0\0009\6\5\0069\6\6\0069\6\a\0065\a\b\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\n\0006\6\0\0009\6\5\0069\6\6\0069\6\v\0065\a\f\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\r\0006\6\0\0009\6\14\0069\6\15\0065\a\16\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\17\0006\6\0\0009\6\14\0069\6\18\0065\a\19\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\20\0006\6\0\0009\6\5\0069\6\6\0069\6\21\0065\a\22\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\23\0006\6\0\0009\6\5\0069\6\6\0069\6\24\0065\a\25\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\26\0006\6\0\0009\6\5\0069\6\6\0069\6\27\0065\a\28\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\29\0006\6\0\0009\6\5\0069\6\6\0069\6\30\0065\a\31\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5 \0006\6\0\0009\6\5\0069\6\6\0069\6!\0065\a\"\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5#\0006\6\0\0009\6\5\0069\6\6\0069\6$\0065\a%\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5&\0006\6\0\0009\6\5\0069\6\6\0069\6'\0065\a(\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5)\0006\6\0\0009\6\14\0069\6*\0065\a+\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5,\0006\6\0\0009\6\5\0069\6\6\0069\6-\0065\a.\0=\1\t\aB\2\5\1K\0\1\0\1\0\1\vbuffer\0\15references\a[R\1\0\1\vbuffer\0\15open_float\a[d\1\0\1\vbuffer\0\20type_definition\a[t\1\0\1\vbuffer\0\vrename\a[r\1\0\1\vbuffer\0\19signature_help\a[k\1\0\1\vbuffer\0\19implementation\a[g\1\0\1\vbuffer\0\16code_action\agC\1\0\1\vbuffer\0\vformat\6=\1\0\1\vbuffer\0\nhover\6K\1\0\1\vbuffer\0\14goto_prev\agN\1\0\1\vbuffer\0\14goto_next\15diagnostic\agn\1\0\1\vbuffer\0\16declaration\agD\vbuffer\1\0\1\vbuffer\0\15definition\bbuf\blsp\agd\6n\bset\vkeymap\bvimœ\3\1\0\v\0\21\00006\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\4\0016\3\0\0009\3\1\0039\3\2\0039\3\5\0035\4\6\0B\1\3\2=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\4\0016\3\0\0009\3\1\0039\3\2\0039\3\b\0035\4\t\0B\1\3\2=\1\a\0006\0\n\0005\2\v\0B\0\2\4H\3\15Ä6\5\f\0'\a\r\0B\5\2\0028\5\4\0059\5\14\0055\a\17\0006\b\f\0'\n\15\0B\b\2\0029\b\16\bB\b\1\2=\b\18\a3\b\19\0=\b\20\aB\5\2\1F\3\3\3R\3Ô\127K\0\1\0\14on_attach\0\17capabilities\1\0\2\17capabilities\0\14on_attach\0\25default_capabilities\17cmp_nvim_lsp\nsetup\14lspconfig\frequire\1\3\0\0\18rust_analyzer\vclangd\npairs\1\0\1\vborder\vsingle\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¯\6\1\0\n\0-\0R6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\t\0005\5\b\0=\5\n\4=\4\v\0035\4\15\0009\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\16\0049\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\17\4=\4\r\0039\4\18\0009\4\19\0049\4\20\0045\6\22\0009\a\18\0009\a\21\a)\t¸ˇB\a\2\2=\a\23\0069\a\18\0009\a\21\a)\t\4\0B\a\2\2=\a\24\0069\a\18\0009\a\25\aB\a\1\2=\a\26\0069\a\18\0009\a\27\aB\a\1\2=\a\28\0069\a\18\0009\a\29\a5\t\30\0B\a\2\2=\a\31\0069\a\18\0009\a \aB\a\1\2=\a!\0069\a\18\0009\a\"\aB\a\1\2=\a#\6B\4\2\2=\4\18\0039\4\f\0009\4$\0044\6\3\0005\a%\0>\a\1\0065\a&\0>\a\2\6B\4\2\2=\4$\0035\4*\0006\5\0\0'\a'\0B\5\2\0029\5(\0055\a)\0B\5\2\2=\5+\4=\4,\3B\1\2\1K\0\1\0\15formatting\vformat\1\0\1\vformat\0\1\0\4\vpreset\rcodicons\tmode\16symbol_text\18ellipsis_char\b...\rmaxwidth\3\30\15cmp_format\flspkind\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\t<C-e\15close_docs\n<C-d>\14open_docs\t<CR>\1\0\1\vselect\2\fconfirm\n<C-y>\nabort\14<C-space>\rcomplete\n<C-f>\n<C-b>\1\0\a\n<C-d>\0\n<C-b>\0\n<C-f>\0\14<C-space>\0\n<C-y>\0\t<C-e\0\t<CR>\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\2\15completion\0\18documentation\0\rbordered\vwindow\vconfig\tview\tdocs\1\0\1\tdocs\0\1\0\1\14auto_open\1\fsnippet\1\0\6\fmapping\0\vwindow\0\15formatting\0\fsources\0\tview\0\fsnippet\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-moonfly-colors
time([[Config for vim-moonfly-colors]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\fmoonfly\16colorscheme\bcmd\bvim\0", "config", "vim-moonfly-colors")
time([[Config for vim-moonfly-colors]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp_luasnip ]]
time([[Sequenced loading]], false)
-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <C-c> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-c>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-treesitter'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
