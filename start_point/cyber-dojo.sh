set -e

PATH=/usr/local/cargo/bin:${PATH}
#RUST_BACKTRACE=1

cargo test
