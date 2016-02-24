set nu
set tags+=~/.vim/tags/cpp_src/tags " 设置tags搜索路径
set wildmode=longest,list " Ex命令自动补全采用bash方式"
syntax on
filetype plugin indent on

"中文乱码问题
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"win32系统,gvim menu 乱码修复
if has("win32")
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
	language messages zh_CN.utf-8
endif

"不自动折行
set nowrap

"配色
set t_Co=256
set background=dark
colorscheme molokai

set cursorline

"statusline
set statusline=[%F]%y%r%m%*%=[%l/%L,%c][%p%%]
set laststatus=2


map <C-n> :NERDTree<CR>

" pathongen
execute pathogen#infect()

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type="name"

" omnicppcomplete
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2 " search namespaces in the current buffer and in included files
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"]"
