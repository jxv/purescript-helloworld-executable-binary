# purescript-helloworld-executable-binary

## Learn how to create binaries from PureScript code

1. Download node-packer
2. Project configs
3. Download with `psc-package`
4. Build with `pulp`
5. Build with `nodec`

## 1. Download node-packer

What is node-packer?
It's a way to bundle your JavaScript and Node into a single executable binary.
The generated binary will end up being more than 60mb at minimum.
Not too surprising.

### Download

https://github.com/pmq20/node-packer

Follow the setups in the link to download.
By the end, you should have a `nodec` executable installed somewhere.

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


### 5. Build with `nodec` (Repeat as needed)

```shell
sudo <PATH-TO-NODEC>/nodec ./bin/helloworld.js -r . -o ./bin/helloworld
```

On my machine, `sudo` is for accessing privileged `/var/.....` paths.
May take awhile.

### 6. Run

```shell
./bin/helloworld
Hello, World!
```
