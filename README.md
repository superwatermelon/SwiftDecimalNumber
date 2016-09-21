# SwiftDecimalNumber
##### Arithmetic operators for decimal numbers
By [Stuart Wakefield](http://stuartwakefield.co.uk)

[![Travis CI Build](https://travis-ci.org/superwatermelon/SwiftDecimalNumber.svg?branch=master)][ci]

- [Introduction]
- [API]
  - [Comparisons]
  - [Arithmetic]
  - [Functions]

## Introduction

Provides extensions to `NSDecimalNumber` to support arithmetic operations:

```swift
let a = NSDecimalNumber(string: "0.4")
let b = NSDecimalNumber(string: "10")
let c = a * b
```

## API

### Comparisons

#### `a == b`

Compares the `NSDecimalNumber` instances `a` and `b` returning `true` if both
are equal and `false` otherwise. See
[`NSDecimalNumber.compare(_:)`][nsdecimalnumber-compare] for underlying
implementation details, will return true if result is
[`NSComparisonResult.OrderedSame`][nscomparisonresult-orderedsame].

#### `a > b`

#### `a < b`

#### `a >= b`

#### `a <= b`

### Arithmetic

#### `a + b`

#### `a - b`

#### `a * b`

#### `a / b`

#### `a ** b`

### Functions

#### `min(a, b)`

#### `max(a, b)`

[nsdecimalnumber-compare]: https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSDecimalNumber_Class/#//apple_ref/occ/instm/NSDecimalNumber/compare:
[nscomparisonresult-orderedsame]: https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Miscellaneous/Foundation_Constants/index.html#//apple_ref/swift/enum/c:@E@NSComparisonResult

[ci]: https://travis-ci.org/superwatermelon/SwiftDecimalNumber

[Introduction]: #introduction
[API]: #api
[Comparisons]: #comparisons
[Arithmetic]: #arithmetic
[Functions]: #functions
