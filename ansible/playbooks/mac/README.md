# Ansible

初期環境設定で自動化できる部分を Ansible で設定する

## Mac(intel)

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

## Mac(apple M1)
### Requirement
- Xcode
- [Homebrew](https://docs.brew.sh/Installation)
    ```ShellSession
    user@host: ~ $ sudo mkdir /opt/homebrew && sudo chown $(whoami):staff /opt/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /opt/homebrew
    ```
- [Ansible](https://formulae.brew.sh/formula/ansible) がインストールされている
    ```ShellSession
    user@host: ~ $ export PATH="/opt/homebrew/bin:$PATH"
    user@host: ~ $ brew install ansible
    ```

### Usage

```ShellSession
user@host: ~ $ export PATH="/opt/homebrew/bin:$PATH"
user@host: ~/dotfiles/ansible $ ansible-playbook playbooks/mac/apple-m1.yaml
```
