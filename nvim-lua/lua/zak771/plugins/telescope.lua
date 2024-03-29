local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setupe then
  return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

telescope.setup({
  defauls = {
    mapping = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selectioin_next,
        ["<C-q>"] = actions.send_selectioin-to_qflist + actions.open_qflist,
      } 
    }
  }
})

telescope.load_extension("fzf")
