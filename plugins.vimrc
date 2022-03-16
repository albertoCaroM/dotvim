" vim: syntax=vim fdm=marker ts=2 sts=2 sw=2 fdl=0
let g:plug_threads=16
let g:plug_timeout=600
let g:plug_retries=2

let $GIT_SSL_NO_VERIFY = 'true'
let $GIT_TERMINAL_PROMPT = 0

Plug 'haya14busa/incsearch.vim' "{{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"}}}

Plug 'sheerun/vim-polyglot' "{{{
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
"}}}

Plug 'junegunn/vim-plug'

Plug 'chase/vim-ansible-yaml'


Plug 'honza/vim-snippets'
Plug 'junegunn/vim-peekaboo'



Plug 'jpalardy/vim-slime'

" Plug 'dense-analysis/ale'
" if has('nvim')

"   Plug 'scrooloose/syntastic' "{{{
"   let g:syntastic_error_symbol = '✗'
"   let g:syntastic_style_error_symbol = '✠'
"   let g:syntastic_warning_symbol = '∆'
"   let g:syntastic_style_warning_symbol = '≈'
"   "}}}
"
" else
"   Plug 'scrooloose/syntastic' "{{{
"   let g:syntastic_error_symbol = '✗'
"   let g:syntastic_style_error_symbol = '✠'
"   let g:syntastic_warning_symbol = '∆'
"   let g:syntastic_style_warning_symbol = '≈'
"   "}}}
" endif

Plug 'vim-scripts/wombat256.vim'

Plug 'vim-scripts/matchit.zip'

" Plug 'tpope/vim-abolish'

Plug 'Raimondi/delimitMate'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'rking/ag.vim'

Plug 'ctrlpvim/ctrlp.vim' 
let g:ctrlp_clear_cache_on_exit=1
let g:ctrlp_max_height=40
let g:ctrlp_show_hidden=1
let g:ctrlp_follow_symlinks=1
let g:ctrlp_max_files=20000
let g:ctrlp_cache_dir=g:VIMPATH .'/ctrlp'
let g:ctrlp_reuse_window='startify'
let g:ctrlp_extensions=['funky']
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/]\.(git|hg|svn|idea)$',
      \ 'file': '\v\.DS_Store$'
      \ }
if executable('ag')
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
endif
"
" nmap \ [ctrlp]
nnoremap [ctrlp] <nop>
"
" nnoremap [ctrlp]t :CtrlPBufTag<cr>
" nnoremap [ctrlp]T :CtrlPTag<cr>
" nnoremap [ctrlp]l :CtrlPLine<cr>
" nnoremap [ctrlp]o :CtrlPFunky<cr>
" nnoremap [ctrlp]b :CtrlPBuffer<cr>
command! Buffers  :CtrlPBuffer
nnoremap <leader>b :Buffers<cr>
command! MRU      :CtrlPMRUFiles
" 

Plug 'noahfrederick/vim-skeleton' "{{{
let g:skeleton_template_dir = g:VIMPATH . "/templates"
let g:skeleton_replacements = {}
function! g:skeleton_replacements.CHEADERNAME()
  let s:inc = toupper(fnamemodify(expand("%"), ':p:.:r:gs?/?_?'))
  return s:inc."_H_"
endfunction
"}}}

Plug 'vim-scripts/doxygen-support.vim'

Plug 'vim-scripts/DoxygenToolkit.vim' "{{{

let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName= g:author
"}}}

Plug 'mhinz/vim-signify'

Plug 'tpope/vim-endwise'

Plug 'terryma/vim-expand-region' "{{{
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"}}}

Plug 'terryma/vim-multiple-cursors',{'tag':'b1121df3c627dc3dc21356ba440e68b9458c083a'} "{{{
let g:multi_cursor_exit_from_insert_mode = 0
"}}}

Plug 'tomtom/tcomment_vim'
"Plug 'tpope/vim-commentary'

Plug 'chrisbra/NrrwRgn'

Plug 'vim-airline/vim-airline'  "{{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '¦'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffer_nr_format = '%s: '
let g:airline#extensions#tabline#fnamemod = ':p:'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnametruncate = 0
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
"}}}

Plug 'mbbill/undotree' "{{{
"autocmd MyAutoCmd VimEnter * UndotreeToggle
let g:undotree_WindowLayout='botright'
let g:undotree_SetFocusWhenToggle=1
nnoremap <silent> <F5> :UndotreeToggle<CR>
"}}}

Plug 'nathanaelkane/vim-indent-guides' "{{{
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=3
" let g:indent_guides_auto_colors=0
" function! s:indent_set_console_colors()
"   hi IndentGuidesOdd ctermbg=235
"   hi IndentGuidesEven ctermbg=236
" endfunction
" autocmd MyAutoCmd VimEnter,Colorscheme * call s:indent_set_console_colors()
"}}}

Plug 'christoomey/vim-tmux-navigator'

Plug 'wellle/tmux-complete.vim' "{{{
let g:tmuxcomplete#trigger = 'omnifunc'
"}}}

Plug 'aklt/plantuml-syntax' "{{{
let g:plantuml_executable_script='java -jar /opt/plantuml/plantuml.jar'
"let g:plantuml_executable_script='java -jar c:\utils\plantuml\plantuml.jar'
au FileType * execute 'setlocal dict+='.g:VIMPATH .'/words/' .&filetype.'.adoc'
"}}}

" Plug 'bufkill.vim'
Plug 'mhinz/vim-startify' "{{{

let g:startify_session_dir = VIMPATH . '/sessions'
let g:startify_change_to_vcs_root = 1
let g:startify_show_sessions = 1
"}}}
"
Plug 'embear/vim-localvimrc'

Plug 'hail2u/vim-css3-syntax'

Plug 'jelera/vim-javascript-syntax'

Plug 'cespare/vim-toml',{'for': 'toml'}

Plug 'elzr/vim-json',{'for': 'json'}

" Plug 'tpope/vim-sleuth'

Plug 'vim-scripts/wombat256.vim'

Plug 'vim-scripts/a.vim' , { 'for' : ['c' , 'cpp'] }

Plug 'chrisbra/vim-diff-enhanced' "{{{
let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
"}}}

Plug 'majutsushi/tagbar' "{{{
nnoremap<leader>t :TagbarToggle<cr>
"}}}

Plug 'ryanoasis/vim-devicons'   "{{{
set encoding=utf8
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:airline_powerline_fonts = 1
"}}}


Plug 'tmux-plugins/vim-tmux-focus-events' "{{{
let g:formatterpath = ['/usr/bin/clang-format-3.8', '']
"}}}


Plug 'mhartington/oceanic-next'

Plug 'scrooloose/nerdtree' "{{{

"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


autocmd StdinReadPre * let s:std_in=1
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
" call NERDTreeHighlightFile('cpp', 'green', 'none', 'green', '#141e23')x"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#141e23')
call NERDTreeHighlightFile('toml', 'Magenta', 'none', '#ff00ff', '#141e23')
call NERDTreeHighlightFile('cpp', 'yellow', 'none', '#d8a235', 'none')
call NERDTreeHighlightFile('json', 'green', 'none', '#d8a235', 'none')

"}}}

Plug 'jistr/vim-nerdtree-tabs' "{{{
let g:tex_fold_enabled=1
let g:vimsyn_folding='af'
let g:xml_syntax_folding = 1
let g:php_folding = 1
let g:perl_fold = 1
let g:cpp_fold = 1
let g:vim_fold = 1


"}}}

Plug 'easymotion/vim-easymotion'"{{{
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"}}}


Plug 'tpope/vim-dispatch'



Plug 'jreybert/vimagit'

function! AsciidocEnableSyntaxRanges()
  " source block syntax highlighting
  if exists('g:loaded_SyntaxRange')
    for lang in ['c', 'python', 'vim', 'javascript', 'cucumber', 'xml', 'typescript', 'sh', 'java', 'cpp', 'sh']
      call SyntaxRange#Include(
            \  '\c\[source\s*,\s*' . lang . '.*\]\s*\n[=-]\{4,\}\n'
            \, '\]\@<!\n[=-]\{4,\}\n'
            \, lang, 'NonText')
    endfor

    call SyntaxRange#Include(
          \  '\c\[source\s*,\s*gherkin.*\]\s*\n[=-]\{4,\}\n'
          \, '\]\@<!\n[=-]\{4,\}\n'
          \, 'cucumber', 'NonText')
  endif
endfunction"
call AsciidocEnableSyntaxRanges()
"}}}

Plug 'tpope/vim-markdown' "{{{

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']


function! MarkdownEnableSyntaxRanges()
  " source block syntax highlighting
  if exists('g:loaded_SyntaxRange')
    for lang in ['c', 'python', 'vim', 'javascript', 'cucumber', 'xml', 'typescript', 'sh', 'java', 'cpp', 'sh', 'php', 'yaml']
      call SyntaxRange#Include(
            \  '^```' . lang . '$'
            \, '^```$'
            \, lang, 'NonText')
    endfor

    " exception for gherkin, since the syntax file is named cucumber
    call SyntaxRange#Include(
          \  '^```gherkin$'
          \, '^```$'
          \, 'cucumber', 'NonText')
  endif
endfunction

call MarkdownEnableSyntaxRanges()

"}}}

Plug 'Konfekt/FastFold' "{{{
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
"}}}


Plug 'editorconfig/editorconfig-vim'

Plug 'rhysd/vim-clang-format' "{{{
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
"}}}
" Plug 'tpope/vim-dispatch'


Plug 'dense-analysis/ale' "{{{
let g:airline#extensions#ale#enabled = 1

""}}}


" Plug 'ciaranm/googletest-syntax'

