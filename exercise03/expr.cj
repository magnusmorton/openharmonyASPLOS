enum Expression {
    | Literal(Int64)
    | Add(Expression, Expression)
    | Sub(Expression, Expression)
    | Mul(Expression, Expression)  
}


func eval(e: Expression) : Int64 {
    match (e) {
        case Literal(i) => i
        case Add(l, r) => 0 // TODO
        case Sub(l, r) => 0 // TODO
        case Mul(l, r) => 0 // TODO
    }
}

main() {
    let expr = Add(Literal(9), Literal(10))
    println(eval(expr))
}
