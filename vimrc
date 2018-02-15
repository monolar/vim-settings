" Path to the bundle folder
let vimsettings_bundlepath = "~/.vim/bundle"
" Git username of vim-settings
let vimsettings_username = "monolar"

" Vundle setup
exec ":set runtimepath+=" . vimsettings_bundlepath . "/vundle/"
call vundle#begin(vimsettings_bundlepath)
Plugin 'gmarik/Vundle.vim'

" Include vim-settings
Plugin vimsettings_username . '/vim-settings'

" Load vim-plugins.vim and tie it to $VIMSETTINGS
" Load plugins first
let $VIMPLUGINS = vimsettings_bundlepath . "/vim-settings/vim-plugins.vim"
if filereadable(glob($VIMPLUGINS))
  exec ":so " . $VIMPLUGINS
  call vundle#end()
endif

" Load vim-settings.vim then - this allows plugins to be setup properly.
" This e.g. fixes issues with color-schemes (e.g. flazz/vim-colorschemes)
let $VIMSETTINGS = vimsettings_bundlepath . "/vim-settings/vim-settings.vim"
if filereadable(glob($VIMSETTINGS))
  exec ":so " . $VIMSETTINGS
endif

" vim-settings init helper
if exists("vimsettings_loaded")
  finish
endif
let vimsettings_loaded = 1
function! s:VimSettingsInit()
  :PluginInstall
  :bd
  :so $MYVIMRC
  :PluginInstall
  :bd
  :so $MYVIMRC
endfunction
command! -bar -nargs=0 VimSettingsInit call s:VimSettingsInit()
