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

