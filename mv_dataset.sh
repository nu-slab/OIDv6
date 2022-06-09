#! /bin/zsh
echo 引数の数:$#
for i in `seq 3 $#`
do                                                                     
    echo $@[$i]
    mkdir ./download_repo/$@[2]/$@[$i]/images
    mv ./download_repo/$@[2]/$@[$i]/*.jpg ./download_repo/$@[2]/$@[$i]/images/.
done                                                                   
