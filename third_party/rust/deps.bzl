load("@rules_rust//rust:repositories.bzl", "rust_repositories")
load("//third_party/rust/crates:crates.bzl", "raze_fetch_remote_crates")

def rust_deps():
    rust_repositories(
        edition = "2018",
        version = "1.58.0",
    )
    raze_fetch_remote_crates()
