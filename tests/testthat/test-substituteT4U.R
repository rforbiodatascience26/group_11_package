test_that("substituteT4U replaces every T with U", {
  expect_equal(substituteT4U("ATGT"), "AUGU")
  expect_equal(substituteT4U("TTAA"), "UUAA")
  expect_equal(substituteT4U("ACG"), "ACG")
  expect_equal(substituteT4U(""), "")
})
