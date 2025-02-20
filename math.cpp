#include <catch2/matchers/catch_matchers_floating_point.hpp>
#include <catch2/catch_test_macros.hpp>
#include <catch2/catch_approx.hpp>

TEST_CASE("catch2 math"){
    REQUIRE(0.99999 == Catch::Approx(1));
    REQUIRE_THAT(1.0, Catch::Matchers::WithinAbs(1.2, 0.2));
    REQUIRE_THAT(0.0f, !Catch::Matchers::WithinAbs(1.0, 0.5));
    REQUIRE_THAT(1.1, Catch::Matchers::WithinRel(1.0, 0.1));
}
