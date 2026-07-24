local function navigate(direction, tmux_direction)
  if vim.fn.winnr(direction) ~= vim.fn.winnr() then
    vim.cmd("wincmd " .. direction)
  elseif vim.env.TMUX then
    vim.fn.system({ "tmux", "select-pane", tmux_direction })
  end
end

return {
	"christoomey/vim-tmux-navigator",
	lazy = false,
	keys = {
		{ "<C-A-Left>", function() navigate("h", "-L") end, desc = "Navigate left" },
		{ "<C-A-Right>", function() navigate("l", "-R") end, desc = "Navigate right" },
		{ "<C-A-Down>", function() navigate("j", "-D") end, desc = "Navigate down" },
		{ "<C-A-Up>", function() navigate("k", "-U") end, desc = "Navigate up" },
	},
}
