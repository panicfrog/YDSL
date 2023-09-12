(* ocamllex token *)

rule token = parse
    | [' ' '\t' '\n'] { token lexbuf } (* Skip whitespace *)

    | "Text"      { Text }
    | "Button"    { Button }
    | "VStack"    { VStack }
    | "HStack"    { HStack }

    | '('         { LPAREN }
    | ')'         { RPAREN }
    | '{'         { LBRACE }
    | '}'         { RBRACE }
    | ','         { COMMA }
    | '"'         { COLON }

    | ['a'-'z' 'A'-'Z' '0'-'9' '_']+ as id { IDENT id }

    | eof         { EOF }