package exercise05

import exercise05_macro.*

enum Expression {
    | Literal(Int64)
    | Add(Expression, Expression)
    | Sub(Expression, Expression)
    | Mul(Expression, Expression)  
}


func eval(e: Expression) : Int64 {
    match (e) {
        case Literal(i) => i
        case Add(l, r) => eval(l) + eval(r)
        case Sub(l, r) => eval(l) - eval(r)
        case Mul(l, r) => eval(l) * eval(r)
    }
}

main() {
    let expr: Expression = @expression(1 + 1)
    println(eval(expr))
}
