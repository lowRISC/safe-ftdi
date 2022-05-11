load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rust_repos():
    # We use forked/patched Rust Bazel rules to enable caching repository rules
    # required for air-gapped Bazel builds. See lowRISC/opentitan:#12515 for
    # more details.
    http_archive(
        name = "rules_rust",
        sha256 = "5e2f59778ee496064b2d96182bc8aa916a0e34921124a359f740f51e5e5afc38",
        strip_prefix = "rules_rust-be0d6ca492f64cc8d460f54f467925ef2753ed89",
        url = "https://github.com/lowRISC/rules_rust/archive/be0d6ca492f64cc8d460f54f467925ef2753ed89.tar.gz",
    )
