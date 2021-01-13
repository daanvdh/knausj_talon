# This file contains interfaces for navigation actions that can typically be executed within an editor. 
# These interfaces can then be implemented per editor and called directly from .talon files by 
# prefixing the method name with "user.".

import time
from talon import ctrl, ui, Module, Context, actions, clip

mod = Module()

@mod.action_class
class Actions:
    def jump_back():
        """Move the cursor to its previous location"""

    def jump_forward():
        """Move the cursor to its next location"""        

    def go_inside():
        """Go inside the selected method, variable or class"""

    def go_bracket():
        """Go to the next bracket or the matching bracket if the cursor is already on a bracket"""

    def go_last_error():
        """Go to the last error in the editor"""
        
    def go_next_error():
        """Go to the next error in the editor"""

    def go_next_occurrence():
        """Go to the next occurrence of the selected text"""

    def go_last_occurrence():
        """Go to the last occurrence of the selected text"""

    def go_last_method():
        """Go to the previous method definition"""

    def go_next_method():
        """Go to the next method definition"""

    def before(symbol: str):
        """put the cursor before the given symbol"""
        before(ascii(symbol))
        
    def after(symbol: str):
        """put the cursor after the given symbol"""
        after(ascii(symbol))
                        
def before(symbol):
    with clip.revert():
        actions.edit.extend_line_end()
        time.sleep(0.1)
        actions.edit.copy()
        actions.edit.left()
        time.sleep(0.1)
        text_right = clip.get().lower()
    i = 0
    while i < len(text_right) - 1 and not symbol[1] == text_right[i]:
        i += 1
    if symbol[1] == text_right[i]:
        for j in range(0, i):
            actions.edit.right()
        return True
    return False

def after(symbol):
    if before(symbol): actions.edit.right()