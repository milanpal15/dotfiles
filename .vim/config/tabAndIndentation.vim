
"tabs and indenting 
"tabstop number of spaces a tab in the text stands for 
set ts=4

"shiftwidth number of spaces used for each step of indent 
set sw=4

"list of number of spaces a tab counts for vartabstop
set vts=4

"varsoftabstop list of number of spaces a soft tabsstop counts for
set vsts=2

"smarttab a tab in an indent inserts shiftwidth spaces
"set nosta sta
set sta

"softtabstop if non-zero, number of spaces to insert for a tab
set sts=4

"shiftround round to 'shiftwidth' for '<<' and '>>' 
"set nosr sr
set sr

"expandtab expand tabto spaces in insert mode
"set noet et

"autoindent automatically set the indent of a new line
"set noai ai
set ai

"smartindent do clever autoindenting
set si "nosi


"C language options {{{

"cindent enable specific indenting for c code
"set nocin cin
set cin 

"cinoptions options for c indenting
"set cino=
set cpoptions=ces$

"cinkeys keys that trigger c indenting in insert mode
"set cink=0{,0},0),0],:0#,!^F,o,O,e

"cinwords list of words that cause more c indent 
"set cinw=if,else,while,do,for,switch

"cinscopedecls list of sccope declaration names used by cino-g
"set cinsd=public,protected,private

"indentexpr expression used to obtainthe indent of a line
"set inde=

"}}}

"indent keys keys that trigger indenting with indentexpr in Insert
"mode
"set indk=0{,0},0),0],:,0#,!^F,o,O,e

"copyindent copy whitespaces for indenting from previous line
"set noci ci
set ci

"preserveindent preserve kind of whitespace when changing indent 
"set nopi pi
set pi

"lisp enable lisp mode
"set nolisp lisp

"lispwords words that change how lisp indenting works
"set lw=defun,define,defmacro,set!,lambda,if,case,let,flet,let*,letrec,do,do*,define-syntax,let-syntax,letrec-syntax,destructuring-bind,defpackage,defparameter,defstruct,deftype,defvar,do-all-symbols,do-external-symbols,do-symbols,dolist,dotimes,ecase,etypecase,eval-when,labels,macrolet,multiple-value-bind,multiple-value-call,multiple-value-prog1,multiple-value-setq,prog1,progv,typecase,unless,unwind-protect,when,with-input-from-string,with-open-file,with-open-stream,with-output-to-string,with-package-iterator,define-condition,handler-bind,handler-case,restart-bind,restart-case,with-simple-restart,store-value,use-value,muffle-warning,abort,continue,with-slots,with-slots*,with-accessors,with-accessors*,defclass,defmethod,print-unreadable-object

""lispiotions for Lisp indenting
"set lop=

