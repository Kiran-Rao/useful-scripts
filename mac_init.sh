# Baseline
xcode-select --install

# Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Oh my zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# GPG signing
# https://kiranrao.ca/2024/06/21/git-config.html#gpg-key-signing
# https://withblue.ink/2020/05/17/how-and-why-to-sign-git-commits.html
# https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
# https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account

brew install gnupg
gpg --full-generate-key
# (4) RSA (sign only)
# 4096
# 2y
# Kiran Rao
# hi@kiranrao.ca
# 
# Add to local
echo "export GPG_TTY=\$(tty)\n" >> ~/.zshrc 

# Test
echo "hello world" | gpg --clearsign

# Add to .gitconfig