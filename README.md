# zakurero_test_gomodules

To explain Go Modules (go1.13)

## TO RUN

```
cd hello
go run .
```

## Directory Tree

```txt
zakurero_test_gomodules => a sample module
├── LICENSE
├── README.md
├── go.mod
├── go.sum
├── goodbye => a module (package) inside a module
│   ├── go.mod
│   └── goodbye.go
└── hello
    └── hello.go
```

## Experiments

## モジュール名にドットが含まれていない場合のエラー

```go
import "localpackage/goodbye"
```

```
$ go run hello.go
build command-line-arguments: cannot load goodbye: malformed module path "goodbye": missing dot in first path element
```

### goodbye/にgo.modがない場合のエラー

```
$ go run hello.go
go: local.packages/goodbye@v0.0.0: parsing ../goodbye/go.mod: open /Users/Hiroshi.Nishigami/projects/ntttx/zakurero_test_gomodules/goodbye/go.mod: no such file or directory
```

### importを相対パスで指定した場合

goodbyeというローカルパッケージを使いたい。
Go Modulesを使わない場合には、相対パスでimportすれば良かったが、Go Modulesではそれが禁止されている。
Module-aware modeがonのときは、モジュール名で指定しなければならない。
試しに、相対パスで指定したときのエラーは以下。

```go:hello2.go
    package main

    import (
     "fmt"
     "../goodbye"
    )

    func main() {
     fmt.Println(goodbye.Goodbye())
    }
```

```
$ GO111MODULE=on go run hello2.go
build _/Users/Hiroshi.Nishigami/projects/ntttx/zakurero_test_gomodules/goodbye: cannot find module for path _/Users/Hiroshi.Nishigami/projects/ntttx/zakurero_test_gomodules/goodbye
```

Module-aware modeがoffのときは、成功する。

```
$ GO111MODULE=off go run hello2.go
Goodbye
```

