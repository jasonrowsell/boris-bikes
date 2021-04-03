# Boris Bikes

[![Build Status](https://travis-ci.com/jasonrowsell/boris-bikes.svg?branch=main)](https://travis-ci.com/jasonrowsell/boris-bikes)

Transport for London, the body responsible for delivery of a new bike system, has a plan: a network of docking stations and bikes that anyone can use. They want to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

This project focuses on Pair Programming and TDD.

## Technical skills

- Domain modelling
- TDD
- SRP
- Encapsulation
- OOP

## Installation and usage

This program requires latest [Ruby](https://www.ruby-lang.org/en/downloads/) version or more recent.

## Dependencies

- `rspec` - testing
- `coveralls` - test coverage
- `rake` - CI

### Getting started

The following commands clone and run the Boris Bikes program:

```sh
git clone git@github.com:jasonrowsell/boris-bikes.git
```

Run dice.rb script in a REPL environment from root directory

```shell
irb -r ./lib/boris_bikes.rb
```

### Running tests

```sh
rspec
```
