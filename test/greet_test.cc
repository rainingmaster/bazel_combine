#include <gtest/gtest.h>
#include "main/hello-greet.h"

extern "C" void let_it_go();

// Demonstrate some basic assertions.
TEST(HelloTest, BasicAssertions) {
  // Expect two strings not to be equal.
  EXPECT_STRNE("hello", "world");
  // Expect equality.
  EXPECT_EQ(get_greet("Bob"), "Hello Bob");
  EXPECT_EQ(get_greet("Amy"), "Hello Amy");

  let_it_go();
}
