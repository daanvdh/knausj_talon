question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(dot dot | dotdot): ".."
#ellipses: "…"
ellipses: "..."
(comma and | spamma): ", "
plus: "+"
#arrow: "->" False positives with 'air'
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
empty dubstring:
    '""'
    key(left)
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
empty string:
    "''"
    key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)
(inside parens | args):
    text = edit.selected_text()
    user.paste("({text})")
    key(left)
inside (squares | list): 
    text = edit.selected_text()
    user.paste("[{text}]")
    key(left)
inside (bracket | braces): 
    text = edit.selected_text()
    user.paste("{{{text}}}")
    key(left)
inside angles: 
    text = edit.selected_text()
    user.paste("<{text}>")
    key(left)
inside percent:
    text = edit.selected_text() 
	insert("%{text}%")
	key(left)
inside quotes:
    text = edit.selected_text()
	insert('"{text}"')
	key(left)
