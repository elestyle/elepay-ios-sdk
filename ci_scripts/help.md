# Elepay iOS SDK Release Process

## Elepay iOS Source Code Compilation

This repository is for the external distribution of the Elepay iOS SDK and does not provide source code.
The source code repository is packaged via CI to obtain the `Release-<VERSION>.zip` artifact.

## Template Generation

After obtaining the `Release-<VERSION>.zip` artifact and dragging it into the current project, generate the package management configuration file using the `/ci_scripts/build.sh` script.

Note: Ensure that the VERSION file content in the current project matches the suffix of the zip artifact.

## Release Process

1. Confirm the version number
2. Commit the code to the remote repository
3. Release Swift Package
   - Create a Tag
   - Upload the unzipped artifact from the zip file to the Release attachments
4. Release Cocoapods
   - Execute the `/ci_scripts/cocoapods-publish.sh` script

---

# Elepay iOS SDK リリースプロセス

## Elepay iOS ソースコードのコンパイル

このリポジトリは Elepay iOS SDK の外部配布用であり、ソースコードは提供していません。
ソースコードリポジトリは CI を通じてパッケージ化され、`Release-<VERSION>.zip` アーティファクトが取得されます。

## テンプレート生成

`Release-<VERSION>.zip` アーティファクトを取得し、現在のプロジェクトにドラッグアンドドロップした後、`/ci_scripts/build.sh` スクリプトを使用してパッケージ管理設定ファイルを生成します。

注意：現在のプロジェクトの VERSION ファイルの内容が zip アーティファクトのサフィックスと一致していることを確認してください。

## リリースプロセス

1. バージョン番号の確認
2. リモートリポジトリへのコードのコミット
3. Swift Package のリリース
   - タグの作成
   - zip ファイルから解凍されたアーティファクトをリリース添付ファイルにアップロード
4. Cocoapods のリリース
   - `/ci_scripts/cocoapods-publish.sh` スクリプトの実行

---

# Elepay iOS SDK 发布流程

## Elepay iOS 源码编译

当前仓库为 Elepay iOS SDK 外部分发仓库，不提供源码。  
源码仓库中通过 CI 打包，获取 `Release-<VERSION>.zip` 产物。

## template generate

获取 `Release-<VERSION>.zip` 产物并拖动到当前工程后，通过 `/ci_scripts/build.sh` 脚本生成包管理配置文件。

注意事项：确保当前工程 VERSION 文件内容与 zip 产物的后缀一致。

## 发布流程

1. 确认版本号
2. 提交代码到远程
3. Release Swift Package
   - 打 Tag
   - 把 zip 解压后的产物上传到 Release 附件中
4. Release Cocoapods
   - 执行 `/ci_scripts/cocoapods-publish.sh` 脚本
