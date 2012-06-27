" ----------------------------------------------------------------------------------------------------
" @file         plugins.vim
" @description  Plugins settings
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" FuzzyFinder settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>o :FufFileWithCurrentBufferDir<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>t :FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>p :FufCoverageFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>a :FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>b :FufBuffer<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>, :FufBuffer<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>l :FufLine<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>T :FufRenewCache<CR>:FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>m :FufMruFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
let g:fuf_modesDisable = []
let g:fuf_keyPreview = '<C-k>'
let g:fuf_buffer_keyDelete = '<C-d>'
let g:fuf_keyOpenTabpage = '<S-CR>'
let g:fuf_keyOpenVsplit = ''
let g:fuf_infoFile = '~/.vim-local/.vimfuf'
let g:fuf_file_prompt = ' file → '
let g:fuf_coveragefile_prompt = ' cfile → '
let g:fuf_buffer_prompt = 'buffer → '
let g:fuf_buffer_prompt = 'buffer → '
let g:fuf_line_prompt = 'line → '
let g:fuf_mrufile_prompt = 'mru → '
let g:fuf_previewHeight = 0
let g:fuf_promptHighlight = "User8"
let g:fuf_file_exclude = '\v\~$|.sass-cache|Gemfile\.lock|.DS_Store|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
" }}}

" Supertab settings {{{
" ----------------------------------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = '<c-p>'
" }}}

" YankRing {{{
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
map <Leader>y :YRShow<CR>
autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline
" }}}

" BufExplorer settings {{{
" ----------------------------------------------------------------------------------------------------
let g:bufExplorerSortBy='number'
" }}}

" Rails.vim settings {{{
" ----------------------------------------------------------------------------------------------------
nmap <Leader>rc :Rcontroller<CR>
nmap <Leader>rv :Rview<CR>
nmap <Leader>rm :Rmodel<CR>
nmap <Leader>1 :Rmodel<CR>
nmap <Leader>2 :Rview<CR>
nmap <Leader>3 :Rcontroller<CR>
let g:rails_statusline=0
" }}}

" SyntaxAttr settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>a :call SyntaxAttr()<CR>
" }}}

" vim-git-branch-info settings {{{
" ----------------------------------------------------------------------------------------------------
let g:git_branch_status_head_current=1
let g:git_branch_status_text=""
let g:git_branch_status_around=""
let g:git_branch_status_nogit=""
" }}}

" zencoding settings {{{
" ----------------------------------------------------------------------------------------------------
let g:user_zen_leader_key = ';'
let g:user_zen_expandabbr_key = ';;'
let g:user_zen_settings = {
\  'indentation': '  ',
\  'css' : {
\    'snippets' : {
\      'd:i': 'display:inline;',
\      'h:1': 'height:1%;',
\      'fs': 'font-size:|%;',
\      'fy': 'font-style:|;',
\      'di' : 'display:|;',
\      'bo' : 'border:|;',
\      'bo:n' : 'border:none;',
\      'bot' : 'border-top:|;',
\      'bob' : 'border-bottom:|;',
\      'bor' : 'border-right:|;',
\      'bol' : 'border-left:|;',
\      'ba' : 'background:#|;',
\      'bu' : 'background:url("|") no-repeat top left;',
\      'pa' : 'padding:|;',
\      'ma' : 'margin:|;',
\      'he' : 'height:|;',
\      'wi' : 'width:|;',
\      'co' : 'color:#|;'
\    },
\  },
\  'javascript' : {
\    'snippets' : {
\      'fu' : "function() {\n\t|\n}",
\      'fe' : "function(e) {\n\t|\n}",
\      'cl' : 'console.log(|);',
\      'al' : 'alert(|);',
\      'rf' : 'return false;',
\    },
\  },
\  'javascript.jquery' : {
\    'extends' : 'javascript',
\  },
\  'ruby' : {
\    'snippets' : {
\      'l' : 'Rails.logger.info |',
\      'e' : '#{|}',
\    },
\  },
\  'haml' : {
\    'extends' : 'ruby',
\  },
\  'eruby' : {
\    'extends' : 'ruby',
\  },
\}
" }}}

" CtrlP settings {{{
"map <Leader>o :CtrlP<CR>
"map <Leader>t :CtrlPCurWD<CR>
"map <Leader>T ::CtrlPClearCache<CR>:CtrlPCurWD<CR>
"map <Leader>, :CtrlPBuffer<CR>
"map <Leader>m :CtrlPMRUFiles<CR>

let g:ctrlp_by_filename = 0
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_working_path_mode = 1
let g:ctrlp_status_func = { 'main': 'Function_Name' }
let g:ctrlp_extensions = []
let g:ctrlp_regexp = 0

function! Function_Name(focus, byfname, regex, prev, item, next, marked)
  return "%1* CtrlP (".a:item.") %2*"
endfunction

hi link CtrlPMatch Identifier
hi link CtrlPLinePre Comment
hi link CtrlPPrtBase Comment
hi link CtrlPPrtText Identifier
hi link CtrlPPrtCursor Comment
hi link CtrlPTabExtra User1
hi link CtrlPMode1 User1
hi link CtrlPMode2 User1
hi link CtrlPStats User1
" }}}

" vim-padrino settings {{{
let g:padrino_statusline=0
" }}}
