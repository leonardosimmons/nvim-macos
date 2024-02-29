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
local package_path_str = "/Users/leonardo.simmons/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/leonardo.simmons/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/leonardo.simmons/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/leonardo.simmons/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/leonardo.simmons/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\22\0\0\a\0G\0g6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3\"\0005\4#\0=\4$\0035\4&\0005\5%\0=\5'\0045\5(\0005\6)\0=\6*\5=\5+\0045\5,\0005\6-\0=\6*\5=\5.\4=\4/\3=\0030\0024\3\0\0=\0031\0025\0039\0005\0042\0005\0053\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\0044\5\0\0=\0057\0044\5\0\0=\0058\4=\4:\0035\4<\0005\5;\0=\5/\0045\5=\0=\5>\4=\0040\0034\4\0\0=\4!\3=\3?\0025\3@\0005\4B\0005\5A\0=\5/\4=\0040\3=\3C\0025\3F\0005\4D\0005\5E\0=\5/\4=\0040\3=\3\31\2B\0\2\1K\0\1\0\1\0\0\1\0\a\aga\17git_add_file\agc\15git_commit\6A\16git_add_all\agp\rgit_push\agr\20git_revert_file\agg\24git_commit_and_push\agu\21git_unstage_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\abd\18buffer_delete\6.\rset_root\1\0\3\18show_unloaded\2\21group_empty_dirs\1\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-p>\19move_cursor_up\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\v<down>\21move_cursor_down\1\0\0\1\0\n\a[g\22prev_git_modified\n<c-x>\17clear_filter\a]g\22next_git_modified\6D\27fuzzy_finder_directory\6H\18toggle_hidden\6f\21filter_on_submit\6.\rset_root\t<bs>\16navigate_up\6/\17fuzzy_finder\6#\17fuzzy_sorter\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\2\0\0\17node_modules\1\0\4\16hide_hidden\2\fvisible\1\20hide_gitignored\1\18hide_dotfiles\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\25\6t\16open_tabnew\6Z\21expand_all_nodes\6A\18add_directory\6>\16next_source\18<2-LeftMouse>\topen\6m\tmove\6c\tcopy\6R\frefresh\6S\15open_split\6p\25paste_from_clipboard\6s\16open_vsplit\6z\20close_all_nodes\6l\18focus_preview\6<\16prev_source\6x\21cut_to_clipboard\6C\23close_all_subnodes\6y\22copy_to_clipboard\6w\28open_with_window_picker\6?\14show_help\n<esc>\19revert_preview\6q\17close_window\6P\19toggle_preview\6d\vdelete\6r\vrename\t<cr>\topen\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3#\rposition\nright\rcommands\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\vstaged\b\rconflict\b\fignored\b\nadded\b✚\rmodified\b\fdeleted\b✖\frenamed\b\14untracked\b\runstaged\b\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\14highlight\20NeoTreeFileIcon\16folder_open\b\17folder_empty\b\18folder_closed\b\fdefault\6*\vindent\1\0\t\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\22expander_expanded\b\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\26sort_case_insensitive\1\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tmux-navigation"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/nvim-tmux-navigation",
    url = "https://github.com/alexghergh/nvim-tmux-navigation"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/leonardo.simmons/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\22\0\0\a\0G\0g6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3\"\0005\4#\0=\4$\0035\4&\0005\5%\0=\5'\0045\5(\0005\6)\0=\6*\5=\5+\0045\5,\0005\6-\0=\6*\5=\5.\4=\4/\3=\0030\0024\3\0\0=\0031\0025\0039\0005\0042\0005\0053\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\0044\5\0\0=\0057\0044\5\0\0=\0058\4=\4:\0035\4<\0005\5;\0=\5/\0045\5=\0=\5>\4=\0040\0034\4\0\0=\4!\3=\3?\0025\3@\0005\4B\0005\5A\0=\5/\4=\0040\3=\3C\0025\3F\0005\4D\0005\5E\0=\5/\4=\0040\3=\3\31\2B\0\2\1K\0\1\0\1\0\0\1\0\a\aga\17git_add_file\agc\15git_commit\6A\16git_add_all\agp\rgit_push\agr\20git_revert_file\agg\24git_commit_and_push\agu\21git_unstage_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\abd\18buffer_delete\6.\rset_root\1\0\3\18show_unloaded\2\21group_empty_dirs\1\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-p>\19move_cursor_up\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\v<down>\21move_cursor_down\1\0\0\1\0\n\a[g\22prev_git_modified\n<c-x>\17clear_filter\a]g\22next_git_modified\6D\27fuzzy_finder_directory\6H\18toggle_hidden\6f\21filter_on_submit\6.\rset_root\t<bs>\16navigate_up\6/\17fuzzy_finder\6#\17fuzzy_sorter\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\2\0\0\17node_modules\1\0\4\16hide_hidden\2\fvisible\1\20hide_gitignored\1\18hide_dotfiles\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\25\6t\16open_tabnew\6Z\21expand_all_nodes\6A\18add_directory\6>\16next_source\18<2-LeftMouse>\topen\6m\tmove\6c\tcopy\6R\frefresh\6S\15open_split\6p\25paste_from_clipboard\6s\16open_vsplit\6z\20close_all_nodes\6l\18focus_preview\6<\16prev_source\6x\21cut_to_clipboard\6C\23close_all_subnodes\6y\22copy_to_clipboard\6w\28open_with_window_picker\6?\14show_help\n<esc>\19revert_preview\6q\17close_window\6P\19toggle_preview\6d\vdelete\6r\vrename\t<cr>\topen\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3#\rposition\nright\rcommands\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\vstaged\b\rconflict\b\fignored\b\nadded\b✚\rmodified\b\fdeleted\b✖\frenamed\b\14untracked\b\runstaged\b\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\14highlight\20NeoTreeFileIcon\16folder_open\b\17folder_empty\b\18folder_closed\b\fdefault\6*\vindent\1\0\t\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\22expander_expanded\b\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\26sort_case_insensitive\1\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

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
