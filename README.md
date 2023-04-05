# CG-Extensions

Arithmetic operators and utility functions for CGPoint, CGSize and CGRect.

Based on CGMath https://gist.github.com/gurgeous/bc0c3d2e748c3b6fe7f2

## Usage

Use arithmetic operators on `CGPoint` and `CGSize`, mixed with scalar values for multiplication and division:

```
let start = CGPoint(x: 5, y: 7)
let offset = CGPoint(x: 3, y: -2)
let result = start + offset * 2
//result is a CGPoint with x=11 and y=3 
```

You can mix CGPoint and CGSize with all operators:

```
let result = CGPoint(x: 5, y: 7) + CGSize(x: 3, y: -2)
//result has the type of the operator's left hand side. CGPoint in this case.
```

Convert between CGPoint and CGSize:

```
let point = CGSize(width: 400, height: 300).point()
let size = CGPoint(x: 400, y: 300).size()
```

See the source code in CGExtensions.swift to learn about other functionality and conversions.

## Swift Package Manager

This library is a Swift Package and can be added using this URL:
```
https://github.com/WilhelmOks/CG-Extensions.git
```

Import the module `CGExtensions` in your code:
```
import CGExtensions
```
