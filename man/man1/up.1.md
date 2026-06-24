up(1) -- Efficient dirstack navigation for fish
===============================================

## SYNOPSIS

up [*options*] [--help]<br>

## DESCRIPTION
Type `up` to go up one directory.  Type `up 2` to go up two directories.  Type `up 3` to go up three directories.  And so on.

No more defining a `cd ../../../../../../../..` alias.  Just `up 8`.

## USAGE

move up two directories (cd ../..)
  ```fish
  up 2
  ```
move up 5 directories (cd ../../../../..)
  ```fish
  up 5
  ```
