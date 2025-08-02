return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
        size = 10,
        open_mapping = [[<F7>]],
        shading_factor = 2,
        direction = "float",

	shell = 'C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe',
        float_opts = {
            border = "curved",
            highlights = {
                border = "Normal",
                background = "Normal",
            },
        },
    }) 

  end,
}
