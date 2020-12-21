# This file contains interfaces for navigation actions that can typically be executed within an editor. 
# These interfaces can then be implemented per editor and called directly from .talon files by 
# prefixing the method name with "user." and adding "tag: user.navigation_commands".

from talon import ctrl, ui, Module, Context, actions, clip
mod = Module()
mod.tag(
    "navigation_commands",
    desc="Tag for enabling generic editor commands",
)
#Do we need to at" user"To the annotation?
@mod.action_class
class Actions:
    def jump_back():
        """Move the cursor to its previous location"""

    def jump_forward():
        """Move the cursor to its next location"""        

    def go_inside():
        """Go inside the selected method, variable or class"""

