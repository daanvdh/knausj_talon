tag: user.line_commands
-
#this defines some common line commands. More may be defined that are ide-specific.
lend: edit.line_end()
bend: edit.line_start()
line <number>: edit.jump_line(number)
line <number> end: 
    edit.jump_line(number)
    edit.line_end()
comment:
    code.toggle_comment()
comment [line] <number>:
    user.select_range(number, number)
    code.toggle_comment()
	user.jump_back()
comment <number> until <number>: 
    user.select_range(number_1, number_2)
    code.toggle_comment()
	user.jump_back()
clear [line] <number>:
    edit.jump_line(number)
    edit.delete_line()
    user.jump_back()
clear <number> until <number>: 
    user.select_range(number_1, number_2)
    edit.delete()
    user.jump_back()
copy [line] <number>: 
    user.select_range(number, number)
    edit.copy()
    user.jump_back()
copy <number> until <number>:
    user.select_range(number_1, number_2)
    edit.copy()
    user.jump_back()
use <number>:
    user.select_range(number, number)
    edit.copy()
    user.jump_back()
	key(enter)
    edit.extend_line_start()
    edit.delete() 
    edit.paste()
use <number> until <number>:
    user.select_range(number_1, number_2) 
    edit.copy()
    user.jump_back()
	key(enter)
    edit.extend_line_start()
    edit.delete()
    edit.paste()
    
cut [line] <number>: 
    user.select_range(number, number)
    edit.cut()
    user.jump_back()
cut [line] <number> here: 
    user.select_range(number, number)
    edit.cut()
    user.jump_back()
	edit.paste()
cut [line] <number> until <number>: 
    user.select_range(number_1, number_2)
    edit.cut()
    user.jump_back()
cut [line] <number> until <number> here: 
    user.select_range(number_1, number_2)
    edit.cut()
    user.jump_back()
    edit.paste()
paste <number> until <number>:
  user.select_range(number_1, number_2)
  edit.paste()
(paste | replace) <number> until <number>:
    user.select_range(number_1, number_2)
    edit.paste()
(select | cell | sell) line <number>: user.select_range(number, number)
(select | cell | sell) [line] <number> until <number>: user.select_range(number_1, number_2)
tab that: edit.indent_more()
tab [line] <number>:
    edit.jump_line(number)
    edit.indent_more()
tab <number> until <number>:
    user.select_range(number_1, number_2)
    edit.indent_more()
retab that: edit.indent_less()
retab [line] <number>:
    user.select_range(number, number)
    edit.indent_less()
retab <number> until <number>:
    user.select_range(number_1, number_2)
    edit.indent_less()
drag [line] down: edit.line_swap_down()
drag [line] up: edit.line_swap_up()
drag up [line] <number>:
    user.select_range(number, number)
    edit.line_swap_up()
drag up <number> until <number>: 
    user.select_range(number_1, number_2)
    edit.line_swap_up()
drag down [line] <number>: 
    user.select_range(number, number)
    edit.line_swap_down()
drag down <number> until <number>: 
    user.select_range(number_1, number_2)
    edit.line_swap_down()
clone (line|that): edit.line_clone()
