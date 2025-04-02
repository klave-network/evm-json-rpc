echo building multiple apps.wasm from Rust...
rm Cargo.lock
rm -rf target
cargo clean

rm -f apps/evm-json-rpc/src/bindings.rs

cargo component build --target wasm32-unknown-unknown --release
base64 -w 0 target/wasm32-unknown-unknown/release/evm_json_rpc.wasm > ./evm_json_rpc.b64

echo done