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
Library to hangle Map logic
}
unit DTHookUtil;

interface
uses
  Classes,
  Windows,
  Dialogs,
  Messages,
  SysUtils,
  StrUtils,
  BSearch,
  EZDSLHsh;

type
  TSCIM_4 = array [0..3] of integer;
  pSCIM_4 = ^TSCIM_4;
  TSCIM_3 = array [0..2] of integer;
  pSCIM_3 = ^TSCIM_3;
  TSCIM_2 = array [0..1] of integer;
  pSCIM_2 = ^TSCIM_2;
  TSCIM_1 = array [0..0] of integer;
  pSCIM_1 = ^TSCIM_1;

{Define a record for recording and passing information process wide}
type
  PHookRec = ^THookRec;
  THookRec = packed record
    TheHookHandle: HHOOK;
    KeyboardName: string;
//    TheAppWinHandle: HWND;
    current_vkCode: DWORD;
    shiftkey_pressed: bool;
    caplock_pressed: bool;
    altkey_pressed: bool;
    controlkey_pressed: bool;
    spacebar_pressed: bool;
    backspace_pressed: bool;
    KeyChanged: bool;
    previous_1_character: integer;
    previous_2_character: integer;
    character_pressed: WORD;
(*Hinstance of the calling exe *)
    callapp_hInst: HWND;
    Keyboard_Enabled: bool;
    NextKeboardName: string;
    SCIMSpan: integer;
  end;

  tagKBDLLHOOKSTRUCT = record
    vkCode: DWORD;
    scanCode: DWORD;
    flags: DWORD;
    time: DWORD;
    dwExtraInfo: cardinal;
  end;
  KBDLLHOOKSTRUCT = tagKBDLLHOOKSTRUCT;
  PKBDLLHOOKSTRUCT = ^tagKBDLLHOOKSTRUCT;
  LPKBDLLHOOKSTRUCT = ^tagKBDLLHOOKSTRUCT;

  TGenKey = procedure(const vk: integer;  const bUnicode: bool);

Const
  SCIMCycle = 5;
  valid_keys: array [1..63] of integer = (
//Backspace, enter keys
   $08, $0D,
//Special characters ESC
  $1B,
//space key
  $20,
//numbers - 10
  $30, $31, $32, $33, $34, $35, $36, $37, $38, $39,
  //alphabets - 26
  $41, $42, $43, $44, $45, $46, $47, $48,
  $49, $4A, $4B, $4C, $4D, $4E, $4F, $50, $51,
  $52, $53, $54, $55, $56, $57, $58, $59, $5A,
// funcion keys F1 to F12
  $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7A, $7B,
//special characters ; - , + / .
// ; + , - . /
  $BA, $BB, $BC, $BD, $BE, $BF,
//special characters ~ [ \ ] '
// ` [ \ ] '
  $C0, $DB, $DC, $DD, $DE
  );

(*define visible keystrokes array other than alphabets & also the backspace and spacebar keys*)
(*` [ ] ; ' \  , . / - + 0 1 2 3 4 5 6 7 8 9*)
//visiblekeys: array [0..21] of DWORD = ($C0,$DB,$DD,$DE,$BA,$DC,$DE,$BC,$BE,$BF,$BD,$BB,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39);
//visiblekeys: array [1..21] of integer = ($30,$31,$32,$33,$34,$35,$36,$37,$38,$39, $BA, $BB, $BC, $BD, $BE, $BF, $C0, $DB, $DC, $DD, $DE);
visiblekeys: array [1..47] of integer = (
  $30,$31,$32,$33,$34,$35,$36,$37,$38,$39,
  $41, $42, $43, $44, $45, $46, $47, $48,
  $49, $4A, $4B, $4C, $4D, $4E, $4F, $50, $51,
  $52, $53, $54, $55, $56, $57, $58, $59, $5A,
  $BA, $BB, $BC, $BD, $BE, $BF, $C0, $DB, $DC, $DD, $DE);

var
  hObjHandle: THandle; {Variable for the file mapping object}
  lpHookRec: PHookRec; {Pointer to our hook record}
  keyboardmap: THashTable;
  Refstr: array [1..SCIMCycle] of AnsiChar = '     ';
  DeadKeyLength: integer = 0;
  prev_ucchar_length: integer = 0;
  GenKey: TGenKey;

  procedure GetKbdMap;
  procedure LoadKbdMap(const Kee: array of Ansistring; fee: array of integer);
  function DoKeyboard: boolean;
  procedure GenLangCode(const iChars: array of integer);
  function ApplySCIM(const Count: integer): boolean;
  procedure ErrorDlg(const Msg: string);
  procedure GenUKey(const vk: integer;  const bUnicode: bool);

implementation
uses
  DTMap1, DTMap2, DTMap3, DTMap4, DTMap7, DTMap8;

procedure GetKbdMap;
begin
  if (lpHookRec^.KeyboardName <> lpHookRec^.NextKeboardName) then
  begin
    lpHookRec^.KeyboardName := lpHookRec^.NextKeboardName;
    KeyBoardMap.Empty;
  end;
  GenKey := GenUkey;
  if lpHookRec^.NextKeboardName = 'ISCII Typewriter' then
  begin
    lpHookRec^.SCIMSpan := 1;
    KeyBoardMap.TableSize := 350;
    LoadKbdMap(BTKee, BTFee);
  end;
  if lpHookRec^.NextKeboardName = 'Tam Typewriter' then
  begin
    lpHookRec^.SCIMSpan := 1;
    KeyBoardMap.TableSize := 350;
    LoadKbdMap(ATKee, ATFee);
  end;
  if lpHookRec^.NextKeboardName = 'Tam Inscript' then
  begin
    lpHookRec^.SCIMSpan := 3;
    KeyBoardMap.TableSize := 600;
    LoadKbdMap(AIKee, AIFee);
  end;
  if lpHookRec^.NextKeboardName = 'ISCII Inscript' then
  begin
    lpHookRec^.SCIMSpan := 3;
    KeyBoardMap.TableSize := 600;
    LoadKbdMap(BIKee, BIFee);
  end;

  if lpHookRec^.NextKeboardName = 'Tau Typewriter' then
  begin
    lpHookRec^.SCIMSpan := 4;
    KeyBoardMap.TableSize := 600;
    LoadKbdMap(UTKee, UTFee);
  end;
  if lpHookRec^.NextKeboardName = 'Tau Inscript' then
  begin
    lpHookRec^.SCIMSpan := 4;
    KeyBoardMap.TableSize := 600;
    LoadKbdMap(UIKee, UIFee);
  end;
{ Cleanup Variables }
  Refstr := '     ';
  DeadKeyLength := 0;
  prev_ucchar_length := 0;
end;

procedure LoadKbdMap(const Kee: array of Ansistring; Fee: array of integer);
var
i, j: integer;
ti: pointer;
rsize: integer;
begin
  if KeyboardMap.Count > 0 then
    exit;
  rsize := lpHookRec^.SCIMSpan;
  case rsize of
  1:
  begin
    for i := 0 to Length(Kee)-1 do
    begin
      GetMem(ti, sizeof(TSCIM_1));
      for j := 0 to rsize-1 do
        pSCIM_1(ti)^[j]  := Fee[i*rsize];
      KeyboardMap.Insert(kee[i], ti);
    end;
  end;
  2:
  begin
    for i := 0 to Length(Kee)-1 do
    begin
      GetMem(ti, sizeof(TSCIM_2));
      for j := 0 to rsize-1 do
        pSCIM_2(ti)^[j]  := Fee[(i*rsize)+j];
      KeyboardMap.Insert(kee[i], ti);
    end;
  end;
  3:
  begin
    for i := 0 to Length(Kee)-1 do
    begin
      GetMem(ti, sizeof(TSCIM_3));
      for j := 0 to rsize-1 do
        pSCIM_3(ti)^[j]  := Fee[(i*rsize)+j];
  try
      KeyboardMap.Insert(kee[i], ti);
  except
    ErrorDlg(Kee[i] + ' ' + InttoStr(i));
  end;
    end;
  end;
  4:
  begin
    for i := 0 to Length(Kee)-1 do
    begin
      GetMem(ti, sizeof(TSCIM_4));
      for j := 0 to rsize-1 do
        pSCIM_4(ti)^[j]  := Fee[(i*rsize)+j];
  try
      KeyboardMap.Insert(kee[i], ti);
  except
    ErrorDlg(Kee[i] + ' ' + InttoStr(i));
  end;
    end;
  end;
  end;
end;

function DoKeyboard: boolean;
var
  Count: integer;
begin
  Result := False;

  if not lpHookRec^.Keyboard_Enabled then
  begin
    Exit;
  end;

  if not BinarySearch(Valid_Keys, lpHookRec^.current_vkCode, 63) then
    exit;

  (*character_pressed contains the english alphabet pressed, its obtained from the hookdll*)
  for Count :=  1 to SCIMCycle -1 do
    Refstr[Count] := Refstr[Count+1];
  Refstr[SCIMCycle] := Char(lpHookRec^.character_pressed);

  for Count := SCIMCycle downto 1 do
    if ApplySCIM(Count) then
    begin
      Result := True;
      break;
    end;
  if not Result then
    DeadKeyLength := DeadKeyLength + 1;
end;

function ApplySCIM(const Count: integer): boolean;
var
  prev_char_to_delete: string;
  kstr: string;
  wstr: pointer;
begin
  kstr := RightStr(Refstr, Count);
  if not keyboardmap.Search(kstr, wstr) then
  begin
      Result := False;
      Exit;
  end;

  prev_char_to_delete := RightStr(kstr, Count);
  prev_char_to_delete := LeftStr(prev_char_to_delete, Count-1);
  prev_ucchar_length := Length(prev_char_to_delete);

  prev_ucchar_length := prev_ucchar_length - DeadKeyLength;
  DeadKeyLength := 0;
  if prev_ucchar_length < 0 then
    prev_ucchar_length := 0;

  Case lpHookRec^.SCIMSpan of
  4:
    GenLangCode(pSCIM_4(wstr)^);
  3:
    GenLangCode(pSCIM_3(wstr)^);
  2:
    GenLangCode(pSCIM_2(wstr)^);
  1:
    GenLangCode(pSCIM_1(wstr)^);
  end;
  Result := True;
end;

procedure GenLangCode(const iChars: array of integer);
var
  current_ucchar_length: integer;
  i: integer;
  j: integer;
begin
  (* store the length of the characters globally*)
  current_ucchar_length:= Length(ichars); (*Delete the previous unicode characters if both previous and current characters are present*)
  if (prev_ucchar_length > 0) and (current_ucchar_length>0)
  then
  begin
    i := 0;
    while i < prev_ucchar_length
    do
    begin
{ Coreldraw, Wordpad etc do not like unicode backspace }
      Genkey(8, False);
      inc(i);
    end;
  end;
  (*generate the unicode characters if the matching character is found in the keyboard file*)
  if current_ucchar_length > 0 then
  begin
    j := 0;
    while j < current_ucchar_length do
    begin
      if ichars[j] >0 then
        Genkey(ichars[j], True)
      else
        break;
      inc(j);
    end;
  end;
end;

procedure GenUKey(const vk: integer;  const bUnicode: bool);
var
  kb: TKEYBDINPUT;
  Input: TINPUT;
begin
  {keydown}
  lpHookRec^.previous_2_character:= lpHookRec^.previous_1_character;
  lpHookRec^.previous_1_character:= vk; {update previous characters}

{  ZeroMemory(@kb,sizeof(kb));}
{  ZeroMemory(@input,sizeof(input));}

  {keydown}
  if bUnicode then
  begin
    kb.wVk:= 0;
    kb.wScan:= vk; ;
    kb.dwFlags:= $4;
    { KEYEVENTF_UNICODE=4}
  end
  else
  begin
    kb.wVk:= vk;
    kb.wScan:= 0; ;
    kb.dwFlags:= 0;
    {enter unicode here}
  end;
  Input.itype:= INPUT_KEYBOARD;
  Input.ki:= kb;

  SendInput(1, Input,sizeof(Input));

  {keyup}
  if bUnicode then
  begin
    kb.wVk:= 0;
    kb.wScan:= vk ;
    kb.dwFlags:= $4 or KEYEVENTF_KEYUP;
    {KEYEVENTF_UNICODE=4}
  end
  else
  begin
    kb.wVk:= vk;
    kb.wScan:= 0;
    kb.dwFlags:= KEYEVENTF_KEYUP;
  end;
  Input.itype:= INPUT_KEYBOARD;
  Input.ki:= kb;

  SendInput(1,Input,sizeof(Input));
end;


procedure ErrorDlg(Const Msg: string);
begin
  MessageDlg(Msg, mtError, [mbOK], 0);
end;

end.



