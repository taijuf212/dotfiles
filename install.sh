echo " ------------ Homebrew ------------"
read -p "Homebrewをインストールしますか？ (y/n)" Answer < /dev/tty
case ${Answer} in
  y|Y) 

    echo "Install Homebrew..."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "インストールを完了しました" ;;

  n|N)
    echo "インストールをスキップしました" ;;

esac
echo " ------------ END ------------"

echo " ------------ zsh-completions ------------"
read -p "zsh-completionsをインストールしますか？ (y/n)" Answer < /dev/tty
case ${Answer} in
  y|Y) 

    echo "Install zsh-completions..."

    brew install zsh-completions

    echo "インストールを完了しました" ;;

  n|N)
    echo "インストールをスキップしました" ;;

esac
echo " ------------ END ------------"

echo " ------------ git-completion ------------"
read -p "git-completionをインストールしますか？ (y/n)" Answer < /dev/tty
case ${Answer} in
  y|Y) 

    echo "Install git-completion..."

    curl -o .git-completion.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

    echo "インストールを完了しました" ;;

  n|N)
    echo "インストールをスキップしました" ;;

esac
echo " ------------ END ------------"

echo " ------------ git-prompt ------------"
read -p "git-promptをインストールしますか？ (y/n)" Answer < /dev/tty
case ${Answer} in
  y|Y) 

    echo "Install git-prompt..."

    curl -o .git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

    echo "インストールを完了しました" ;;

  n|N)
    echo "インストールをスキップしました" ;;

esac
echo " ------------ END ------------"