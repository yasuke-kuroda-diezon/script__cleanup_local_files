
# cleanup_local_files

## 概要
ローカル環境の特定ディレクトリ（デフォルトは `~/Desktop` と `~/Downloads`）内で、git管理されていないファイルやフォルダ（untracked files）を一括削除するスクリプトです。
不要な一時ファイルやダウンロードファイルの整理、クリーンアップに活用できます。

## 使い方
### 初回セットアップ
1. スクリプトを任意の場所に配置します（例: `~/practice/`）
	```sh
	cd ~/practice
	git clone git@github.com:yasuke-kuroda-diezon/script_cleanup_local_files.git
	```
2. `~/Desktop` と `~/Downloads` に git リポジトリを作成します（初回のみ)
	```sh
	cd ~/Desktop
	git init
	cd ~/Downloads
	git init
	```
3. スクリプトに実行権限を付与します
	```sh
	chmod +x ~/practice/script_cleanup_local_files/index.sh
	```

### 日々の使い方
以下のコマンドで実行できます。
```sh
cd ~
./practice/script_cleanup_local_files/index.sh
```

<img width="521" height="337" alt="スクリーンショット 2025-10-05 14 48 50" src="https://github.com/user-attachments/assets/200e9bce-350a-4507-b000-0dbbb843fab0" />

## memo
- 各ディレクトリに `.git` ディレクトリが必要です。
- `rm`コマンドを実行するのは`~/Desktop/`ディレクトリを誤って削除する事故が怖いので、git cleanコマンドを利用して安全に削除する方針としました。
