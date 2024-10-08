local opt = vim.opt
local g = vim.g

local options = {
    background = "light", -- light background color
    number = true, -- display line number, relativenumber or rnu also available
    textwidth = 120,
    colorcolumn = "+1"
}

for k, v in pairs(options) do opt[k] = v end
vim.cmd("let maplocalleader = ','") -- set maplocalleader for vimtex plugin

------------------------------------------------------------------------------------------------------------------------
-- airline and colorscheme
vim.cmd.colorscheme("PaperColor")
g.airline_powerline_fonts = 1 -- switch on powerline fonts in airline status bar
g["airline#extensions#tabline#enabled"] = 1 -- endable tabline
g["airline#extensions#tabline#formatter"] = "short_path_improved" -- display only filename in status bar
------------------------------------------------------------------------------------------------------------------------

-- disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- filetype issue handler
vim.cmd("filetype plugin indent on")

-- hide tilde symbol beyond end of buffer
vim.cmd([[
    if ! exists("g:gui_vimr")
    " Here goes some VimR specific settings like
    highlight EndOfBuffer ctermfg=bg
    endif
    let g:python3_host_prog = '/Users/dax/.virtualenvs/pynvim/bin/python3'
    ]])

-- set vimtex build dir
vim.cmd("let vimtex_compiler_latexmk = {'out_dir': 'build'}")
-- tex viewer
vim.g.vimtex_view_method = "sioyek"

-- export compile commands for c++
vim.g.cmake_link_compile_commands = 1

vim.cmd("let g:cmake_build_dir_location = expand('%:h') . '/build'")
vim.cmd("let $GTEST_COLOR = 1")

vim.cmd('let g:latexindent_opt="-m"')

-- settings for Neoformat
g['neoformat_try_formatprg'] = 1

-- zoxide
vim.cmd('let g:zoxide_prefix = "j"')

-- rainbow parenthese
vim.cmd('let g:rainbow_active = 1')
