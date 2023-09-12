
let () = Printf.sprintf "Hello, YDSL!" |> print_string;;

type token =
  | Text
  | Button
  | VStack
  | HStack
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | COMMA
  | COLON
  | IDENT of string
  | EOF