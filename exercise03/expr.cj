enum Expr {
    | Literal(Int64)
    | Add(Expr, Expr)
    | Sub(Expr, Expr)
    | Mul(Expr, Expr)  
}


func eval(e: Expr) : Int64 {
    match (e) {
        case Literal(i) => i
        case Add(l, r) => 0 // TODO
        case Sub(l, r) => 0 // TODO
        case Mul(l, r) => 0 // TODO
    }
}

main() {
    let simple = Add(Literal(9), Literal(10))
    eval(expr)
}
