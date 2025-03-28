macro package exercise05_macro

import std.ast.*

// TODO: add support for the other Expression types
func transform(expr: Expr): Expr {
    match (expr) {
        case binex: BinaryExpr =>
               let lhs = transform(binex.leftExpr)
               let rhs = transform(binex.rightExpr)
               match (binex.op.kind) {
                   case ADD =>
                       return parseExpr(quote(Add($lhs, $rhs)))
                   case _ =>
                          throw Exception("unimplemented")
               }       
        case ex: Expr =>
               return parseExpr(quote(Literal($ex)))         
    }
}

public macro expression(input: Tokens): Tokens {
    let ast = parseExpr(input)
    return transform(ast).toTokens()
}
