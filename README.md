# s-zsh

This is the configuration source file for oh-my-zsh framework

Open an issue if you have any question.

## Prerequisites

Unix-like operating system (maxOs or linux)

## install zsh

sh -c "$(https://raw.githubusercontent.com/shinerio/s-zsh/master/install_zsh.sh)"

or following instruction here: [installing zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

## install [oy-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

**via curl**

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

**via wget**

`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

## install s-zsh

```

# Clone the repo to you ~/opt or ~/Projects as source dir.
# Do NOT delete the source dir when installation completed.
sh ./install_s_zsh.sh

```

s-zsh 中配置了部分插件需要单独安装一下才能生效：

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Uninstall

```
rm -rf ~/.zshrc
```
