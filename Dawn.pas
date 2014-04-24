unit Dawn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
    ExtCtrls, HotKeyManager, Menus,
    Purchase,
  DDSnippets,
  USBSerial;

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
    procedure Enable;
    procedure Disable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Author1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
//    IsUnicodeFont: boolean;
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

procedure TfrmDawn.FormCreate(Sender: TObject);
begin
  @GetHookRecPointer := nil;
  @StartKeyBoardHook := nil;
  @StopKeyBoardHook := nil;
  @SelectKeyboard := nil;
  @SuspendKeyboardHook := nil;
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
    {Did we find all the functions we need?}
    if ((@GetHookRecPointer <> nil) and (@StartKeyBoardHook <> nil) and
      (@StopKeyBoardHook <> nil)) then
    begin
      LibLoadSuccess := TRUE;
      {Get a pointer to the hook record}
      lpHookRec := GetHookRecPointer;
//      if (lpHookRec <> nil) then
//      begin
        {Fill in our portion of the hook record}
//        lpHookRec^.TheHookHandle := 0;
//      end;
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
    end;
  end;
  UnLocked := False;
  HotKeyMgr.AddHotKey(VK_F2);
  HotKeyMgr.AddHotKey(HotKeyManager.GetHotKey(MOD_ALT, VK_F2));
end;

procedure TfrmDawn.FormDestroy(Sender: TObject);
begin
  Disable;
//   StopKeyBoardHook;
  {Free the hook dll}
  FreeLibrary(hHookLib);
end;

procedure TfrmDawn.Enable;
begin
      if (lpHookRec <> nil) then
      begin
        {Fill in our portion of the hook record}
//        lpHookRec^.TheHookHandle := 0;
        {Start the keyboard hook}
//        StartKeyBoardHook(Self.WindowHandle);
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
//  if (LibLoadSuccess = TRUE) then
//  begin
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
//    FreeLibrary(hHookLib);
//  end;
end;

procedure TfrmDawn.HotKeyMgrHotKeyPressed(HotKey: Cardinal;
  Index: Word);
begin
  if Hotkey = VK_F2 then
    begin
{      UnLock;}
      Enable;
      Info.Caption := lpHookRec^.KeyboardName;
    end;

  if Hotkey = HotKeyManager.GetHotKey(MOD_ALT, VK_F2) then
  begin
    SuspendKeyboardHook;
    if not lpHookRec^.Keyboard_Enabled then
      Info.Caption := 'No Keyboard';
  end;
end;

{
procedure TfrmDawn.Register1Click(Sender: TObject);
begin
  frmRegister.SetKeySerial('91262A08C21F358E05C4C76DF08DB1E4', 1712211625);
  frmReGister.CalcModifiers;
  frmReGister.UpdateUI;
  frmReGister.Show;
end;

function TfrmDawn.unlock: boolean;
var
  str: TStringList;
  i: integer;
  drv: char;
begin
  Result := False;

  if purchase.PgmStatus then
  begin
    UnLocked := True;
    Result := UnLocked;
    Exit;
  end;
  str := TStringList.Create;
  try
  ListDrives(str);
  for i:= 0 to str.Count-1 do
  begin
    drv := str[i][1];
      if (GetUsbDriveSerial(drv) = '8W6739R2&0') then
      begin
        UnLocked := True;
        Result := UnLocked;
        Exit;
    end;
  end;
  raise Exception.Create('Incomplete Installation');
  finally
  str.Free;
  end;
end;
}

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

procedure TfrmDawn.FormShow(Sender: TObject);
begin
  if not UnLocked then
  begin
    frmRegister.SetKeySerial('91262A08C21F358E05C4C76DF08DB1E4', 1712211625);
    frmReGister.CalcModifiers;
    frmReGister.UpdateUI;
  end;
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


