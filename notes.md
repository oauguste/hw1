# Chapter 1

## Learning ML

### Notes

The first thing that happens in a ML program is that first everything is type checked using the *static environement*, once that is completed then the program runs the *dynamic enviroment*.

#### Variable binding rules

#### `val x = e`

##### Syntax (is how you write something)

Keyword `val` the name of the variable and the punctuation `=` an expression `e` and `;`
The order in which the program runs:

##### Semantics (is what something means)

1. The type checking
2. The evaluation

##### Evaluation Rules

For **variable** binding

1. Type-check expression and extend static environment
2. Evaluate expression and extend dynamic environment

For **conditional** expressions:
Example `val abs_of_z = if z < 0 then 0 - z else z`
There are 3 sub-expressions:

1. `z < 0`,
2. `then 0 - z`,
3. `else z`

Not all the sub-expressions are evaluated.
The first expression is looked at: it looks at `z` in the dynamic environment
It evaluates the first expression: *if its false* it ignores the evaluation of the second exression. It evaluates the thing after the else (ie. third expression)
Gets a result, the result of the entire thing is placed as the value of `abs_of_z`.

##### *Type checking* for a conditional

1. The thing between the `if` and the `then` has to be of type `bool`
2. Then the two branches can be of any type, as long as they're both the *same* type
3. The final type will be the type of the branches
