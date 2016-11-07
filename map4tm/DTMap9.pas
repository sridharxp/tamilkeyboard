{*
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
STmzh Font
Typewriter Layout
Follows Gist Model
Maps to Glyph Index
}
unit DTMap9;

interface

uses
  SysUtils;

const
// TAU
STkee: array [0..217] of ansistring =(
'a;',     's;',     'd;',     'f;',     'g;',     'h;',     'H;',     'j;',     'k;',     'l;',     'w;',     'e;',
'r;',     't;',     'y;',     'z;',     '!;',     '$;',     'Z;',     '];',     'B;',     ''';',     '";',     'ap',
'sp',     'dp',     'fp',     'gp',     'hp',     'Hp',     'jp',     'kp',     'lp',     'wp',     'ep',
'rp',     'tp',     'yp',     'zp',     '!p',     '$p',     'Zp',     ']p',     'Bp',     '''p',     '"p',
'aP',     'sP',     'dP',     'fP',     'gP',     'hP',     'HP',     'jP',     'kP',     'lP',     'wP',
'eP',     'rP',     'tP',     'yP',     'zP',     '!P',     '$P',     'ZP',     ']P',     'BP',     '''P',
'"P',     'a[',     's[',     'd[',     'f[',     'g[',     'h[',     'H[',     'j[',     'k[',     'l[',     'w[',
'e[',     'r[',     't[',     'y[',     'z[',     '''[',     '"[',     'a{',     's{',     'd{',     'f{',     'g{',
'h{',     'H{',     'j{',     'k{',     'l{',     'w{',     'e{',     'r{',     't{',     'y{',     'z{',     '''{',
'"{',     'a',      ']',      's',      'S',      'd',      'D',      'f',      'F',      'g',      'G',      'h',
'H',      'j',      'J',      'k',      'K',      'l',      'L',      '''',      '"',      'w',      'W',      'e',
'E',      'r',      'R',      't',      'T',      'y',      'Y',      'u',      'U',      'i',      'I',      'o',
'O',                          'z',      'x',      'X',      'c',      'C',      'v',      'V',      'b',
'n',      'N',      'm',      'M',      ',',      '<',      '.',      '/',      '`',      '$',
'_',      '%',      '^',      ';',      'p',      'P',      'B',      'Z',
'q',      '!',      '0',      '1',      '2',      '3',     '4',      '5',      '6',      '7',      '8',      '9',
'?',      '(',      ')',      '=',      '+',      '-',
'a}',     's}',     'd}',     'f}',     'g}',
'h}',     'H}',     'j}',     'k}',     'l}',     'w}',     'e}',     'r}',     't}',     'y}',     'z}',     '''}',
'"}',
'Z[',     'Z{',     'Z}',     '![',     '!{',     '!}',     '][',     ']{',     ']}',     '$[',     '${',     '$}',
'B[',     'B{',     'B}'
);

STFee: array [0..217] of integer =(
  $46, $5E, $5B, $C2, $A9,  $EC, $B5, $DD,  $44, $E2,
  $75, $CD, $DF, $CB, $5F,  $F5, $FC, $EB,  $69, $E3,
  $D5, $BA, $DE,
  $6C, $B9, $4D, $FE, $B8,  $F6,$61,
  $5D, $74, $BD, $A4, $57,  $45,$73,$6F,  $E8, $4C,
  $F7, $B4, $4E, $48, $F4,  $51,
  $58, $43, $CC, $FF,
  $AC, $5A, $D1, $79, $2A,  $CF,$53,$C0,  $E6, $54,
  $DC, $A7, $A2, $FD, $55,  $EA,$C8,$F4,  $51,
  $A5, $D3, $D0, $7A, $41, $F2, $BF, $6D, $78, $7C,
  $AE, $4F, $B7, $A1, $4B, $62, $F4, $51,
  $52, $6A, $FB, $ED, $AF, $D4,   $F1,   $23,    $4A,  $F9,
  $47, $B1, $F3,$C6, $D9,   $49,   $F4, $51,
  $42,  $C7,  $65,    $D3,   $AA,
  $D0,   $EF,   $7A,   $C3,   $BF,    $56,  $77,  $3E,    $6D,   $5C,
  $78,   $A6,   $7C,   $F4,   $51,    $C5,  $AE,  $E5,    $4F,   $C4,
  $B7,   $6B,   $A1,   $E9,   $4B,    $AB,  $F2,  $E7,    $6E,   $AE,
  $AF,                 $F0,   $CE,    $7B,  $63,  $BB,    $A8,   $B0,
  $D8,   $BC,   $F3,
  $B6,   $67,    $D6,  $7E,   $2E,     $2C,   $E0,
  $DB,   $70,   $9E,   $A0,   $A5,    $81,  $8D,  $B3,     $AD,  $62,
  $76,
  $30,    $31,    $32,    $33,     $34,   $35,   $36,     $37,    $38,
  $39,
  $3F,    $28,    $29,    $3D,  $2B,   $2D,
  $52,    $6A,   $FB,
  $ED,   $AF,   $D4,   $F1,   $23,    $4A,  $F9,  $47,    $B1,   $F3,
  $C6,   $D9,   $49,   $F4, $51,
  $D7,   $A3,   $A3,   $71,  $60,     $60,  $F8,  $DA,    $DA,
  $68,   $C9,   $C9,   $59,  $66,     $66
);

implementation

end.
