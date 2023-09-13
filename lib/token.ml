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
  
