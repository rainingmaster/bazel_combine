load("@rules_cc//cc:defs.bzl", "cc_test")

cc_test(
  name = "greet_test",
  size = "small",
  srcs = ["greet_test.cc"],
  deps = [
    "@com_google_googletest//:gtest_main",
    "//main:hello-greet",
    "//test/lib:static",
  ],
)
