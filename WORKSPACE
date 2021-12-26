load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
  name = "com_google_googletest",
  urls = ["https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip"],
  strip_prefix = "googletest-609281088cfefc76f9d0ce82e1ff6c30cc3591e5",
)
http_archive(
    name = "rules_rust",
    sha256 = "c856d7d6fbde9f0da1edb40f1dccd4578b8416b27d1a22c2119d6402d0118fe4",
    strip_prefix = "rules_rust-95d29b433630e8081784b7025ec62028ff9dae16",
    urls = [
        # `main` branch as of 2021-08-23
        "https://github.com/bazelbuild/rules_rust/archive/95d29b433630e8081784b7025ec62028ff9dae16.tar.gz",
    ],
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories()

load("//test/lib/cargo:crates.bzl", "lib_fetch_remote_crates")

lib_fetch_remote_crates()
