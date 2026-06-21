# Up, the Fish Plugin

![Up](https://raw.githubusercontent.com/jschwrtz/up/master/docs/up.jpeg "Up.fish")

[![Build Status][travis-badge]][travis-link]

Tired of `cd ..`, `cd ../..`, `cd ../../..`, `cd ../../../..`, or using multiple aliases to navigate up directories?

Why not use the power of `up`?

Type `up` to go up one directory.  Type `up 2` to go up two directories.  Type `up 3` to go up three directories.  And so on.

No more defining a `cd ../../../../../../../..` alias.  Just `up 8`.

## Installation

### With [fisher]

```fish
fisher install charitarthchugh/up
```

## Usage

move up two directories (cd ../../)
  ```fish
  up 2
  ```
move up 5 directories (cd ../../../../../)
  ```fish
  up 5
  ```

[travis-link]: https://travis-ci.org/jschwrtz/up
[travis-badge]: https://img.shields.io/travis/jschwrtz/up.svg
[fisherman]: https://github.com/fisherman/fisherman
