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
STmzh Font
Typewriter Layout
Follows Gist Model
}
unit DTMap9;

interface

uses
  SysUtils;

const
// TAU
STkee: array [0..202] of ansistring =(
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

STFee: array [0..202] of integer =(
  $F046, $F05E, $F05B, $F0C2, $F0A9,  $F0EC, $F0B5, $F0DD,  $F044, $F0E2,
  $F075, $F0E5, $F0DF, $F0CB, $F05F,  $F0F5, $F0FC, $F0EB,  $F069, $F0E3,
  $F0D5, $F0BA, $F0DE,
  $F06C, $F0B9, $F04D, $F0FE, $F0B8,  $F0F6,$F061,
  $F05D, $F074, $F0BD, $F0A4, $F057,  $F045,$F073,$F06F,  $F0E8, $F04C,
  $F0F7, $F0B4, $F04E, $F048, $F0F4,  $F051,
  $F058, $F043, $F0CC, $F0FF,
  $F0AC, $F05A, $F0D1, $F079, $F02A,  $F0CF,$F053,$F0C0,  $F0E6, $F054,
  $F0DC, $F0A7, $F0A2, $F0FD, $F055,  $F0EA,$F0C8,$F0F4,  $F051,
  $F0A5, $F0D3, $F0D0, $F07A, $F041, $F0F2, $F0BF, $F06D, $F078, $F07C,
  $F0AE, $F04F, $F0B7, $F0A1, $F04B, $F062, $F0F4, $F051,
  $F052, $F06A, $F0FB, $F0ED, $F0AF, $F0D4,   $F0F1,   $F023,    $F04A,  $F0F9,
  $F047, $F0B1, $F0F3,$F0C6, $F0D9,   $F049,   $F0F4, $F051,
  $F042,  $F0C7,  $F065,    $F0D3,   $F0AA,
  $F0D0,   $F0EF,   $F07A,   $F0C3,   $F0BF,    $F056,  $F077,  $F03E,    $F06D,   $F05C,
  $F078,   $F0A6,   $F07C,   $F0F4,   $F051,    $F0C5,  $F0AE,  $F0E5,    $F04F,   $F0C4,
  $F0B7,   $F06B,   $F0A1,   $F0E9,   $F04B,    $F0AB,  $F0F2,  $F0E7,    $F06E,   $AE,
  $AF,                 $F0F0,   $F0CE,    $F07B,  $F063,  $F0BB,    $F0A8,   $F0B0,
  $F0D8,   $F0BC,   $F0F3,
  $F0B6,   $F067,    $F0D6,  $F07E,   $2E,     $2C,   $F0E0,
  $F0DB,   $F070,   $F09E,   $F0A0,   $A5,    $F081,  $F08D,  $F0B3,     $F0AD,  $F062,
  $F076,
  $F030,    $F031,    $F032,    $F033,     $F034,   $F035,   $F036,     $F037,    $F038,
  $F039,
  $3F,    $28,    $29,    $3D,  $2B,   $2D,
  $F052,    $F06A,   $F0FB,
  $F0ED,   $F0AF,   $F0D4,   $F0F1,   $F023,    $F04A,  $F0F9,  $F047,    $F0B1,   $C5,
  $F0C6,   $F0D9,   $F049,   $F0F4, $F051
);

implementation

end.
