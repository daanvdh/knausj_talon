os: windows
and app.name: OUTLOOK.EXE
#and app: Outlook
-
(archive | floop): key(alt h o)
new e-mail: key(ctrl-n)
calendar: key(ctrl-2)
inbox: key(ctrl-1)
Reply: key(ctrl-r)
Reply all: key(ctrl-shift-r)
Forward: key(ctrl-f)
accept:
	key(shift-f10 c)
	sleep(300ms)
	key(c enter)
decline: 
	key(shift-f10 e)
	sleep(300ms)
	key(d enter) 
decline respond: 
	key(shift-f10 e)
	sleep(300ms)
	#key(d enter)
search:
	key(ctrl-e)
