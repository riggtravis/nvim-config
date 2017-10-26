if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/riggt/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/riggt/.config/nvim/dein'
let g:dein#_runtime_path = '/home/riggt/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/riggt/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/home/riggt/.config/nvim,/etc/xdg/nvim,/home/riggt/.local/share/nvim/site,/usr/local/share/nvim/site,/home/riggt/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/home/riggt/.config/nvim/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/share/nvim/runtime,/home/riggt/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/riggt/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/riggt/.config/nvim/after'
filetype off
