# Vim
* Plugins:
    * [nerdtree](https://github.com/preservim/nerdtree): File manager inside vim
    * [lightline](https://github.com/itchyny/lightline.vim): More intuitive status bar
    * [auto-pairs](https://github.com/jiangmiao/auto-pairs): Match brackets, quotes

* Key bindings:
    * \<F9>: Compile and execute .cpp files (inside vim) using g++
    ```
    Eg: Press <Ctrl> + <F9> after saving your .cpp program
    ```

* Misc
    * Automatically show line numbers
    * Enable syntax highlighting and search highlighting
    * Enable backspace in INSERT mode
    * Add auto indentation

Setting up:
* Copy the vimrc to your home
```
cp linux-config/.vimrc ~/
```
* Install Vundle (detailed instructions over [here](https://github.com/VundleVim/Vundle.vim))
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```
* Add custom color scheme
```
mkdir ~/.vim/colors
cp linux-config/OceanicNext ~/.vim/colors
```


