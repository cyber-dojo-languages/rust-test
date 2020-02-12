set -e

PATH=/usr/local/cargo/bin:${PATH}
#RUST_BACKTRACE=1

rm -rf report || true
mkdir report 2> /dev/null || true
cargo test --features "strict" -- --nocapture
cargo clippy 2>> ./report/style.txt
cargo fmt
