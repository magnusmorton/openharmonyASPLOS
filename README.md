# Cangjie Tutorial

## Getting started
Please visit (the official Cangjie
website)[https://cangjie-lang.cn]. You can change the language by
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


## Hello, world
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



