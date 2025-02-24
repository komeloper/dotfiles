#!/bin/bash

set -eux

DOT_DIRECTORY=$(cd $(dirname $0); pwd)
# SPECIFY_FILES="aaa bbb"
SPECIFY_FILES=""


for f in .??* ${SPECIFY_FILES}
do
    # 対象外のファイル、ディレクトリを設定
    [[ ${f} == ".git" ]] && continue
    [[ ${f} == ".DS_Store" ]] && continue

    # パス整形
    TARGET="${DOT_DIRECTORY}/${f}"

    # シンボリックリンクを作成
    if [ -f ${TARGET} ]; then
        ln -sfnv ${TARGET} ${HOME}/${f}

    else
        ln -sfnv ${TARGET} ${HOME}
    fi

    echo ${f}

done

exit 0
