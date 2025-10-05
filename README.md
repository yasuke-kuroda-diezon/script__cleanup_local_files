
## 概要
ローカル環境の特定ディレクトリ（デフォルトは `~/Desktop` と `~/Downloads`）内で、git管理されていないファイルやフォルダ（untracked files）を一括削除するスクリプトです。
不要な一時ファイルやダウンロードファイルの整理、クリーンアップに活用できます。

## 使い方
### 初回セットアップ
1. スクリプトを配置します
  (場所は任意で、どこにおいても動作します)
	```sh
	cd ~/practice/script
	git clone git@github.com:yasuke-kuroda-diezon/script__cleanup_local_files.git
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
	chmod +x ~/practice/script/script__cleanup_local_files/index.sh
	```

### 日々の使い方
以下のコマンドで実行できます。
```sh
cd ~
./practice/script/script__cleanup_local_files/index.sh
```

<img width="550" height="356" alt="スクリーンショット 2025-10-05 15 20 31" src="https://github.com/user-attachments/assets/bf8aafec-09ce-44d3-8603-18131567fe91" />

## memo
- 各ディレクトリに `.git` ディレクトリが必要です。
- `rm`コマンドを実行するのは`~/Desktop/`ディレクトリを誤って削除する事故が怖いので、git cleanコマンドを利用して安全に削除する方針としました。
