package exercise02

class Rectangle <: Shape {
    Rectangle(let h: Float64, let w: Float64) {}
    init(side: Float64) { this(side, side) }

    public override func area() { h * w }
    public func toString() {
        "a ${h} by ${w} rectangle"
    }
}

     
