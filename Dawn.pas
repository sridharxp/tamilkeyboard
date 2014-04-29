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
Application Main Window
}
unit Dawn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
    ExtCtrls, HotKeyManager, Menus;

type
  TfrmDawn = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblLayout: TLabel;
    HotKeyMgr: THotKeyManager;
    Info: TLabel;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Author1: TMenuItem;
    cmbKbd: TComboBox;
    HotKeys1: TMenuItem;
    cmbFont: TComboBox;
    ool1: TMenuItem;
    Debug1: TMenuItem;
    CodePoint1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HotKeyMgrHotKeyPressed(HotKey: Cardinal; Index: Word);
//    procedure Enable;
    procedure Select;
    procedure Disable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Author1Click(Sender: TObject);
//    procedure FormShow(Sender: TObject);
    procedure HotKeys1Click(Sender: TObject);
    procedure Debug1Click(Sender: TObject);
    procedure CodePoint1Click(Sender: TObject);
  private
    { Private declarations }
  protected
//    function UnLock: boolean;
  public
    { Public declarations }
    unLocked: boolean;
  end;

procedure dropname;

var
  frmDawn: TfrmDawn;

implementation

uses MapUtil, CodePoint;

{$R *.DFM}

{Functions prototypes for the hook dll}
type
  TGetHookRecPointer = function: pointer; stdcall;
type
  TStartKeyBoardHook = procedure(hwnd: HWND); stdcall;
type
  TStopKeyBoardHook = procedure; stdcall;
type
  TSelectKeyboard = procedure(hwnd: HWND; Next: pChar); stdcall;
type
  TSuspend = procedure; stdcall;
  TResume = procedure; stdcall;

  {The record type filled in by the hook dll}
type
  THookRec = packed record
//    TheAppWinHandle: HWND;
    TheHookHandle: HHOOK;
    KeyboardName: string;
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
(*this stores the status of the keyboard which will be queried by the Qt application at regular intervals*)
    Keyboard_Enabled: bool;
    NextKeboardName: string;
    SCIMSpan: integer;
  end;

  {A pointer type to the hook record}
type
  PHookRec = ^THookRec;

var
  hHookLib: THandle; {A handle to the hook dll}
  GetHookRecPointer: TGetHookRecPointer; {Function pointer}
  StartKeyBoardHook: TStartKeyBoardHook; {Function pointer}
  StopKeyBoardHook: TStopKeyBoardHook; {Function pointer}
  LibLoadSuccess: bool; {If the hook lib was successfully loaded}
  lpHookRec: PHookRec; {A pointer to the hook record}
  SelectKeyboard: TSelectKeyboard;
  SuspendKeyboardHook: TSuspend;
  ResumeKeyboardHook: TResume;

procedure TfrmDawn.FormCreate(Sender: TObject);
begin
  @GetHookRecPointer := nil;
  @StartKeyBoardHook := nil;
  @StopKeyBoardHook := nil;
  @SelectKeyboard := nil;
  @SuspendKeyboardHook := nil;
  @ResumeKeyboardHook := nil;
  {Try to load the hook dll}
  hHookLib := LoadLibrary('DTHOOK.DLL');
  {If the hook dll was loaded successfully}
  if hHookLib <> 0 then
  begin
    {Get the function addresses}
    @GetHookRecPointer := GetProcAddress(hHookLib, 'GETHOOKRECPOINTER');
    @StartKeyBoardHook := GetProcAddress(hHookLib, 'STARTKEYBOARDHOOK');
    @StopKeyBoardHook := GetProcAddress(hHookLib, 'STOPKEYBOARDHOOK');
    @selectKeyboard := GetProcAddress(hHookLib, 'SELECTKEYBOARD');
    @suspendKeyboardHook := GetProcAddress(hHookLib, 'SUSPENDKEYBOARDHOOK');
    @ResumeKeyboardHook := GetProcAddress(hHookLib, 'RESUMEKEYBOARDHOOK');
    {Did we find all the functions we need?}
    if ((@GetHookRecPointer <> nil) and (@StartKeyBoardHook <> nil) and
      (@StopKeyBoardHook <> nil)) then
    begin
      LibLoadSuccess := TRUE;
      {Get a pointer to the hook record}
      lpHookRec := GetHookRecPointer;
        {Fill in our portion of the hook record}
      {Were we successfull in getting a ponter to the hook record}
    end
    else
    begin
      {We failed to find all the functions we need}
      FreeLibrary(hHookLib);
      hHookLib := 0;
      @GetHookRecPointer := nil;
      @StartKeyBoardHook := nil;
      @StopKeyBoardHook := nil;
      @SelectKeyboard := nil;
      @SuspendKeyboardHook := nil;
      @ResumeKeyboardHook := nil;
    end;
  end;
  UnLocked := False;
  HotKeyMgr.AddHotKey(VK_F2);
  HotKeyMgr.AddHotKey(HotKeyManager.GetHotKey(MOD_ALT, VK_F2));
end;

procedure TfrmDawn.FormDestroy(Sender: TObject);
begin
  Disable;
  {Free the hook dll}
  FreeLibrary(hHookLib);
      hHookLib := 0;
      @GetHookRecPointer := nil;
      @StartKeyBoardHook := nil;
      @StopKeyBoardHook := nil;
      @SelectKeyboard := nil;
      @SuspendKeyboardHook := nil;
      @ResumeKeyboardHook := nil;
end;

//procedure TfrmDawn.Enable;
procedure TfrmDawn.Select;
begin
      if (lpHookRec <> nil) then
      begin
        {Fill in our portion of the hook record}
        {Start the keyboard hook}
        if cmbFont.ItemIndex = -1 then
        begin
          cmbFont.ItemIndex := 1;
          cmbFont.Refresh;
        end;
        if cmbKbd.ItemIndex = -1 then
        begin
          cmbKbd.ItemIndex := 1;
          cmbKbd.Refresh;
        end;
        SelectKeyBoard(Self.WindowHandle, pchar(
          cmbFont.Items[cmbFont.ItemIndex] + ' ' + cmbKbd.Items[cmbKbd.ItemIndex]));
      end;
end;

procedure TfrmDawn.Disable;
begin
  {Did we load the dll successfully?}
    {Did we sucessfully get a pointer to the hook record?}
    if (lpHookRec <> nil) then
    begin
      {Did the hook get set?}

      if (lpHookRec^.TheHookHandle <> 0) then
      begin
        StopKeyBoardHook;
      end;
    end;
    {Free the hook dll}
end;

procedure TfrmDawn.HotKeyMgrHotKeyPressed(HotKey: Cardinal;
  Index: Word);
begin
  if Hotkey = VK_F2 then
    begin
{      UnLock;}
//      Enable;
      Select;
      Info.Caption := lpHookRec^.KeyboardName;
    end;

  if Hotkey = HotKeyManager.GetHotKey(MOD_ALT, VK_F2) then
  begin
    SuspendKeyboardHook;
    if not lpHookRec^.Keyboard_Enabled then
      Info.Caption := 'No Keyboard';
  end;
end;


procedure TfrmDawn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Disable;
end;

procedure dropname;
begin
  ShowMessage('Sridharan S, aurosridhar@gmail.com');
end;

procedure TfrmDawn.Author1Click(Sender: TObject);
begin
  DropName;
end;

procedure TfrmDawn.HotKeys1Click(Sender: TObject);
begin
  MessageDlg('F2 for Activation; AltF2 to DeActivate', mtInformation, [mbOK], 0);
end;

procedure TfrmDawn.Debug1Click(Sender: TObject);
begin
  frmMapUtil.Show;
end;

procedure TfrmDawn.CodePoint1Click(Sender: TObject);
begin
  frmCpcalc.Show;
end;

end.


