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

```
$ GO111MODULE=on go run hello2.go
build _/Users/Hiroshi.Nishigami/projects/ntttx/zakurero_test_gomodules/goodbye: cannot find module for path _/Users/Hiroshi.Nishigami/projects/ntttx/zakurero_test_gomodules/goodbye
```

```
$ GO111MODULE=off go run hello2.go
Goodbye
```
