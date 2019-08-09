context("H")

a = 5
H(adder = function(x) x + 2 + a)

expect_error(adder(0))

fun1 = function(x) x + 2
fun2 = function(x) fun1(x) + 1

H(fun1 = function(x) x + 2,
  fun2 = function(x) fun1(x) + 1)

fun2(4)

B = function(a) exists(a, 1)
