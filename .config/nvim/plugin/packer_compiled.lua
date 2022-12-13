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
local package_path_str = "/home/penguin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/penguin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/penguin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/penguin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/penguin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    after = { "nvim-cmp" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    config = { "\27LJ\2\nu\0\0\3\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\1\0\1\fflavour\nmocha\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    after = { "LuaSnip" },
    after_files = { "/home/penguin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n¦\2\0\0\5\0\19\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0034\4\0\0=\4\15\0035\4\16\0=\4\17\3=\3\18\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\0\1\0\2\tleft\5\nright\5\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    after = { "nvim-lspconfig" },
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÙ\4\1\0\n\0%\0F6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\tüÿB\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\26\0B\a\2\2=\a\27\6B\4\2\2=\4\14\0039\4\b\0009\4\28\0044\6\3\0005\a\29\0>\a\1\6B\4\2\2=\4\28\0035\4\"\0006\5\0\0'\a\30\0B\5\2\0029\5\31\0055\a \0004\b\0\0=\b!\aB\5\2\2=\5#\4=\4$\3B\1\2\1K\0\1\0\15formatting\vformat\1\0\0\tmenu\1\0\3\tmode\16symbol_text\18ellipsis_char\b...\rmaxwidth\3\30\15cmp_format\flspkind\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nö\6\0\2\b\0/\0š\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0006\6\0\0009\6\5\0069\6\6\0069\6\a\0065\a\b\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\n\0006\6\0\0009\6\5\0069\6\6\0069\6\v\0065\a\f\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\r\0006\6\0\0009\6\14\0069\6\15\0065\a\16\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\17\0006\6\0\0009\6\14\0069\6\18\0065\a\19\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\20\0006\6\0\0009\6\5\0069\6\6\0069\6\21\0065\a\22\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\23\0006\6\0\0009\6\5\0069\6\6\0069\6\24\0065\a\25\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\26\0006\6\0\0009\6\5\0069\6\6\0069\6\27\0065\a\28\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\29\0006\6\0\0009\6\5\0069\6\6\0069\6\30\0065\a\31\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5 \0006\6\0\0009\6\5\0069\6\6\0069\6!\0065\a\"\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5#\0006\6\0\0009\6\5\0069\6\6\0069\6$\0065\a%\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5&\0006\6\0\0009\6\5\0069\6\6\0069\6'\0065\a(\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5)\0006\6\0\0009\6\14\0069\6*\0065\a+\0=\1\t\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5,\0006\6\0\0009\6\5\0069\6\6\0069\6-\0065\a.\0=\1\t\aB\2\5\1K\0\1\0\1\0\0\15references\a[R\1\0\0\15open_float\a[d\1\0\0\20type_definition\a[t\1\0\0\vrename\a[r\1\0\0\19signature_help\a[k\1\0\0\19implementation\a[g\1\0\0\16code_action\agc\1\0\0\vformat\6=\1\0\0\nhover\6K\1\0\0\14goto_prev\agN\1\0\0\14goto_next\15diagnostic\agn\1\0\0\16declaration\agD\vbuffer\1\0\0\15definition\bbuf\blsp\agd\6n\bset\vkeymap\bvim»\3\1\0\v\0\21\00006\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\4\0016\3\0\0009\3\1\0039\3\2\0039\3\5\0035\4\6\0B\1\3\2=\1\3\0006\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\4\0016\3\0\0009\3\1\0039\3\2\0039\3\b\0035\4\t\0B\1\3\2=\1\a\0006\0\n\0005\2\v\0B\0\2\4H\3\15€6\5\f\0'\a\r\0B\5\2\0028\5\4\0059\5\14\0055\a\17\0006\b\f\0'\n\15\0B\b\2\0029\b\16\bB\b\1\2=\b\18\a3\b\19\0=\b\20\aB\5\2\1F\3\3\3R\3ï\127K\0\1\0\14on_attach\0\17capabilities\1\0\0\25default_capabilities\17cmp_nvim_lsp\nsetup\14lspconfig\frequire\1\4\0\0\18rust_analyzer\fpyright\bhls\npairs\1\0\1\vborder\vsingle\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\vsingle\nhover\twith\23textDocument/hover\rhandlers\blsp\bvim\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÍ\2\0\0\b\0\20\0\0286\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\0035\4\t\0005\5\b\0=\5\n\4=\4\v\3B\1\2\0019\1\f\0'\3\5\0B\1\2\0016\1\r\0009\1\14\0019\1\15\1'\3\16\0'\4\17\0006\5\0\0'\a\18\0B\5\2\0029\5\19\5B\1\4\1K\0\1\0\15find_files\22telescope.builtin\n<C-c>\6n\bset\vkeymap\bvim\19load_extension\rdefaults\18layout_config\1\0\0\1\0\1\18preview_width\0032\15extensions\1\0\0\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\nsetup\14telescope\frequire\0" },
    keys = { { "", "<C-c>" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/penguin/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nu\0\0\3\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\1\0\1\fflavour\nmocha\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n¦\2\0\0\5\0\19\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0034\4\0\0=\4\15\0035\4\16\0=\4\17\3=\3\18\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\1\2\0\0\rfiletype\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\0\1\0\2\tleft\5\nright\5\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <C-c> <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-c>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType lua ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'nvim-treesitter', 'cmp-nvim-lsp'}, { ft = "haskell" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'nvim-treesitter', 'cmp-nvim-lsp'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'nvim-treesitter', 'cmp-nvim-lsp'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
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
