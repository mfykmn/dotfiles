# Ansible

初期環境設定で自動化できる部分を Ansible で設定する

## Mac

### Requirement

- [Xcode](https://apps.apple.com/jp/app/xcode/id497799835) がインストールされている
- [Homebrew](https://brew.sh/index_ja) がインストールされている
- [Ansible](https://formulae.brew.sh/formula/ansible) がインストールされている
    ```ShellSession
    user@host: ~ $ brew install ansible
    ```

### Usage

```ShellSession
user@host: ~/dotfiles/ansible $ ansible-playbook playbooks/mac/intel.yaml
```
