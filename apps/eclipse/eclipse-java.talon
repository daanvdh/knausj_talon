app: eclipse
-

#copy-paste
copy method name:
	user.go_last_method()
    edit.select_word()
    edit.copy()
    user.jump_back()
copy class name:
	key(ctrl-home)
	user.go_next_method()
    edit.select_word()
    edit.copy()
    user.jump_back()
    user.jump_back()

#navigation    
go class:
	key(ctrl-home)
	user.go_next_method()

#run
run method:
	user.go_last_method()
    edit.select_word()
    key(alt-shift-x t)
    user.jump_back()	