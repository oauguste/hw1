# Recursion and Efficiency

When using recursion, we must avoid implementations that are less than **efficient**. In other words some recursive functions are called multiple times during an implementation of a function resulting in an exponential increase in cost.

## Making recursion efficient

Efficiency will lie in our ability to avoid making multiple (unnecessary) recursive calls.

In ML our `let` expression allows us to use bindings and return expressions. In other words the `let` expression returns a value based off one (recursive) funcion call.
