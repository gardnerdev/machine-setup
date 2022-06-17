#!/bin/bash

#curl https://getsubstrate.io -sSf | bash -s -- --fast

curl https://sh.rustup.rs -sSf | sh
export PATH="$HOME/.cargo/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
rustup default stable -y
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup component add rustfmt