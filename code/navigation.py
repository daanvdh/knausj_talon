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

    def backwards_before(symbol: str):
        """put the cursor before the given symbol"""
        backwards_before(ascii(symbol))
        
    def backwards_after(symbol: str):
        """put the cursor after the given symbol"""
        backwards_after(ascii(symbol))        
                        
    def extend_right(symbol: str):
        """extend the current selection in the right direction"""
        extend_right(ascii(symbol))

    def extend_left(symbol: str):
        """extend the current selection in the left direction"""
        extend_left(ascii(symbol))        

def extend_right(symbol):
    with clip.revert():
        actions.edit.copy()
        current_selection_length = len(clip.get())
    with clip.revert():
        actions.edit.extend_line_end()
        time.sleep(0.1)
        actions.edit.copy()
        actions.edit.left()
        time.sleep(0.1)
        text_right = clip.get().lower()
    i = current_selection_length 
    while i < len(text_right) - 1 and not symbol[1] == text_right[i]:
        i += 1
    if symbol[1] == text_right[i]:
        for j in range(0, i+1):
            actions.edit.extend_right()
    else:
        for j in range(0, current_selection_length):
            actions.edit.extend_right()

def extend_left(symbol):
    with clip.revert():
        actions.edit.copy()
        time.sleep(0.1)
        current_selection_length = len(clip.get())
    with clip.revert():
        actions.edit.extend_line_start()
        time.sleep(0.1)
        actions.edit.copy()
        actions.edit.right()
        time.sleep(0.1)
        text_right = clip.get().lower()
    i = current_selection_length
    length = len(text_right) 
    while i < length and not symbol[1] == text_right[length-i-1]:
        i += 1
    if i < length:
        for j in range(0, i+1):
            actions.edit.extend_left()
    else:
        for j in range(0, current_selection_length):
            actions.edit.extend_left()
        
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

def backwards_after(symbol):
    with clip.revert():
        actions.edit.extend_line_start()
        time.sleep(0.1)
        actions.edit.copy()
        actions.edit.right()
        time.sleep(0.1)
        text_right = clip.get().lower()
    i = 0
    length = len(text_right) - 1
    while i < length and not symbol[1] == text_right[length-i]:
        i += 1
    print(i)
    if symbol[1] == text_right[length-i]:
        for j in range(0, i):
            actions.edit.left()
        return True
    return False
    
def backwards_before(symbol):
    if backwards_after(symbol): actions.edit.left()
    