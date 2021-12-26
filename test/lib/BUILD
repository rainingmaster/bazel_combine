package(default_visibility = ["//visibility:public"])

load("@rules_rust//rust:defs.bzl", "rust_static_library", "rust_library")

rust_static_library(
    name = "my_lib",
    srcs = [
        "src/lib.rs",
    ],
    deps = [
        #":gap_lib",
        #"//test/lib/cargo:rand_core",
        #"//test/lib/cargo:rmp_serde",
        #"//test/lib/cargo:serde",
        #"//test/lib/cargo:tempfile",
    ],
)

rust_library(
    name = "gap_lib",
    srcs = [
        "others/gap.rs",
    ],
    crate_features = ["default"],
)

cc_import(
    name = "static",
    static_library = "libmy_lib.a",
)
