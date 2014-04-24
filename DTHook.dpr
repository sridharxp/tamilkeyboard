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
library DTHook;

uses
  Windows,
  Dialogs,
  Messages,
  SysUtils,
  DTHookUtil,
  DTMap1, DTMap2, DTMap3, DTMap4,
  EZDSLHsh in '..\..\DL\ezdsl304\EZDSLHsh.PAS',
  bsearch in '\dl\Lib\BSearch.pas';

{$R *.res}

procedure DropName;
begin
  ShowMessage('Sridharan S, aurosridhar@gmail.com');
end;

function KeyboardHookProc(nCode: integer;  wParam: WPARAM;  lParam: LPARAM): LRESULT; stdcall;
var
  p: PKBDLLHOOKSTRUCT;
  keyboard_state: TKeyboardState;
  wCharacter: WORD;
  ta: integer;
begin
  p := PKBDLLHOOKSTRUCT(lParam);
  if wParam=WM_KEYDOWN then
  begin
//    current_vkCode := p.vkCode;
    lpHookRec^.current_vkCode := p.vkCode;

    GetKeyboardState(keyboard_state);
    wCharacter:=0;
    ta:=ToAscii(p.vkCode,p.scanCode,keyboard_state,@wCharacter,0);
    if ta>0 then
      lpHookRec^.character_pressed:= wCharacter;

    DoKeyboard;

    if (GetKeyState(VK_SHIFT) and $80)=$80 then
      lpHookRec^.shiftkey_pressed := true
    else
      lpHookRec^.shiftkey_pressed := false;
    if GetKeyState(VK_CAPITAL)<>0 then
      lpHookRec^.caplock_pressed := true
    else
    lpHookRec^.caplock_pressed:= false;
    if (GetKeyState(VK_LMENU) and $80) = $80 then
      lpHookRec^.altkey_pressed := true
    else
      lpHookRec^.altkey_pressed := false;
    if (GetKeyState(VK_CONTROL) and $80) = $80 then
      lpHookRec^.controlkey_pressed := true
    else
      lpHookRec^.controlkey_pressed := false;
    if (GetKeyState(VK_SPACE) and $80) = $80 then
      lpHookRec^.spacebar_pressed:= true
    else
      lpHookRec^.spacebar_pressed:= false;
    if (GetKeyState(VK_BACK) and $80) = $80 then
      lpHookRec^.backspace_pressed := true
    else
      lpHookRec^.backspace_pressed := false;
    (*Do not handle the keystrokes if control key or ALT is pressed - let the system handle them.*)

    if lpHookRec^.controlkey_pressed then
    begin
        result:= 0;
        exit;
    end;
    if lpHookRec^.altkey_pressed then
    begin
        result:= 0;
        exit;
    end;

    if BinarySearch(visiblekeys,p. vkCode, 47) then
    begin
      if lpHookRec^.Keyboard_Enabled then
      begin
        lpHookRec^.keychanged:= true;
          result:= 1;
          exit;
      end
      else
      begin
          result:= 0;
          exit;
      end;
    end;
  end
  else
  (*if wParam == WM_KEYDOWN*)
  (*This portion is written to prevent the bug in which the shift key was not cleared untill 2 keys are pressed. *)
  (*It handles key up events and doesnt call Postmessage so that no keystroke is sent to the appliction during key up. *)
  (*only character_pressed variale is set, which helps us to clear the keys like shiftkey correctly*)
  if wParam=WM_KEYUP then
  begin
    lpHookRec^.current_vkCode:= p.vkCode;

    GetKeyboardState(keyboard_state);
    if (GetKeyState(VK_SHIFT) and $80)=$80 then
      lpHookRec^.shiftkey_pressed := true
    else
    lpHookRec^.shiftkey_pressed := false;
    if (GetKeyState(VK_CONTROL) and $80)=$80 then
      lpHookRec^.controlkey_pressed := true
    else
      lpHookRec^.controlkey_pressed := false;
    if (GetKeyState(VK_LMENU) and $80)=$80 then
      lpHookRec^.altkey_pressed := true
    else
      lpHookRec^.altkey_pressed := false;
  end;

//  processKeypressEvent;

  begin
    result := CallNextHookEx(lpHookRec^.TheHookHandle, nCode, wParam, lParam);
    exit;
  end;
end;

//function Init_nokeyboard(hInstance: THandle;  enabled: bool;  hwnd: HWND): HHOOK; stdcall;
procedure Start(const hwnd: HWND) stdcall;
begin
//  if (lpHookRec <> nil) then
  if lpHookRec^.Keyboard_Enabled then
    Exit;
  {If we have a process wide memory variable and the hook has not already been set...}
  if ((lpHookRec <> nil) and (lpHookRec^.TheHookHandle = 0)) then
  begin
    {Set the hook and remember our hook handle}
//    lpHookRec^.TheHookHandle := SetWindowsHookEx(WH_KEYBOARD, @KeyboardHookProc,
//      hInstance, 0);
    lpHookRec^.TheHookHandle := SetWindowsHookEx(13, @KeyboardHookProc,
      hInstance, 0);
//    lpHookRec^.KeyboardName := 'Dawn B Typewriter';
    lpHookRec^.Current_vkCode := $0;
    lpHookRec^.Shiftkey_pressed := false;
    lpHookRec^.Caplock_pressed := false;
    lpHookRec^.Altkey_pressed := false;
    lpHookRec^.Controlkey_pressed := false;
    lpHookRec^.Spacebar_pressed := false;
    lpHookRec^.Backspace_pressed := false;
    lpHookRec^.Previous_1_Character := 0;
    lpHookRec^.Previous_2_Character := 0;
    lpHookRec^.Character_pressed := 0;
//    callapp_hInst: HWND; (*Hinstance of the calling exe *)
(*this stores the status of the keyboard which will be queried by the Qt application at regular intervals*)
//    lpHookRec^.Capslock_On := 0;
    lpHookRec^.Keychanged := False;
    lpHookRec^.Keyboard_Enabled := true;

    lpHookRec^.callapp_hInst := hwnd;
  end;
end;


procedure ResumeKH(const hwnd: HWND) stdcall;
begin
  if ((lpHookRec <> nil)) then
  begin
    if ((lpHookRec^.TheHookHandle = 0)) then
    begin
      Start(HWND);
      Exit;
    end;
    lpHookRec^.Keyboard_Enabled := true;
 end;
end;

procedure Stop; stdcall;
begin
//  if (lpHookRec <> nil) then
  if not lpHookRec^.Keyboard_Enabled then
    Exit;
//  UnhookWindowsHookEx(hkb);
  {If we have a process wide memory variable and the hook has already been set...}
  if ((lpHookRec <> nil) and (lpHookRec^.TheHookHandle <> 0)) then
  begin

    {Remove our hook and clear our hook handle}
    if (UnHookWindowsHookEx(lpHookRec^.TheHookHandle) <> FALSE) then
    begin
      lpHookRec^.TheHookHandle := 0;
      lpHookRec^.Keyboard_Enabled := False;
    end;
  end;
end;

procedure SuspendKH; stdcall;
begin
  if (lpHookRec <> nil) then
      lpHookRec^.Keyboard_Enabled := False;
end;

procedure MapFileMemory(dwAllocSize: DWORD);
begin
  {Create a process wide memory mapped variable}
  hObjHandle := CreateFileMapping($FFFFFFFF, nil, PAGE_READWRITE, 0, dwAllocSize,
    'HookRecMemBlock');
  if (hObjHandle = 0) then
  begin
    MessageBox(0, 'Hook DLL', 'Could not create file Map object', MB_OK);
    exit;
  end;
  {Get a pointer to our process wide memory mapped variable}
  lpHookRec := MapViewOfFile(hObjHandle, FILE_MAP_WRITE, 0, 0, dwAllocSize);
  if (lpHookRec = nil) then
  begin
    CloseHandle(hObjHandle);
    MessageBox(0, 'Hook DLL', 'Could not Map file', MB_OK);
    exit;
  end;
  lpHookRec^.TheHookHandle := 0;
end;

procedure UnMapFileMemory;
begin
  {Delete our process wide memory mapped variable}
  if (lpHookRec <> nil) then
  begin
    UnMapViewOfFile(lpHookRec);
    lpHookRec := nil;
  end;
  if (hObjHandle > 0) then
  begin
    CloseHandle(hObjHandle);
    hObjHandle := 0;
  end;
end;

function GetHookRecPointer: pointer stdcall;
begin
  {Return a pointer to our process wide memory mapped variable}
  result := lpHookRec;
end;

procedure SelectKeyboard(const hwnd: HWND; Next: pChar); stdcall;
begin
//  Stop;
  SuspendKH;

{  SetLength(Temp, Length(Next)+1);
  strcopy(pchar(Temp), Next);
}
  lpHookRec^.NextKeboardName := Next;
  GetKbdMap;

//  Start(HWND);
  ResumeKH(HWND);
end;

{The function that actually processes the keystrokes for our hook}



procedure DllEntryPoint(dwReason: DWORD);
begin
  case dwReason of
    Dll_Process_Attach:
      begin
        {If we are getting mapped into a process, then get a pointer to our
                                process wide memory mapped variable}
        hObjHandle := 0;
        lpHookRec := nil;
        MapFileMemory(sizeof(lpHookRec^));
        KeyboardMap := THashTable.Create(False);
//        KeyboardMap.TableSize := 1500;
      end;
    Dll_Process_Detach:
      begin
        {If we are getting unmapped from a process then, remove the pointer to
                                our process wide memory mapped variable}
        UnMapFileMemory;
        if Assigned(KeyboardMap) then
          begin
            KeyboardMap.Empty;
            KeyboardMap.Free;
        end;
      end;
  end;
end;

exports

  Start name 'STARTKEYBOARDHOOK',
  ResumeKH name 'RESUMEKEYBOARDHOOK',
  Stop name 'STOPKEYBOARDHOOK',
  SuspendKH name 'SUSPENDKEYBOARDHOOK',
  GetHookRecPointer name 'GETHOOKRECPOINTER',
  SelectKeyboard name 'SELECTKEYBOARD',
  DropName name 'GetAuthor';

begin
  {Set our Dll's main entry point}
  DLLProc := @DllEntryPoint;
  {Call our Dll's main entry point}
  DllEntryPoint(Dll_Process_Attach);
end.


