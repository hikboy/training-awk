#This file is like sed

#awk -Fs '/pattern/ {action}' input-file
#awk -Fs '{action}' input-file
#awk -Fs -f myscript.awk input-file
#awk -f myscript.awk input-file
#
#awk -F: '/mail/ {print $1}' $1
#
#awk program structure
#1. Begin Block
#BEGIN { awk-commands }
#
#2. Body Block
#/pattern/ {action}
#
#3. End Block
#END { awk-commands }
#

#awk 'BEGIN { FS=":";print " ----header----"} \
#/mail/ {print $1} \
#END { print "----footer----"}' $1

#awk '{print}' $1
#awk '{print $0}' $1

#awk '{print $2}' $1

#awk -F ',' '{print $2}' $1
#awk -F "," '{print $2}' $1
#awk -F, '{print $2}' $1

#awk -F ',' 'BEGIN \
#{print  "------\nName\tTitle\n-----------"}\
#{print $2, "\t",$3;}
#END {print  "----------------"; }' $1

#awk -F ',' '/Manager/ {print $2,  $3}' $1
awk -F ',' '/^102/ {print "Emp  id 102 is", $2}' $1
