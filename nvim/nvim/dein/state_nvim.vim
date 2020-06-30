if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/home/bdkech/.config/nvim,/etc/xdg/nvim,/home/bdkech/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/bdkech/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/bdkech/.config/nvim/after,/usr/share/vim/vimfiles,/home/bdkech/.config/nvim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/bdkech/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/bdkech/.config/nvim/dein'
let g:dein#_runtime_path = '/home/bdkech/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/bdkech/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/home/bdkech/.config/nvim,/etc/xdg/nvim,/home/bdkech/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/bdkech/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/home/bdkech/.config/nvim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/bdkech/.config/nvim/dein/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/bdkech/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/bdkech/.config/nvim/after,/usr/share/vim/vimfiles'
filetype off
