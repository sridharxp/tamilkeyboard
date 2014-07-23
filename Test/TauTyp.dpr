program TauTyp;

{$APPTYPE CONSOLE}

uses
  SysUtils, Dialogs;

{$include DTHook.int}

begin
  { TODO -oUser -cConsole Main : Insert code here }
SELECTKEYBOARD(0, 'Tau Typewriter');
MessageDlg('Stop Typewriter Mode', mtInformation, [mbOK], 0);
STOPKEYBOARDHOOK;
end.
