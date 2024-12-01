# Advent of code 2024

[Advent of code](https://adventofcode.com/), 2024.

This is my first advent of code, so I picked the simplest language: Haskell.

This is a stack-baset project, so you can build everything just by invoking `stack build`

### Structure

Every day there are two tasks, so

`app/Main%da.hs` is an executable for first task, and
`app/Main%db.hs` for second one. Substitute `%d` for 
day number.

`src/Lib%d.hs` is a shared code for `%d`th day.

`src/Lib.hs` is a shared code for everythimg.

`inputs/d%da` and `inputs/d%db` are my input data.

Every executable take input file as first parameter, or reads stdin in none supplied. 
Use ^D to put EOF in stdin, as usual.
