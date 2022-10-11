local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = telescope.extensions.file_browser.actions

telescope.setup{
  defaults = {
    prompt_prefix = "🔎",
    selection_caret = " ",
    path_display = { "smart" },
  mappings = {
    i = {
      ["<CR>"] = actions.select_tab,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,

      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,

      ["<C-c>"] = actions.close,

      ["<Down>"] = actions.move_selection_next,
      ["<Up>"] = actions.move_selection_previous,

      ["<C-t>"] = actions.select_default,

      ["<C-u>"] = actions.preview_scrolling_up,
      ["<C-d>"] = actions.preview_scrolling_down,

      ["<PageUp>"] = actions.results_scrolling_up,
      ["<PageDown>"] = actions.results_scrolling_down,

      ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
      ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
      ["<C-?"] = actions.which_key,
    },
    n = {
      ["<esc>"] = actions.close,
      ["<CR>"] = actions.select_tab,
      ["<C-t>"] = actions.select_default,

      ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
      ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,

      ["j"] = actions.move_selection_next,
      ["k"] = actions.move_selection_previous,

      ["<Down>"] = actions.move_selection_next,
      ["<Up>"] = actions.move_selection_previous,
      ["gg"] = actions.move_to_top,
      ["G"] = actions.move_to_bottom,

      ["<C-u>"] = actions.preview_scrolling_up,
      ["<C-d>"] = actions.preview_scrolling_down,

      ["<PageUp>"] = actions.results_scrolling_up,
      ["<PageDown>"] = actions.results_scrolling_down,

      ["?"] = actions.which_key,
    },
   },
   extensions = {
     file_browser = {
        theme = 'dropdown',
        hijack_netrw = true,
        mappings = {
          ['i'] = {
            ['<C-w>'] = function() vim.cmd('normal vbd') end,
          },
          ['n'] = {
            ['N'] = fb_actions.create,
            ['h'] = fb_actions.goto_parent_dir,
            ['/'] = function()
              vim.cmd('startinsert')
            end
          }
        }
      }
    },
  },
}

telescope.load_extension('file_browser')
telescope.load_extension('lazygit')

local opts = { silent = true, noremap = true }
local keymap = vim.keymap.set
