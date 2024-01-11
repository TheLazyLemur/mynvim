return {
	"nomnivore/ollama.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
	lazy = true,
}
