#!/bin/bash

git_user=$(grep -oP "(?<=user:).*" /host-home/git_creds) || git_user=""
git_email=$(grep -oP "(?<=email:).*" /host-home/git_creds) || git_email=""

git config --global "user.name" $git_user
git config --global "user.email" $git_email

rustup default nightly-2023-01-23
rustup update
rustup component add rust-src
rustup target add wasm32-unknown-unknown

cargo install cargo-dylint dylint-link
cargo install --force --locked cargo-contract --version 2.1.0

sudo chown vscode /workspace

npm i -g serve
npm i -g @arthswap/swanky-cli
