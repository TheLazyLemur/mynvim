return {
	{
		"tpope/vim-sleuth",
	},
	{
		"tpope/vim-sensible"
	},
	{
		"tpope/vim-unimpaired"
	},
	{
		'numToStr/Comment.nvim',
		lazy = false,
		config = function()
			require('Comment').setup()
		end
	}
}
