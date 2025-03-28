# Cangjie Tutorial

## Getting started
Please visit <https://cangjie-lang.cn>. You can change the language by
clicking the link/button in the top right corner.

Click "Download" and download the STS version of Cangjie

### MacOS and Linux
Extract the tarball then, in the terminal in the extrated directory,
type `source envsetup.sh`.
You should now be good to go. simply type `cjc <filename>` to invoke
the compiler.

### Windows
in addition to the above, the Windows package will have `envsetup.bat`
and `envsetup.ps1` scripts that achieve the same as `envsetup.sh`.


## Exercise 1: Hello, world
One you're set up, verify everything by compiling your first Cangjie
program.

Using your text editor of choice, saving the following program:

```
main() {
	println("Hello, world!")
}
```

Invoke `cjc hello.cj`, then run `./main`

If everything is setup correctly, then you should see "Hello, world!"
printed out to your terminal.



## Exercise 2: Object orientation
Have a look at the code in the  `exercise02` directory.

You can compile the entire package with `cjc -p exercise02 -o ex2`, then run
as before with `./ex2`

### Tasks
1. Compile the package
2. Finish the definitions of the `Circle` `area` and `toString`
   methods.
3. Define a new class `Square` that is a subclass of `Rectangle`

## Exercise 3: Functional programming
Take a look at `expr.cj` in the `exercise03` directory. We have a simple
expression language represented with an ADT and an evaluator function
`eval`.

### Tasks
1. Complete the defintion of `eval` so that it evaluates the
   expression language with reasonable semantics.
2. Add some new expression types to the enum, and update `eval` to
   support them. How about one with a different
   number of arguments?
   
## Exercise 4: Concurrency
There is an implemented version of `expr.cj` in the `exercise04`
directory. Look at `main()` for an example of how to use `spawn` in
Cangjie.

### Tasks
1. Parallelise `eval` using `spawn` and `Future.get()`


## Exercise 5: Metaprogramming
 `exercise05/expr.cj`
contains the toy expression language again, but now with a call to
macro that allows you to create `Expression`s with infix syntax.

`exercise05_macro` contains a macro package, with the macro
definition and a recursive helper function.

To compile the macro package:

`cjc --compile-macro -p exercise05_macro`

To compile exercise 5:

`cjc -p exercise05 -o ex5`

### Tasks
1. compile the macro package and exercise 5 and run it
2. Extend the `transform` function in `macros.cj` to support the other
   `Expression` types.

## Exercise 6: Mobile development in OpenHarmony
We'll do it live!
