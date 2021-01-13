# This file contains interfaces for navigation actions that can typically be executed within an editor. 
# These interfaces can then be implemented per editor and called directly from .talon files by 
# prefixing the method name with "user.".

from talon import ctrl, ui, Module, Context, actions, clip

mod = Module()

@mod.action_class
class Actions:
    def extract_variable():
        """extract selected code to a variable"""

    def extract_method():
        """extract selected code to a method"""
                
    def inline_variable():
        """inline the selected variable"""