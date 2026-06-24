# Up, the Fish Plugin

![Up](https://raw.githubusercontent.com/repos-for-jay/up/master/docs/up.jpeg "Up.fish")

[![CI](https://github.com/repos-for-jay/up/actions/workflows/ci.yml/badge.svg)](https://github.com/repos-for-jay/up/actions/workflows/ci.yml)

Tired of `cd ..`, `cd ../..`, `cd ../../..`, `cd ../../../..`, or using multiple aliases to navigate up directories?

Why not use the power of `up`?

Type `up` to go up one directory.  Type `up 2` to go up two directories.  Type `up 3` to go up three directories.  And so on.

No more defining a `cd ../../../../../../../..` alias.  Just `up 8`.

## Requirements

- [Fish](https://fishshell.com/) 3.0+
- [Fisher](https://github.com/jorgebucaran/fisher)

## Installation

### With [fisher]

```fish
fisher install repos-for-jay/up
```

## Usage

move up one directory (`cd ..`)
  ```fish
  up
  ```
move up 5 directories (`cd ../../../../../`)
  ```fish
  up 5
  ```

[fisher]: https://github.com/jorgebucaran/fisher
