# symbol navigation
# examples:
#   move left before comma 2
#   select after comma: selects the first word after the first comma to the right of the cursor
#   cut right dollar 3: cuts the third dollar to the right of the cursor
# NOT USEFUL?: "cut right dollar" - is cutting single symbols all that useful?
{user.navigation_option} ({user.arrow_key} [{user.cursor_location}] | {user.cursor_location}) <user.any_alphanumeric_key> [<number_small>]:
	user.navigation(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", any_alphanumeric_key, number_small or 1)

# text navigation
# examples:
#   move up after phrase hello world 2
#   select before phrase test
#   cut right phrase test
{user.navigation_option} ({user.arrow_key} [{user.cursor_location}] | {user.cursor_location}) phrase <user.text> [<number_small>]:
	user.navigation(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", text, number_small or 1)

# search_option navigation
# examples:
#   cut left after word 3
#   select left word
#   move after word
# AMBIGUOUS: "(select right) (word too)" vs "select right word two"
# DUPLICATE?: "select after word two" vs "select right word three"
{user.navigation_option} ({user.arrow_key} [{user.cursor_location}] | {user.cursor_location}) {user.search_option} [<number_small>]:
	user.navigation_regex(navigation_option, arrow_key or "RIGHT", cursor_location or "DEFAULT", search_option, number_small or 1)

# The functionality for all these commands is covered in the lines above, but these commands are kept here for convenience. Originally from word_selection.talon.  
word neck [<number_small>]: user.navigation_search_option("SELECT", "RIGHT", "DEFAULT", "word", number_small or 1)
word pre [<number_small>]: user.navigation_search_option("SELECT", "LEFT", "DEFAULT", "word", number_small or 1)
small word neck [<number_small>]: user.navigation_search_option("SELECT", "RIGHT", "DEFAULT", "small", number_small or 1)
small word pre [<number_small>]: user.navigation_search_option("SELECT", "LEFT", "DEFAULT", "small", number_small or 1)
big word neck [<number_small>]: user.navigation_search_option("SELECT", "RIGHT", "DEFAULT", "big", number_small or 1)
big word pre [<number_small>]: user.navigation_search_option("SELECT", "LEFT", "DEFAULT", "big", number_small or 1)

# # symbol navigation
# move [{user.arrow_key}] symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", "DEFAULT", any_alphanumeric_key, number_small or 1)
# move [{user.arrow_key}] before symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", 'BEFORE', any_alphanumeric_key, number_small or 1)
# move [{user.arrow_key}] after symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", 'AFTER', any_alphanumeric_key, number_small or 1)
# delete [{user.arrow_key}] symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("DELETE", arrow_key or "RIGHT","DEFAULT", any_alphanumeric_key, number_small or 1)
# delete [{user.arrow_key}] before symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("DELETE", arrow_key or "RIGHT", "BEFORE", any_alphanumeric_key, number_small or 1)
# delete [{user.arrow_key}] after symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("DELETE", arrow_key or "RIGHT", "AFTER", any_alphanumeric_key, number_small or 1)
# extend [{user.arrow_key}] symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("EXTEND", arrow_key or "RIGHT", "DEFAULT", any_alphanumeric_key, number_small or 1)
# extend [{user.arrow_key}] before symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("EXTEND", arrow_key or "RIGHT", 'BEFORE', any_alphanumeric_key, number_small or 1)
# extend [{user.arrow_key}] after symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("EXTEND", arrow_key or "RIGHT", 'AFTER', any_alphanumeric_key, number_small or 1)
# cut [{user.arrow_key}] symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("CUT", arrow_key or "RIGHT", "DEFAULT", any_alphanumeric_key, number_small or 1)
# cut [{user.arrow_key}] before symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("CUT", arrow_key or "RIGHT", "BEFORE", any_alphanumeric_key, number_small or 1)
# cut [{user.arrow_key}] after symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("CUT", arrow_key or "RIGHT", "AFTER", any_alphanumeric_key, number_small or 1)
# copy [{user.arrow_key}] symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("COPY", arrow_key or "RIGHT", "DEFAULT", any_alphanumeric_key, number_small or 1)
# copy [{user.arrow_key}] before symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("COPY", arrow_key or "RIGHT", "BEFORE", any_alphanumeric_key, number_small or 1)
# copy [{user.arrow_key}] after symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("COPY", arrow_key or "RIGHT", "AFTER", any_alphanumeric_key, number_small or 1)
# select [{user.arrow_key}] symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("SELECT", arrow_key or "RIGHT", "DEFAULT", any_alphanumeric_key, number_small or 1)
# select [{user.arrow_key}] before symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("SELECT", arrow_key or "RIGHT", "BEFORE", any_alphanumeric_key, number_small or 1)
# select [{user.arrow_key}] after symbol <user.any_alphanumeric_key> [<number_small>]: user.navigation("SELECT", arrow_key or "RIGHT", "AFTER", any_alphanumeric_key, number_small or 1)

# # search_option navigation
# move [{user.arrow_key}] seek {user.search_option} [<number_small>]: user.navigation_regex("GO", arrow_key or "RIGHT", "DEFAULT", search_option, number_small or 1)
# move [{user.arrow_key}] before seek {user.search_option} [<number_small>]: user.navigation_regex("GO", arrow_key or "RIGHT", "BEFORE", search_option, number_small or 1)
# move [{user.arrow_key}] after seek {user.search_option} [<number_small>]: user.navigation_regex("GO", arrow_key or "RIGHT", "AFTER", search_option, number_small or 1)
# delete [{user.arrow_key}] seek {user.search_option} [<number_small>]: user.navigation_regex("DELETE", arrow_key or "RIGHT", "DEFAULT", search_option, number_small or 1)
# delete [{user.arrow_key}] before seek {user.search_option} [<number_small>]: user.navigation_regex("DELETE", arrow_key or "RIGHT", "BEFORE", search_option, number_small or 1)
# delete [{user.arrow_key}] after seek {user.search_option} [<number_small>]: user.navigation_regex("DELETE", arrow_key or "RIGHT", "AFTER", search_option, number_small or 1)
# extend [{user.arrow_key}] seek {user.search_option} [<number_small>]: user.navigation_regex("EXTEND", arrow_key or "RIGHT", "DEFAULT", search_option, number_small or 1)
# extend [{user.arrow_key}] before seek {user.search_option} [<number_small>]: user.navigation_regex("EXTEND", arrow_key or "RIGHT", "BEFORE", search_option, number_small or 1)
# extend [{user.arrow_key}] after seek {user.search_option} [<number_small>]: user.navigation_regex("EXTEND", arrow_key or "RIGHT", "AFTER", search_option, number_small or 1)
# cut [{user.arrow_key}] seek {user.search_option} [<number_small>]: user.navigation_regex("CUT", arrow_key or "RIGHT", "DEFAULT", search_option, number_small or 1)
# cut [{user.arrow_key}] before seek {user.search_option} [<number_small>]: user.navigation_regex("CUT", arrow_key or "RIGHT", "BEFORE", search_option, number_small or 1)
# cut [{user.arrow_key}] after seek {user.search_option} [<number_small>]: user.navigation_regex("CUT", arrow_key or "RIGHT", "AFTER", search_option, number_small or 1)
# copy [{user.arrow_key}] seek {user.search_option} [<number_small>]: user.navigation_regex("COPY", arrow_key or "RIGHT", "DEFAULT", search_option, number_small or 1)
# copy [{user.arrow_key}] before seek {user.search_option} [<number_small>]: user.navigation_regex("COPY", arrow_key or "RIGHT", "BEFORE", search_option, number_small or 1)
# copy [{user.arrow_key}] after seek {user.search_option} [<number_small>]: user.navigation_regex("COPY", arrow_key or "RIGHT", "AFTER", search_option, number_small or 1)
# select [{user.arrow_key}] seek {user.search_option} [<number_small>]: user.navigation_regex("SELECT", arrow_key or "RIGHT", "DEFAULT", search_option, number_small or 1)
# select [{user.arrow_key}] before seek {user.search_option} [<number_small>]: user.navigation_regex("SELECT", arrow_key or "RIGHT", "BEFORE", search_option, number_small or 1)
# select [{user.arrow_key}] after seek {user.search_option} [<number_small>]: user.navigation_regex("SELECT", arrow_key or "RIGHT", "AFTER", search_option, number_small or 1)

# # text navigation
# move [{user.arrow_key}] phrase <user.text> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", "DEFAULT", text, number_small or 1)
# move [{user.arrow_key}] before phrase <user.text> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", "BEFORE", text, number_small or 1)
# move [{user.arrow_key}] after phrase <user.text> [<number_small>]: user.navigation("GO", arrow_key or "RIGHT", "AFTER", text, number_small or 1)
# delete [{user.arrow_key}] phrase <user.text> [<number_small>]: user.navigation("DELETE", arrow_key or "RIGHT", "DEFAULT", text, number_small or 1)
# delete [{user.arrow_key}] before phrase <user.text> [<number_small>]: user.navigation("DELETE", arrow_key or "RIGHT", "BEFORE", text, number_small or 1)
# delete [{user.arrow_key}] after phrase <user.text> [<number_small>]: user.navigation("DELETE", arrow_key or "RIGHT", "AFTER", text, number_small or 1)
# extend [{user.arrow_key}] phrase <user.text> [<number_small>]: user.navigation("EXTEND", arrow_key or "RIGHT", "DEFAULT", text, number_small or 1)
# extend [{user.arrow_key}] before phrase <user.text> [<number_small>]: user.navigation("EXTEND", arrow_key or "RIGHT", "BEFORE", text, number_small or 1)
# extend [{user.arrow_key}] after phrase <user.text> [<number_small>]: user.navigation("EXTEND", arrow_key or "RIGHT", "AFTER", text, number_small or 1)
# cut [{user.arrow_key}] phrase <user.text> [<number_small>]: user.navigation("CUT", arrow_key or "RIGHT", "DEFAULT", text, number_small or 1)
# cut [{user.arrow_key}] before phrase <user.text> [<number_small>]: user.navigation("CUT", arrow_key or "RIGHT", "BEFORE", text, number_small or 1)
# cut [{user.arrow_key}] after phrase <user.text> [<number_small>]: user.navigation("CUT", arrow_key or "RIGHT", "AFTER", text, number_small or 1)
# copy [{user.arrow_key}] phrase <user.text> [<number_small>]: user.navigation("COPY", arrow_key or "RIGHT", "DEFAULT", text, number_small or 1)
# copy [{user.arrow_key}] before phrase <user.text> [<number_small>]: user.navigation("COPY", arrow_key or "RIGHT", "BEFORE", text, number_small or 1)
# copy [{user.arrow_key}] after phrase <user.text> [<number_small>]: user.navigation("COPY", arrow_key or "RIGHT", "AFTER", text, number_small or 1)
# select [{user.arrow_key}] phrase <user.text> [<number_small>]: user.navigation("SELECT", arrow_key or "RIGHT", "DEFAULT", text, number_small or 1)
# select [{user.arrow_key}] before phrase <user.text> [<number_small>]: user.navigation("SELECT", arrow_key or "RIGHT", "BEFORE", text, number_small or 1)
# select [{user.arrow_key}] after phrase <user.text> [<number_small>]: user.navigation("SELECT", arrow_key or "RIGHT", "AFTER", text, number_small or 1)
