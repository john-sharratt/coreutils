#!/bin/bash -e
cargo wasix build --release
chmod +x target/wasm32-wasmer-wasi/release/coreutils.wasm
cp -f target/wasm32-wasmer-wasi/release/coreutils.wasm ../ate/wasmer-web/public/bin/coreutils.wasm
