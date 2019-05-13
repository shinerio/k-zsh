linux_release_version=$(awk -F= '/^NAME/{print $2}' /etc/os-release | sed 's/\"//g')


if [ $UID -ne 0 ] 
  then
    echo "Superuser privileges are required to run this script."
    exit 1
  else
    if ! [ -x "$(command -v git)" ] 
    then
        option=true
        while $option
            do
	            read -r -p "Are you sure to install git as root? [Y/n] " input
	            case $input in
	                [yY][eE][sS]|[yY])
			            sudo apt-get install git
                        option=false
			            ;;
	                [nN][oO]|[nN])
			            exit 0
	       		        ;;

	                *)
		                ;;
	            esac
        done
    fi
    case $linux_release_version in
        Ubuntu|Debian)
            sudo apt-get install zsh
            ;;
        Centos)
            sudo yum update && sudo yum -y install zsh
            ;;
        *)
            echo "platform not supported!"
            ;;
    esac
fi

chsh -s $(which zsh)

# install oh-my-zsh

if ! [ -x "$(command -v curl)" ]; then
    sudo apt-get install curl
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install k-zsh

cp ~/.zshrc ~/.zshrc_bac

curl https://raw.githubusercontent.com/shinerio/k-zsh/master/zshrc > ~/.zshrc

