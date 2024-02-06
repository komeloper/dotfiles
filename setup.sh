DOT_DIRECTORY="${HOME}/dotfiles"
SPECIFY_FILES=""

for f in .??* ${SPECIFY_FILES}
do
    # 対象外のファイル、ディレクトリを設定
    [[ ${f} == ".git" ]] && continue
    [[ ${f} == ".DS_Store" ]] && continue


    # シンボリックリンクを作成
    ln -sfnv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
    echo ${f}

done

exit 0
