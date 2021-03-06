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
Unicode Codepoint Calculator
}
unit CodePoint;

{$DEFINE Pascal}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

const
BASE16 = 16;

type
  TfrmCPCalc = class(TForm)
    Button1: TButton;
    edtFirst: TEdit;
    edtSecond: TEdit;
    edtCodepoint: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    edtUtf8: TEdit;
    Label5: TLabel;
    edtCp: TEdit;
    btnUtf2Cp: TButton;
    Button3: TButton;
    btnBbtnCp2UtfHex: TButton;
    Label6: TLabel;
    Label7: TLabel;
    btn1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnUtf2CpClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnBbtnCp2UtfClick(Sender: TObject);
    procedure btnBbtnCp2UtfHexClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{
function Int2Hex(const Dec: integer): string;
}

var
  frmCPCalc: TfrmCPCalc;

implementation

uses
  Math;

{$R *.dfm}

//1000016 + (H - D80016) � 40016 + (L - DC0016)
procedure TfrmCPCalc.Button1Click(Sender: TObject);
Var
  i,j: integer;
begin
  i := StrtoInt('$' + edtFirst.Text);
  J := StrtoInt('$' + edtSecond.Text);

  edtCodePoint.Text := Int2Hex($10000+((i-$D800)*$400)+(j-$DC00));
end;

//H = Math.floor((S - 0x10000) / 0x400) + 0xD800;
//L = ((S - 0x10000) % 0x400) + 0xDC00;
procedure TfrmCPCalc.Button3Click(Sender: TObject);
var
  cp: integer;
begin
  cp := StrtoInt('$'+ edtCodePoint.Text);
  if (Cp > $10FFFF) or ((Cp >= $D800) and (Cp <= $DFFF)) then
    Exit;
  edtFirst.Text := InttoHex(((CP - $10000) div $400) + $D800, 4);
  edtSecond.Text := InttoHex(((CP - $10000) mod $400) + $DC00, 4);
end;

procedure TfrmCPCalc.btnUtf2CpClick(Sender: TObject);
begin
  if Pos('Chr(', edtUTF8.Text) > 0 then
  begin
    edtUTF8.Text := '';
    Exit;
  end;
  edtCP.Text := utf82cp(edtUTF8.Text);
{
  codePoint := 0;
  if ((Ord(edtUtf8.Text[1]) and $80) = 0) then
    CodePoint := Ord(edtUtf8.Text[1])
  else
  if ((Ord(edtUtf8.Text[1]) and $E0) = $C0) then
    CodePoint := ((Ord(edtUtf8.Text[1]) and $1f) shl 6)
         + ((Ord(edtUtf8.Text[2]) and $3f))
  else
  if ((Ord(edtUtf8.Text[1]) and $F0) = $E0) then
    CodePoint := ((Ord(edtUtf8.Text[1]) and $0f) shl 12)
         + ((Ord(edtUtf8.Text[2]) and $3f) shl  6)
         + ((Ord(edtUtf8.Text[3]) and $3f))
  else
  if ((Ord(edtUtf8.Text[1]) and $F8) = $F0) then
    CodePoint :=  (( ord( edtUtf8.Text[1] ) and $07 ) shl 18 )
         +  (( ord( edtUtf8.Text[2] ) and $3F ) shl 12 )
         +  (( ord( edtUtf8.Text[3] ) and $3F ) shl 6 )
         + ( ord( edtUtf8.Text[3] ) and $3F );
//  edtCP.Text := InttoHex(CodePoint,4);
  edtCP.Text := Int2Hex(CodePoint);
}
end;
{
function Int2Hex(const Dec: integer): string;
var
  HexStr : string;
  R : Integer;
  Q : Integer;
begin
  Q := Dec;
  while Q > 0 do
  begin
  R := Q mod BASE16;
    case R of
      0: HexStr := '0' + HexStr;
       1: HexStr := '1' + HexStr;
       2: HexStr := '2' + HexStr;
       3: HexStr := '3' + HexStr;
       4: HexStr := '4' + HexStr;
       5: HexStr := '5' + HexStr;
       6: HexStr := '6' + HexStr;
       7: HexStr := '7' + HexStr;
       8: HexStr := '8' + HexStr;
       9: HexStr := '9' + HexStr;
      10: HexStr := 'A' + HexStr;
      11: HexStr := 'B' + HexStr;
      12: HexStr := 'C' + HexStr;
      13: HexStr := 'D' + HexStr;
      14: HexStr := 'E' + HexStr;
      15: HexStr := 'F' + HexStr;
    end;
    Q := Q div BASE16
  end;
  Result := HexStr;
end;
}
procedure TfrmCPCalc.btnBbtnCp2UtfClick(Sender: TObject);
var
  CP: integer;
  bits: Extended;
  Utf8: string;
begin
  cp := StrtoInt('$' + edtCp.Text);
  utf8 := cp2utf8(cp);
{
  bits	:= log2(cp + 1) ;

  if( bits <= 7 )	then			//Single Byte
			Utf8 := Chr(CP)
  else if( bits <= 11 )	then		//Two Bytes
			Utf8 :=  Chr( ( ( CP shr 6 ) and $1F ) or $C0 )
          + Chr( ( CP and $3F ) or $80 )
  else if( bits <= 16 )	then		//Three Bytes
			Utf8 := Chr( ( ( CP shr 12 ) and $0F ) or $E0 )
          + Chr( ( ( CP shr 6 ) and $3F ) or $80 )
          + Chr( ( CP and $3F ) or $80 )
  else if( bits <=21 )	then		//Four Bytes
			Utf8 := Chr( ( ( CP shr 18 ) and $07 ) or $F0 )
          + Chr( ( ( CP shr 12 ) and $3F ) or $80 )
          + Chr( ( ( CP shr 6 ) and $3F ) or $80 )
          + Chr( ( CP and $3F ) or $80 )
  else
			Utf8 :=  '';	//Cannot be encoded as Valid UTF-8
}
  edtUtf8.Text := Utf8;
end;

{$IFDEF Pascal}
procedure TfrmCPCalc.btnBbtnCp2UtfHexClick(Sender: TObject);
var
  CP: integer;
  bits: Extended;
  Utf8: string;
  Utf8Hex: string;
  i: integer;
  Ch: char;
begin
  cp := StrtoInt('$' + edtCp.Text);
  utf8 := cp2utf8(cp);
  for i := 1 to Length(Utf8) do
  begin
    if i > 1 then
      Utf8Hex := Utf8Hex + '+';
    Ch := Char(Utf8[i]);
    Utf8Hex := Utf8Hex + 'Chr($' + Int2Hex(Ord(Ch)) + ')';
   end;
{
//  bits	:= log2(cp) + 1 ;
  bits	:= log2(cp + 1) ;

  if( bits <= 7 )	then			//Single Byte
			Utf8 := 'Chr($' + InttoHex(CP,2) + ')'
  else if( bits <= 11 )	then		//Two Bytes
			Utf8 := 'Chr($' + InttoHex( ( ( CP shr 6 ) and $1F ) or $C0, 2 )
          + ')+Chr($' + InttoHex( ( CP and $3F ) or $80, 2 ) + ')'
  else if( bits <= 16 )	then		//Three Bytes
			Utf8 := 'Chr($' + InttoHex( ( ( CP shr 12 ) and $0F ) or $E0, 2 )
          + ')+Chr($' + InttoHex( ( ( CP shr 6 ) and $3F ) or $80, 2 )
          + ')+Chr($' + InttoHex( ( CP and $3F ) or $80, 2 ) + ')'
  else if( bits <=21 )	then		//Four Bytes
			Utf8 := 'Chr($' + InttoHex( ( ( CP shr 18 ) and $07 ) or $F0, 2 )
          + ')+Chr($' + InttoHex( ( ( CP shr 12 ) and $3F ) or $80, 2 )
          + ')+Chr($' + InttoHex( ( ( CP shr 6 ) and $3F ) or $80, 2 )
          + ')+Chr($' + InttoHex( ( CP and $3F ) or $80, 2 ) + ')'
  else
			Utf8 :=  '';	//Cannot be encoded as Valid UTF-8
  edtUtf8.Text := Utf8;
}
  edtUtf8.Text := Utf8Hex;
end;
{$ELSE}
procedure TfrmCPCalc.btnBbtnCp2UtfHexClick(Sender: TObject);
var
  CP: integer;
  bits: Extended;
  Utf8: string;
begin
  cp := StrtoInt('$' + edtCp.Text);

//  bits	:= log2(cp) + 1 ;
  bits	:= log2(cp + 1) ;

  if( bits <= 7 )	then			//Single Byte
			Utf8 := InttoHex(CP,2)
  else if( bits <= 11 )	then		//Two Bytes
			Utf8 := InttoHex( ( ( CP shr 6 ) and $1F ) or $C0, 2 )
          + ' ' + InttoHex( ( CP and $3F ) or $80, 2 )
  else if( bits <= 16 )	then		//Three Bytes
			Utf8 := InttoHex( ( ( CP shr 12 ) and $0F ) or $E0, 2 )
          + ' ' + InttoHex( ( ( CP shr 6 ) and $3F ) or $80, 2 )
          + ' ' + InttoHex( ( CP and $3F ) or $80, 2 )
  else if( bits <=21 )	then		//Four Bytes
			Utf8 := InttoHex( ( ( CP shr 18 ) and $07 ) or $F0, 2 )
          + ' ' + InttoHex( ( ( CP shr 12 ) and $3F ) or $80, 2 )
          + ' ' + InttoHex( ( ( CP shr 6 ) and $3F ) or $80, 2 )
          + ' ' + InttoHex( ( CP and $3F ) or $80, 2 )
  else
			Utf8 :=  '';	//Cannot be encoded as Valid UTF-8
  edtUtf8.Text := Utf8;
end;
{$ENDIF Pascal}
end.
