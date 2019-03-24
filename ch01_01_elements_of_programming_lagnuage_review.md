# Intro

There are 3 mechanisms which every powerful language has:

- primitive expressions
- means of combination
- means of abstraction

2 elements:

- precedures
    - `+, *, /, -`
- data

Talk about:

- 1 expressions
    - number: `520.1314`
    - strings: `this is a string`
    - Booleans: `#t`, `#f`
    - combinations: `(+ 520 1314)`
        - *prefix notation*: 前缀表示法
        - operator: `+` 
        - operands: `520`, `1314`
    - *read-eval-print loop*
        - Lisp obeys the convention that every expression has a value.
- 2 naming & the environment
    - `(define size 2)`: not a combination, but a special form
        - `define`: simplest means of abstraction
    - *environment*: memory
        - the interpreter must maintain some sort of memory to keep track of the name-object pairs like `size 2` pair
- 3 evaluating combinations
    - steps:
        - evaluate the subexpression of the combination
        - apply the operator to the operands
    - nests of combinations:
        - `(* (+ 2 (* 4 6)) (+ 3 5 7))`
- 4 compound procedures
    - Elements of powerful language
        - Primitive data & procedures:
            - numbers
            - arithmetic operation
        - Nesting of combinations: combining operations
        - Definitions: a limited means of abstraction
    - *procedure definitions*: abstraction
        - `(define (square x) (* x x))`
        - `(define (<name> <formal parameters> <body>) `
- 5 the substitution model for procedure applicaiton
    - To apply a compound procedure to arguments,
    - evaluate the body of the procedure with each formal parameter replaced by the corresponding argument.
    - Process: example of `(define (f a) (sum-of-squares (+ a 1) (* a 2)))`
        - `(f 5)`
        - retrieve the body of f: `(sum-of-squares (+ a 1) (* a 2))`
        - replace the formal parameter `a` by the arguments 5:
            - `(sum-of-squares (+ 5 1) (* 5 2))`
        - `(sum-of-squares 6 10)`
        - `(+ (square 6) (square 10))`
        - `(+ (* 6 6) (* 10 10))`
        - `(+ 36 100)`
        - `136`
    - Process above is called the *substitution model*
        - Just help us think about procedure application,
        - Not about how the interpreter really works.
    - *Normal-order evaluation*
        - `fully expand and then reduce`: 先完全展开, 再带入
    - *Applicative-order evaluation*
        - `evaluate the argument and then apply`
        - Lisp uses applicative-order evaluation.
- 6 conditional expressions and predicates
    - *case analysis*: conditional
        - `cond` : `(cond (<predicate> <expression>) ... (<p> <e>))`
        - `if`:  `(if <predicate> <consequent> <alternative>)`
        - logical operations:
            - `(and <e_1> ... <e_n>)`: special form
            - `(or <e_1> ... <e_n>)`: special form
            - `(not <e>)`: ordinary procedure

```
(cond (<p_1> <e_1>)
      (<p_2> <e_2>)
      ...
      (<p_n> <e_n>))
```

- 7 Square Roots by Newton's Method
    - `y^2 = x, [guess+(x/guess)]/2`
- 8 Procedures as Black-Box Abstractions
    - *recursive*
    - *local names*
    - *bound variable*

The syntax of Lisp is very simple:

> the evaluation rule for expressions(a simple general rule + specialized rules for a small number of special forms)

```
2019-03-16 review(intro 1-5)
2019-03-17 review(intro 6-8)
```
