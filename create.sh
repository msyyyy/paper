#!/bin/bash
source cd-help.sh
tmp_file="$RANDOM"
paper_file="paper.md"


function error_clean() {
    rm ${tmp_file}
    rm ${paper_file}
    exit $1
}

cat body-0.md >> ${tmp_file}
cat body-1.md >> ${tmp_file}
cat body-2.md >> ${tmp_file}
cat body-3.md >> ${tmp_file}
cat body-4.md >> ${tmp_file}

if [[ "$(uname)" == "Darwin" ]]; then
    sha="shasum -a 256 "
    flag="./flag-mac"
elif [[ "$(expr substr $(uname -s) 1 5)"=="Linux" ]];then
    sha="sha256sum "
    flag="./flag-win"
else
    flag="./flag-win"
fi
if [[ "$1" == "-flag" ]]; then
    $(${flag} ${tmp_file} ${tmp_file})
    if [[ $? -ne 0 ]]; then
        echo -e "error"
        error_clean $?
    fi
fi

echo "> create at:$(date) sha256:$(${sha} ${tmp_file})" > ${paper_file}

cat head.md >> ${paper_file}
echo -e "\n# 目 录\n[TOC]\n" >> ${paper_file}
cat ${tmp_file} >> ${paper_file}
cat tail.md >> ${paper_file}
cat follow.md >> ${paper_file}
rm ${tmp_file}


echo -e "create file [SUCCEED]"
echo -e "字节:\t"$(wc -c ${paper_file})
echo -e "字数:\t"$(wc -m ${paper_file})
echo -e "行数:\t"$(wc -l ${paper_file})
echo -e "质量:\t优秀"
