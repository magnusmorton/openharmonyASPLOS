package exercise02

main() {
    println("exercise 02")

    let shapes: Array<Shape> = [
      Circle(2.0),
      Rectangle(3.0, 5.0)
    ]

    for (shape in shapes) {
        println("shape: ${shape} area: ${shape.area()}")
    }

}
       
