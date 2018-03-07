# purescript-helloworld-executable-binary

## Learn how to create binaries from PureScript code

1. Download `pkg`
2. Project configs
3. Download with `psc-package`
4. Build with `pulp`
5. Build with `pkg`

## 1. Download `pkg`

What is `pkg`?
It's a way to bundle your JavaScript and Node into a single executable binary.
`pkg` is fast and generates binaries for each major operating system -- OSX, Linux, Windows.
Each generated binary will end up being around 30-40 megabytes.

### Download

sudo npm i pkg -g

### 2. Project configs

* Use `psc-package` to create `psc-package.json` (Already done)
* `npm init` inside `./bin` for dummy config.  (Already done)
   * ``"main": "helloworld.js"``

### 3. Download with `psc-package`

```shell
psc-package install prelude
```

### 4. Build with `pulp` (Repeat as needed)

`pulp build --to bin/helloworld.js`

Bundles and optimizes the JavaScript into a single file.


### 5. Build with `pkg`

```shell
pkg helloworld.js --out-path bin
```

### 6. Run

```shell
./bin/helloworld-macos
./bin/helloworld-linux
./bin/helloworld-win.exe
```

```shell
Hello, World!
```
