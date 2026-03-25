#!/usr/bin/env bash

f_ranking_comandos() {
cat ~/.bash_history | awk '{print $1}' | sort | uniq -c | sort -nr | head -10
return 0
}
f_ranking_comandos 
