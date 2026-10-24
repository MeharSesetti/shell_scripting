#!/bin/bash

#testing on 24th Oct,2026

#so here what will happen is like when user pass 2 arguments while executing the shell .... 

#First argument will directly assigns to $1 



echo "hi $1,  what are you doing? "
echo "$2, nothing..." 

echo "========== Adding as seperator ==============="

echo "What are the arguments passed , used @ : $@ "

echo "number of arguments passed, # : $#"

echo " Name of the sh, is printed with zero : $0 "

echo "$!"

echo "$$"
