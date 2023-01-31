require('catppuccin').setup({
    disable_background = true
})

function ColorMyPencils(color) 
    color = color or "catppuccin-mocha"
    vim.cmd.colorscheme(color)
end

ColorMyPencils()
