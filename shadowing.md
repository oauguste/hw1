# What is Shadowing

Shadowing is when you add a variable to an environment, when that variable is already in the enviroment.

What ends up happening is that the new variable extends the dynamic enviroment and the new dynamic enviroment will now use the new value given to the new variable.
For example given the following code

`val a = 10`
`val b = a * 2`
`val a = 5` (this is not an assignment statement) in ML there is no way to mutate a varible!
*There is no way to change that a mapped to 10 in the previous environment*
a is now *shadowed* in the subsequent enviroment, we have a different mapping for a in a different environment.
`val c = b`

One thing that we cant do is forward reference a variable.
`val a =1`
`val b = a`
`val a = 2`

## There are two reasons why

In the environment you end up with a is bound to 2 and b is bound to 1

1. We evaluated that expression `val b = a` eagerly the result is that b is bound to 1 and it doesnt matter how we got that to 1.
2. The second `val a = 2` is not an assignment statement, the earlier a, the a leads to the environment that is used to evaluate b is still 1. We created a second variable b that shadows it
