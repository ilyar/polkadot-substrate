# Polkadot Substrate

* [Runtime](https://substrate.dev/docs/en/knowledgebase/runtime/)

## Smart Contract

### Setup environment
```shell
curl https://sh.rustup.rs -sSf | sh
rustup toolchain install nightly
rustup component add rust-src --toolchain nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
cargo install canvas-node --git https://github.com/paritytech/canvas-node.git --tag v0.1.8 --force --locked
cargo install cargo-contract --vers ^0.12 --force --locked
npm install --global wasm-opt
```

**Checks**

```shell
canvas --version
cargo contract --version
wasm-opt --version
```

**Init project**

```shell
cargo contract new flipper
```

**Build project**

```shell
cd flipper
cargo +nightly contract build
```

**Running a Substrate Canvas Node**
```shell
canvas --dev --tmp
```

**Deploying Your Contract**
1. Open https://paritytech.github.io/canvas-ui
1. [Deploying Your Contract](https://substrate.dev/substrate-contracts-workshop/#/0/deploy-contract)



### Reference

[ink! Smart Contracts Tutorial](https://substrate.dev/substrate-contracts-workshop/)
