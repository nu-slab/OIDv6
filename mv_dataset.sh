#! /bin/zsh
#echo 引数の数:$#
rm -rf cls_list.txt
touch cls_list.txt
for i in `seq 3 $#`
do                                                                     
    echo $@[$i] >> cls_list.txt
    mkdir ./download_repo/$@[2]/$@[$i]/images
    mv ./download_repo/$@[2]/$@[$i]/*.jpg ./download_repo/$@[2]/$@[$i]/images/.
done                                                                   
