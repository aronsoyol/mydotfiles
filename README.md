# My dot file

## 使用方法
```
ln -s  ~/mydotfiles/vimrc ~/.vimrc
```
## bashの設定ファイルの読み込まれる順番
ログインシェル（PCを起動したときにデフォルトに指定されるシェル）をbashにしている場合はログイン（起動）時に以下のような順番で設定ファイルが読み込まれ、PATHを通す、エイリアスを定義する、プログラムを実行するなどの設定が自動で設定される。

- /etc/profile

全ユーザーに適用されるデフォルトの設定ファイル。
ユーザー単位では編集しない。（つまり、ほとんどいじらない）

- ~/.bash_profile

存在していれば読込まれる設定ファイル。
ユーザー単位での設定を書く。
無くても良い。

- ~/.bash_login

ログインして~/.bash_profileが存在しない場合にのみ、存在していれば読込まれる設定ファイル。
無くても良い。

- ~/.profile

ログインして~/.bash_profile ・ ~/.bash_loginが存在しない場合にのみ、存在していれば読み込まれる設定ファイル。
無くても良い。

- ~/.bashrc

シェル（bash）ログインで毎回読込まれる設定ファイル。
無くても良い。

~/.bash_logout というのもある。

シェル（bash）ログアウトに毎回読込まれる設定ファイル。
無くても良い。

どう使い分ければいいか！
~/.bash_profile

ログイン時に一度設定すればいいもの

~/.bashrc

bashを起動するたびに設定する必要のあるもの

その他は？
基本的に上の２つで事足りる。

しかし、以下のような特別な場合があれば利用する価値がありそう。

全ユーザーでログイン時に起動したいアプリケーションがある場合などは/etc/profileにその処理を書いておくことで全ユーザーでログイン時に処理が実行される。

ログイン時には必ずこの処理をしてほしいなどということがあれば、~/.bash_loginにその処理を書いておくことで~/.bashrcを削除しても処理が実行される

[ http://qiita.com/hirokishirai/items/5a529c8395c4b336bf31 ](http://qiita.com/hirokishirai/items/5a529c8395c4b336bf31)

# tmux

- tmux 2.3 を入れる
- yumに入ってるバージョン(1.x)はVIMの配色を正しく表示できない

## Powerline fonts

```
# https://github.com/powerline/fonts
cd ~
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh 
./install.psl (windows)

```
