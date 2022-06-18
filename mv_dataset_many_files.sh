#! /bin/zsh
#echo 引数の数:$#
rm -rf cls_list.txt
touch cls_list.txt
for i in `seq 3 $#`
do                                                                     
    echo $@[$i] >> cls_list.txt
    rm -rf ./download_repo/$@[2]/$@[$i]/images
    mkdir ./download_repo/$@[2]/$@[$i]/images
    #mv ./download_repo/$@[2]/$@[$i]/*.jpg ./download_repo/$@[2]/$@[$i]/images/.
    #find ${ORI_PATH}/${i}/${j} -type f| xargs -i cp {} ${MERGE_PATH}/${i}/${j}/.
    find ./download_repo/$@[2]/$@[$i] -name "*.jpg" | xargs -i mv {} ./download_repo/$@[2]/$@[$i]/images/.
done                                                                   
