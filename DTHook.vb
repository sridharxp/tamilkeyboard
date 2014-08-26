(*
Copyright (C) 2014, Sridharan S

This file is part of Tamil Keyboard.

Tamil Keyboard is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Tamil Keyboard is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License version 3
 along with Tamil Keyboard.  If not, see <http://www.gnu.org/licenses/>.
*)
{
Interface Declaration for VB
}

{
To Select a new Layout and Use
}
Declare Sub SELECTKEYBOARD Lib 'DTHook.dll' (Next As String)

{
To suspend processing KeyStrokes
}
Declare Sub SUSPENDKEYBOARDHOOK Lib 'DTHook.dll'

{
To resume processing KeyStrokes
}
Declare Sub RESUMEKEYBOARDHOOK Lib 'DTHook.dll'

{
To return the Hook
To be called Last
}
Declare Sub STOPKEYBOARDHOOK Lib 'DTHook.dll'
