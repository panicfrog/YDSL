let input_file = ref ""

let set_input s =
  input_file := s

let speclist = [
  ("-i", Arg.String set_input, "Input file")
]

let use_msg = "YDSL Compiler - A Data-driven Declarative UI DSL\nUsage: ydslc -i <input_file>"

let () = 
  Arg.parse speclist (fun _ -> ()) use_msg;
  if !input_file = "" then (
    print_endline "Please provide an input file using the -i option";
    exit 1
  ) else (
    print_string !input_file;
  )
