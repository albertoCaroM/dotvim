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

Plug 'junegunn/vim-easy-align'

Plug 'honza/vim-snippets'


Plug 'SirVer/ultisnips'   "{{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
 let g:UltiSnipsSnippetsDir=g:VIMPATH.'/snippets'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "Usnippets"]
"}}}

" Youcompleteme {{{
if !empty(glob("/usr/bin/python2")) 
  Plug 'Valloric/YouCompleteMe'  , { 'do': 'python2 install.py --clang-complete' } 
  let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
  let g:ycm_complete_in_comments_and_strings=0
  let g:ycm_collect_identifiers_from_comments_and_strings = 0
  let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
  let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
  let g:ycm_filetype_blacklist={'unite': 1}
  let g:ycm_min_num_of_chars_for_completion = 2
  let g:ycm_open_loclist_on_ycm_diags = 1
  noremap <leader>F :YcmCompleter FixIt<cr>

  command! YcmFixIt :YcmCompleter FixIt
  command! YcmGetDoc :YcmCompleter GetDoc
  command! YcmGoToInclude :YcmCompleter GoToInclude
  command! YcmGoToDeclaration :YcmCompleter GoToDeclaration
  command! YcmGoToDefinition :YcmCompleter GoToDefinition
else
  if !empty(glob("/usr/bin/python"))
  Plug 'Valloric/YouCompleteMe'  , { 'do': 'python install.py --clang-complete' }

    let g:ycm_path_to_python_interpreter = '/usr/bin/python'
    let g:ycm_complete_in_comments_and_strings=0
    let g:ycm_collect_identifiers_from_comments_and_strings = 0
    let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
    let g:ycm_filetype_blacklist={'unite': 1}
    let g:ycm_min_num_of_chars_for_completion = 2
    let g:ycm_open_loclist_on_ycm_diags = 1
    noremap <leader>F :YcmCompleter FixIt<cr>

    command! YcmFixIt :YcmCompleter FixIt
    command! YcmGetDoc :YcmCompleter GetDoc
    command! YcmGoToInclude :YcmCompleter GoToInclude
    command! YcmGoToDeclaration :YcmCompleter GoToDeclaration
    command! YcmGoToDefinition :YcmCompleter GoToDefinition
  endif
endif
"}}}

if has('nvim')
  " Plug 'benekastah/neomake' "{{{
  " autocmd MyAutoCmd BufWritePost,BufEnter *.c,*.h Neomake
  " autocmd MyAutoCmd InsertChange,TextChanged *.c,*.h update | Neomake
  "
  " autocmd! BufWritePost * Neomake
  " "}}}

  Plug 'scrooloose/syntastic' "{{{
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_style_error_symbol = '✠'
  let g:syntastic_warning_symbol = '∆'
  let g:syntastic_style_warning_symbol = '≈'
  "}}}

else
  Plug 'scrooloose/syntastic' "{{{
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_style_error_symbol = '✠'
  let g:syntastic_warning_symbol = '∆'
  let g:syntastic_style_warning_symbol = '≈'
  "}}}
endif

Plug 'vim-scripts/wombat256.vim'

Plug 'vim-scripts/matchit.zip'

Plug 'tpope/vim-abolish'

Plug 'Raimondi/delimitMate'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'rking/ag.vim'

Plug 'ctrlpvim/ctrlp.vim' "{{{
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
" "}}}

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

Plug 'junegunn/vim-easy-align'"{{{
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
"}}}

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

Plug 'bufkill.vim'

Plug 'mhinz/vim-startify' "{{{

let g:startify_session_dir = VIMPATH . '/sessions'
let g:startify_change_to_vcs_root = 1
let g:startify_show_sessions = 1
"}}}
"
Plug 'embear/vim-localvimrc'

Plug 'kshenoy/vim-signature'

Plug 'hail2u/vim-css3-syntax'

Plug 'jelera/vim-javascript-syntax'

Plug 'cespare/vim-toml',{'for': 'toml'}

Plug 'elzr/vim-json',{'for': 'json'}

Plug 'tpope/vim-sleuth'

Plug 'wesgibbs/vim-irblack'

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

Plug 'vim-scripts/SyntaxRange'

Plug 'tmux-plugins/vim-tmux-focus-events' "{{{
let g:formatterpath = ['/usr/bin/clang-format-3.8', '']
"}}}

Plug 'dhruvasagar/vim-table-mode'

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

Plug 'easymotion/vim-easymotion'

Plug 'vim-scripts/Conque-GDB' "{{{
let g:ConqueGdb_Leader = '-'
""}}}

Plug 'Valloric/MatchTagAlways'

Plug  'Xuyuanp/nerdtree-git-plugin'

Plug 'jreybert/vimagit'

Plug 'quark-zju/vim-cpp-auto-include' "{{{
command! Includes      :ruby CppAutoInclude::process
"}}}
"
Plug 'dagwieers/asciidoc-vim'

Plug 'vim-scripts/ingo-library'

Plug 'vim-scripts/SyntaxRange' "{{{

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

Plug 'mattn/webapi-vim'

Plug 'mattn/gist-vim' "{{{
let g:gist_show_privates = 1
let g:gist_post_private = 1
if has("mac")
let g:gist_clip_command = 'pbcopy'
  nmap mate :w<CR>:!mate %<CR>
elseif has("unix")
let g:gist_clip_command = 'xclip -selection clipboard'
elseif has("win32")
  " TODO
endif
"}}}

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'Konfekt/FastFold'

Plug 'tmhedberg/SimpylFold' "{{{
let g:SimpylFold_docstring_preview=1
"}}}

Plug 'nvie/vim-flake8' "{{{
let python_highlight_all=1
syntax on
"}}}

Plug 'jnurmine/Zenburn'

Plug 'altercation/vim-colors-solarized'

Plug 'vim-scripts/Pydiction'

Plug 'bronson/vim-trailing-whitespace'

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'Shougo/unite.vim'

Plug 'Shougo/neomru.vim'

Plug 'Shougo/unite-outline'

Plug 'tsukkee/unite-tag'

Plug 'mattn/unite-gist'

Plug 'thinca/vim-unite-history' "{{{
" Unite
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
" nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-n>   <Plug>(unite_select_next_line)
  imap <buffer> <C-p>   <Plug>(unite_select_previous_line)
endfunction
"}}}

Plug 'rhysd/vim-clang-format'

Plug 'rhysd/clever-f.vim'

Plug 'mtth/scratch.vim'

Plug 'google/vim-ft-bzl'

Plug 'editorconfig/editorconfig-vim'

Plug 'rhysd/vim-clang-format' "{{{
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
"}}}
Plug 'tpope/vim-dispatch'
Plug 'alepez/vim-gtest'"{{{
:let g:gtest#highlight_failing_tests = 1
"}}}

Plug 'ciaranm/googletest-syntax'

