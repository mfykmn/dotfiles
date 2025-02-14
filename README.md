# dotfiles

個人PCの初期環境設定で設定ファイルを管理する

## Mac(apple M4)

### Usage

```ShellSession
user@host: ~/workspace/dotfiles $ sh dotfilesLink.macAppleM4.sh
```


docker環境構築
```
colima start --cpu 8 --memory 12 --disk 160 --arch aarch64 --vm-type=vz --vz-rosetta --mount-type virtiofs

# x86_64アーキ動かすため こっちは動いた
colima start --cpu 8 --memory 12 --disk 160 --arch x86_64 --vm-type=vz --vz-rosetta --mount-type virtiofs
```
