import CoreGraphics

// MARK: CGPoint op point/size/float

func - (l: CGPoint, r: CGPoint) -> CGPoint { return CGPoint(x: l.x - r.x, y: l.y - r.y) }
func + (l: CGPoint, r: CGPoint) -> CGPoint { return CGPoint(x: l.x + r.x, y: l.y + r.y) }
func * (l: CGPoint, r: CGPoint) -> CGPoint { return CGPoint(x: l.x * r.x, y: l.y * r.y) }
func / (l: CGPoint, r: CGPoint) -> CGPoint { return CGPoint(x: l.x / r.x, y: l.y / r.y) }

func - (l: CGPoint, r: CGSize) -> CGPoint { return CGPoint(x: l.x - r.width, y: l.y - r.height) }
func + (l: CGPoint, r: CGSize) -> CGPoint { return CGPoint(x: l.x + r.width, y: l.y + r.height) }
func * (l: CGPoint, r: CGSize) -> CGPoint { return CGPoint(x: l.x * r.width, y: l.y * r.height) }
func / (l: CGPoint, r: CGSize) -> CGPoint { return CGPoint(x: l.x / r.width, y: l.y / r.height) }

func - (l: CGPoint, r: CGFloat) -> CGPoint { return CGPoint(x: l.x - r, y: l.y - r) }
func + (l: CGPoint, r: CGFloat) -> CGPoint { return CGPoint(x: l.x + r, y: l.y + r) }
func * (l: CGPoint, r: CGFloat) -> CGPoint { return CGPoint(x: l.x * r, y: l.y * r) }
func / (l: CGPoint, r: CGFloat) -> CGPoint { return CGPoint(x: l.x / r, y: l.y / r) }

func -= (l: inout CGPoint, r: CGPoint) { l = l - r }
func += (l: inout CGPoint, r: CGPoint) { l = l + r }
func *= (l: inout CGPoint, r: CGPoint) { l = l * r }
func /= (l: inout CGPoint, r: CGPoint) { l = l / r }

func -= (l: inout CGPoint, r: CGSize) { l = l - r }
func += (l: inout CGPoint, r: CGSize) { l = l + r }
func *= (l: inout CGPoint, r: CGSize) { l = l * r }
func /= (l: inout CGPoint, r: CGSize) { l = l / r }

func -= (l: inout CGPoint, r: CGFloat) { l = l - r }
func += (l: inout CGPoint, r: CGFloat) { l = l + r }
func *= (l: inout CGPoint, r: CGFloat) { l = l * r }
func /= (l: inout CGPoint, r: CGFloat) { l = l / r }

extension CGPoint {
    func with(x: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: y)
    }
    func with(y: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: y)
    }
    func ceil() -> CGPoint {
        return CGPoint(x: CoreGraphics.ceil(x), y: CoreGraphics.ceil(y))
    }
    func floor() -> CGPoint {
        return CGPoint(x: CoreGraphics.floor(x), y: CoreGraphics.floor(y))
    }
    func round() -> CGPoint {
        return CGPoint(x: CoreGraphics.round(x), y: CoreGraphics.round(y))
    }
    func size() -> CGSize {
        return CGSize(width: x, height: y)
    }
    func toInts() -> (x: Int, y: Int) {
        return (x: Int(x), y: Int(y))
    }
    
    static let one = CGPoint(x: 1, y: 1)
}

// MARK: CGSize op size/float

func - (l: CGSize, r: CGSize) -> CGSize { return CGSize(width: l.width - r.width, height: l.height - r.height) }
func + (l: CGSize, r: CGSize) -> CGSize { return CGSize(width: l.width + r.width, height: l.height + r.height) }
func * (l: CGSize, r: CGSize) -> CGSize { return CGSize(width: l.width * r.width, height: l.height * r.height) }
func / (l: CGSize, r: CGSize) -> CGSize { return CGSize(width: l.width / r.width, height: l.height / r.height) }

func - (l: CGSize, r: CGFloat) -> CGSize { return CGSize(width: l.width - r, height: l.height - r) }
func + (l: CGSize, r: CGFloat) -> CGSize { return CGSize(width: l.width + r, height: l.height + r) }
func * (l: CGSize, r: CGFloat) -> CGSize { return CGSize(width: l.width * r, height: l.height * r) }
func / (l: CGSize, r: CGFloat) -> CGSize { return CGSize(width: l.width / r, height: l.height / r) }

func -= (l: inout CGSize, r: CGSize) { l = l - r }
func += (l: inout CGSize, r: CGSize) { l = l + r }
func *= (l: inout CGSize, r: CGSize) { l = l * r }
func /= (l: inout CGSize, r: CGSize) { l = l / r }

func -= (l: inout CGSize, r: CGFloat) { l = l - r }
func += (l: inout CGSize, r: CGFloat) { l = l + r }
func *= (l: inout CGSize, r: CGFloat) { l = l * r }
func /= (l: inout CGSize, r: CGFloat) { l = l / r }

extension CGSize {
    func with(width: CGFloat)  -> CGSize { return CGSize(width: width, height: height) }
    func with(height: CGFloat) -> CGSize { return CGSize(width: width, height: height) }
    func ceil()  -> CGSize { return CGSize(width: CoreGraphics.ceil(width),  height: CoreGraphics.ceil(height))  }
    func floor() -> CGSize { return CGSize(width: CoreGraphics.floor(width), height: CoreGraphics.floor(height)) }
    func round() -> CGSize { return CGSize(width: CoreGraphics.round(width), height: CoreGraphics.round(height)) }
    func point() -> CGPoint {
        return CGPoint(x: width, y: height)
    }
    func toInts() -> (width: Int, height: Int) {
        return (width: Int(width), height: Int(height))
    }
    
    static let one = CGSize(width: 1, height: 1)
}

// MARK: CGRect accessors

extension CGRect {
    func with(x: CGFloat)      -> CGRect { return CGRect(x: x, y: y, width: width, height: height) }
    func with(y: CGFloat)      -> CGRect { return CGRect(x: x, y: y, width: width, height: height) }
    func with(width: CGFloat)  -> CGRect { return CGRect(x: x, y: y, width: width, height: height) }
    func with(height: CGFloat) -> CGRect { return CGRect(x: x, y: y, width: width, height: height) }
    var x: CGFloat {
        get { return origin.x }
        set { origin.x = newValue }
    }
    var y: CGFloat {
        get { return origin.y }
        set { origin.y = newValue }
    }
    var width: CGFloat {
        get { return size.width }
        set { size.width = newValue }
    }
    var height: CGFloat {
        get { return size.height }
        set { size.height = newValue }
    }
    var centerX: CGFloat {
        get { return x + width / 2 }
        set { x = newValue - width / 2 }
    }
    var centerY: CGFloat {
        get { return y + height / 2 }
        set { y = newValue - height / 2 }
    }
    var center: CGPoint {
        get { return CGPoint(x: centerX, y: centerY) }
        set {
            centerX = newValue.x
            centerY = newValue.y
        }
    }
    var left: CGFloat {
        get { return x }
        set { x = newValue }
    }
    var top: CGFloat {
        get { return y }
        set { y = newValue }
    }
    var right: CGFloat {
        get { return x + width }
        set { x = newValue - width }
    }
    var bottom: CGFloat {
        get { return y + height }
        set { y = newValue - height }
    }
}
