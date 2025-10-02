
# cleanup_local_files

## 概要
ローカル環境の特定ディレクトリ（デフォルトは `~/Desktop` と `~/Downloads`）内で、git管理されていないファイルやフォルダ（untracked files）を一括削除するスクリプトです。
不要な一時ファイルやダウンロードファイルの整理、クリーンアップに活用できます。

## 使い方
### 初回セットアップ
1. スクリプトを任意の場所に配置します（例: `~/practice/script_local/`）
	```sh
	cd ~/practice/script_local/
	git clone git@github.com:yasuke-kuroda-diezon/cleanup_local_files.git
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
	chmod +x ./cleanup_local_files.sh
	```

### 日々の使い方
以下のコマンドで実行できます。
```sh
cd ~
./practice/script_local/cleanup_local_files.sh
```

## 注意事項
- 各ディレクトリに `.git` ディレクトリが必要です。
- `rm`コマンドを実行するのは怖いので、(~/Desktop/を削除するとかあり得そうなので)、git cleanコマンドを利用して安全に削除する方針としました。

## スクリプト一覧

| コマンド                  | 処理内容                                                                 |
|---------------------------|--------------------------------------------------------------------------|
| ./cleanup_local_files.sh  | git clean -f -d で未追跡ファイル・フォルダを削除（Desktop, Downloads対象） |