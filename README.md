# CG-Extensions

Extra operators and utility functions for CGPoint, CGSize and CGRect.

Based on CGMath https://gist.github.com/gurgeous/bc0c3d2e748c3b6fe7f2

## Usage

Use arithmetic operators on `CGPoint` and `CGSize`, mixed with scalar values for multiplication and division:

```
let start = CGPoint(x: 5, y: 7)
let offset = CGPoint(x: 3, y: -2)
let result = start + offset * 2
//result is a CGPoint with x=11 and y=3 
```
