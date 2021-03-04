
-

[<user.arrow_key>] {user.cursor_location} <number>: user.navigation("GO", arrow_key or "RIGHT", cursor_location, "{number}", 1)
[<user.arrow_key>] {user.cursor_location} <user.text> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", cursor_location, text, number_small or  1)
[<user.arrow_key>] {user.cursor_location} <user.letter> [<number_small>]:	user.navigation("GO", arrow_key or "RIGHT", cursor_location, letter, number_small or  1)
#[<user.arrow_key>] {user.cursor_location} <user.symbol_key> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", cursor_location, symbol_key, number_small or  1)
[<user.arrow_key>] {user.cursor_location} {user.search_option} [<number_small>]: user.navigation_regex("GO", arrow_key or "RIGHT", cursor_location, search_option, number_small or  1)

{user.navigation_option} [<user.arrow_key>] [{user.cursor_location}] <number>: user.navigation(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", "{number}", 1)
{user.navigation_option} [<user.arrow_key>] [{user.cursor_location}] <user.text> [<number_small>]: user.navigation(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", text, number_small or  1)
{user.navigation_option} [<user.arrow_key>] [{user.cursor_location}] <user.letter> [<number_small>]: user.navigation(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", letter, number_small or  1)	
#{user.navigation_option} [<user.arrow_key>] [{user.cursor_location}] <user.symbol_key> [<number_small>]: user.navigation(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", symbol_key, number_small or  1)
{user.navigation_option} [<user.arrow_key>] [{user.cursor_location}] {user.search_option} [<number_small>]: user.navigation_regex(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", search_option, number_small or  1)

# The functionality for all these commands is covered in the lines above, but these commands are kept here for convenience. Originally from word_selection.talon.  
word neck [<number_small>]: user.navigation_search_option("SELECT", "RIGHT", "DEFAULT", "word", number_small or  1)
word pre [<number_small>]: user.navigation_search_option("SELECT", "LEFT", "DEFAULT", "word", number_small or  1)
small word neck [<number_small>]: user.navigation_search_option("SELECT", "RIGHT", "DEFAULT", "small", number_small or  1)
small word pre [<number_small>]: user.navigation_search_option("SELECT", "LEFT", "DEFAULT", "small", number_small or  1)
big word neck [<number_small>]: user.navigation_search_option("SELECT", "RIGHT", "DEFAULT", "big", number_small or  1)
big word pre [<number_small>]: user.navigation_search_option("SELECT", "LEFT", "DEFAULT", "big", number_small or  1)
 



({user.navigation_option} [<user.arrow_key>] [{user.cursor_location}] | [<user.arrow_key>] {user.cursor_location}) <user.symbol_key> [<number_small>]: 
	user.navigation(navigation_option or "GO", arrow_key or "RIGHT", cursor_location or "DEFAULT", symbol_key, number_small or  1)
