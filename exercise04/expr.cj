package exercise04

enum Expression {
    | Literal(Int64)
    | Add(Expression, Expression)
    | Sub(Expression, Expression)
    | Mul(Expression, Expression)  
}


// TODO: parallelise using spawn and .get
func eval(e: Expression) : Int64 {
    match (e) {
        case Literal(i) => i
        case Add(l, r) => eval(l) + eval(r)
        case Sub(l, r) => eval(l) - eval(r)
        case Mul(l, r) => eval(l) * eval(r)
    }
}

main() {
    let add = Add(Literal(9), Literal(10))
    let mul = Mul(Add(Literal(1), Literal(1)), Literal(8))
    let add_fut: Future<Int64> = spawn { eval(add) }
    let mul_fut = spawn { eval(mul) }
    println(eval(Add(Literal(add_fut.get()), Literal(mul_fut.get()))))
}
