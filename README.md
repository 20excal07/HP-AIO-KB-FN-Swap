# FN function swap for HP Pavillion All-In-One keyboards
Swaps the functionality of the FN key on [HP Pavillion All-In-One keyboards.](https://h30434.www3.hp.com/t5/image/serverpage/image-id/182403i5A17A64A69599A3E?v=v2)

Made with AutoHotkey v2.

A few motes:
- The function keys can get "sticky" when multiple function keys are pressed. Try to press just one at a time.
  - I tried my best to mitigate it, but it's not perfect and they can still get "stuck" if you press multiple.
- I don't know how to map the "Brightness Up/Down" (F7/F8) keys because it's not a key that AHK recognises.
  - Instead, you can press the Show Desktop/Notifications shortcut keys on the numpad to get F7 and F8.
  - Otherwise, the original F7 and F8 keys work as-is and you'd need to hold down the Fn key to get them.
- As a bonus, this script also turns your NumPad into a regular one - it'll no longer be just for numbers. :p
  - Press the Calculator shortcut key to toggle the NumLock on/off. 

## How the Numpad thingy works
The script keeps its own internal NumLock state based on the system's NumLock state when the script was started.
Whenever you toggle NumLock with the Calculator key, all you're doing is changing the script's lock state,
while the system's NumLock state is left untouched. When the script exits (i.e. you turn your PC off),
the system's NumLock state is sync'd to that of the script's state, so the next time the script runs, it knows
what state it was last in (assuming you never touch the Numpad keys during that gap).

This avoids having to fight with the fact that the keyboard will ALWAYS send a "NumLock ON" event whenever it sees
that the system's NumLock is actually off, reducing input spam.
