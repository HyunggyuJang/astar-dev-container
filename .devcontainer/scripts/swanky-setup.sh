#!/bin/bash

git_user=$(grep -oP "(?<=user:).*" /host-home/git_creds) || git_user=""
git_email=$(grep -oP "(?<=email:).*" /host-home/git_creds) || git_email=""

git config --global "user.name" $git_user
git config --global "user.email" $git_email

rustup default stable
rustup update
rustup update nightly
rustup component add rust-src
rustup component add rust-src --toolchain nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup default nightly

cargo install cargo-dylint dylint-link
cargo install --force --locked cargo-contract

sudo chown vscode /workspace

npm i -g serve
npm i -g @astar-network/swanky-cli
npm i -g hardhat
