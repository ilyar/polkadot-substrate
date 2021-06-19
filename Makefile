clean:
	cargo clean
	rm -fr out

lint:
	cargo fmt --all -- --check
	cargo clippy --all-targets

fmt:
	cargo fmt

audit-fix:
	cargo audit fix

audit:
	cargo audit

test-contract:
	cargo +nightly test

test:\
test-contract

qa:\
lint \
test

fix:\
audit-fix\
fmt

rustup:
	rustup component add clippy
	rustup component add rustfmt
	rustup component add rust-src
	rustup target add wasm32-unknown-unknown
	cargo install cargo-audit --features=fix
	rustup toolchain install nightly
	rustup component add rust-src --toolchain nightly
	rustup target add wasm32-unknown-unknown --toolchain nightly
	cargo install canvas-node --git https://github.com/paritytech/canvas-node.git --tag v0.1.8 --force --locked
	cargo install cargo-contract --vers ^0.12 --force --locked

check:
	cargo check

build:
	cargo +nightly contract build
	mkdir build
	cp target/ink/*.contract build
	cp target/ink/*.wasm build
	cp target/ink/*.json build

start:
	canvas --dev --tmp