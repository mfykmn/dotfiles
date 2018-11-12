# Launch Agents
cronのようなもの

## 静的解析
```bash
$ plutil -lint ~/Library/LaunchAgents/docker-clean.plist 
```

## 登録確認
```bash
$ launchctl list | grep docker-clean
-       0       docker-clean
```