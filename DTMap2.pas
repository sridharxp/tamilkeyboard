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
unit DTMap2;

interface

uses
  SysUtils;

const
// TAU
ATkee: array [0..202] of ansistring =(
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
'"}'
);

ATFee: array [0..202] of integer =(
  $152, $153,   $A1, $201A,  $160,  $2DC, $203A, $2C6,  $2039, $2020,
  $178,$2030, $201E,  $161, $2122,  $2021,  $76,  $78,    $77,   $79,
  $7A,  $192, $2026,   $4A,   $4F,    $51,  $41,  $48,    $4B,   $4E,
  $46,   $49,   $AE,   $50,   $47,    $43,  $4D,  $52,    $45,   $52,
  $54,   $53,   $55,   $56,   $42,    $44,  $66,  $6B,    $6D,   $57,
  $64,   $67,   $6A,   $62,   $65,    $AF,  $6C,  $63,    $59,   $69,
  $68,   $61,   $6E,   $70,   $6F,    $71,  $72,  $58,    $5A,   $BB,
  $C0,   $C2,   $B0,   $B9,   $BC,    $BF,  $B6,  $BA,    $B4,   $C1,
  $B8,   $B2,   $BE,   $BD,   $B5,    $B1,  $B3,  $CE,    $D9,   $DB,
  $C3,   $CE,   $CF,   $D8,   $C9,    $CD,  $C7,  $DA,    $CB,   $C5,
  $D7,   $D6,   $C8,   $C4,   $C6,    $F2,  $FD,  $F7,    $C0,   $F9,
  $C2,   $E8,   $B0,   $F0,   $BF,    $A3,  $F6,  $EE,    $B6,   $F1,
  $BA,   $EC,   $B4,   $E9,   $EB,    $F8,  $C1,  $EF,    $B8,   $EA,
  $B2,   $F5,   $BE,   $F4,   $BD,    $F3,  $BC,  $AC,    $E4,   $AE,
  $AF,                 $ED,   $E5,    $E6,  $E0,  $E1,    $E2,   $E3,
  $AA,   $AB,   $C5,   $DC,   $DD,    $DE,  $DF,   46,     44,   $E7,
  $FC,   $FF,   $A7,   $A8,   $A5,    $A4,  $A6,  $FE,     $FB,  $B5,
  $FA,    48,    49,    50,    51,     52,   53,   54,     55,    56,
  57,     63,    40,    41,    61,     43,   45,
  $CE,    $D9,   $DB,
  $C3,   $CE,   $CF,   $D8,   $C9,    $CD,  $C7,  $DA,    $CB,   $C5,
  $D7,   $D6,   $C8,   $C4,   $C6
);

implementation

end.
