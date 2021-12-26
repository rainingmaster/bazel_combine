test:
	bazel test --test_output=all --linkopt=-ldl //test:greet_test

build:
	bazel build --linkopt=-ldl //main:hello-world

coverage:
	BAZEL_USE_LLVM_NATIVE_COVERAGE=1 GCOV=llvm-profdata \
		bazel coverage --sandbox_debug -c fastbuild --test_output=all --linkopt=-ldl --subcommands //... \
	&& llvm-cov show -instr-profile="bazel-out/k8-fastbuild/testlogs/test/greet_test/coverage.dat" \
		bazel-bin/test/greet_test -Xdemangler=c++filt \
		-output-dir=test/coverage -format=html \
	&& sed -i -e 's|>proc/self/cwd/|>|g' "test/coverage/index.html"

clean:
	bazel clean

.PHONY: test build coverage clean
