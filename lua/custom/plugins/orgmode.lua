-- Orgmode clone written in Lua for Neovim 0.9+.
-- https://github.com/nvim-orgmode/orgmode

return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
      org_todo_keywords = { 'TODO(t)', 'ACTIVE(a)', 'NEEDS-DISCUSSION(e)', 'NEXT(n)', 'REPEATING(r)', 'WAITING(w)', '|', 'CANCELLED(c)', 'DONE(d)' },
    }

    -- NOTE: If you are using nvim-treesitter with `ensure_installed = "all"` option
    -- add `org` to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
