lua require('basic')
lua require('keybindings')
lua require('plugins')
lua require("plugin-config/nvim-tree")
lua require('plugin-config/bufferline')
lua require('plugin-config/coderunner')
lua require('lsp/setup')
set background=dark
colorscheme tokyonight


"*#查找可视模式选中的文本
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
