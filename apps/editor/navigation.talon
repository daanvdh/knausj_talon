
-

go back: user.jump_back()
go forward: user.jump_forward()
go inside: user.go_inside()
[go] [right] before <user.symbol_key>: user.before(symbol_key, 1)
[go] [right] before <user.symbol_key> <number> : user.before(symbol_key, number)
[go] [right] after <user.symbol_key>: user.after(symbol_key, 1)
[go] [right] after <user.symbol_key> <number>: user.after(symbol_key, number)
[go] left before <user.symbol_key>: user.backwards_before(symbol_key, 1)
[go] left before <user.symbol_key> <number>: user.backwards_before(symbol_key, number)
[go] left after <user.symbol_key>: user.backwards_after(symbol_key, 1)
[go] left after <user.symbol_key> <number>: user.backwards_after(symbol_key, number)
extend [right] before <user.symbol_key>: user.extend_right_before(symbol_key, 1)
extend [right] before <user.symbol_key> <number>: user.extend_right_before(symbol_key, number)
extend [right] [after] <user.symbol_key>: user.extend_right_after(symbol_key, 1)
extend [right] [after] <user.symbol_key> <number>: user.extend_right_after(symbol_key, number)
extend left [before] <user.symbol_key>: user.extend_left_before(symbol_key, 1)
extend left [before] <user.symbol_key> <number>: user.extend_left_before(symbol_key, number)
extend left after <user.symbol_key>: user.extend_left_after(symbol_key, 1)
extend left after <user.symbol_key> <number>: user.extend_left_after(symbol_key, number)
