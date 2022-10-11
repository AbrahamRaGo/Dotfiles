local status, lualine = pcall(require, 'lualine')

if (not status) then return end

local diagnostics = {
	"diagnostics",
	--sources = { "nvim_diagnostic" },
	sections = { "error", "warn", "hint", "info" },
	symbols = { error = " ", warn = " ", hint = " ", info = " " },
	colored = true,
	update_in_insert = true,
	always_visible = true,
}

local diff = {
	"diff",
	colored = true,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

local mode = {
	"mode",
	fmt = function(str)
    if str == 'NORMAL' then
      return " " .. str
    end
    if str == 'INSERT' then
      return "פֿ " .. str
    end
    if str == 'REPLACE' then
      return " " .. str
    end
    if str == 'V-LINE' then
      return " " .. str
    end
    if str == 'VISUAL' then
      return " " .. str
    end
    if str == 'COMMAND' then
      return " " .. str
    end
	end,
}

local filetype = {
	"filetype",
	icons_enabled = true,
	icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
  icon = " "
}

local location = {
	"location",
	padding = 0,
}

local filename = {
  'filename',
  file_status = false,
  path = 1,
  shorting_target = 40,
}

lualine.setup {
  icons_enabled = true,
  theme = 'auto',
  component_separators = { left = '', right = ''},
  section_separators = { left = '', right = ''},
  disabled_filetypes = {'dashboard', 'Nvim-Tree', 'Outline', 'alpha'},
  always_divide_middle = true,
  globalstatus = false,
  sections = {
    lualine_a = {mode},
    lualine_b = {branch, diff},
    lualine_c = {filename},
    lualine_x = {diagnostics},
    lualine_y = {filetype},
    lualine_z = {'progress'},
  },
  inactive_sections = {
    lualine_a = {filename},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {}
}
