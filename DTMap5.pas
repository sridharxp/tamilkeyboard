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
unit DTMap5;

interface

uses
  SysUtils;

Const
//Vanavil  Dawn B
VTkee: array [0..210] of ansistring =(
'a;',  's;',  'd;',
'f;',  'g;',  'h;',  'H;',  'j;',  'k;',  'l;',
'w;',   'e;',
'r;',     't;',     'y;',     'z;',     '!;',     '$;',     'Z;',     '];',     'B;',     ''';',     '";',     'ap',
'sp',     'dp',     'fp',     'gp',     'hp',     'Hp',     'jp',     'kp',     'lp',     'wp',     'ep',
'rp',     'tp',     'yp',     'zp',     '!p',     '$p',     'Zp',     'Ap',     'Bp',     '''p',     '"p',
'aP',     'sP',     'dP',     'fP',     'gP',     'hP',     'HP',     'jP',     'kP',     'lP',     'wP',
'eP',     'rP',     'tP',     'yP',     'zP',     '!P',     '$P',     'ZP',     ']P',     'BP',     '''P',
'"P',     'a[',     's[',     'd[',     'f[',     'g[',     'h[',     'H[',     'j[',     'k[',     'l[',     'w[',
'e[',     'r[',     't[',     'y[',     'z[',     '''[',     '"[',     'a{',     's{',     'd{',     'f{',     'g{',
'h{',     'H{',     'j{',     'k{',     'l{',     'w{',     'e{',     'r{',     't{',     'y{',     'z{',     '''{',
'"{',     'a',                's',      'S',      'd',      'D',      'f',      'F',      'g',      'G',      'h',
'H',      'j',      'J',      'k',      'K',      'l',      'L',      '''',      '"',      'w',      'W',      'e',
'E',      'r',      'R',      't',      'T',      'y',      'Y',      'u',      'U',      'i',      'I',      'o',
'O',      '[',      ']',      'z',      'x',      'X',      'c',      'C',      'v',      'V',      'b',
'n',      'N',      'm',      'M',      ',',      '<',      '.',      '/',      '~',      '>',
'|',      '%',      '^',      ';',      'p',      'P',      'B',      'Z',
'q',      '!',      '0',      '1',      '2',      '3',     '4',      '5',      '6',      '7',      '8',      '9',
'?',      '(',      ')',      '=',      '+',       '-',      'a}',     's}',     'd}',     'f}',     'g}',
'h}',     'H}',     'j}',     'k}',     'l}',     'w}',     'e}',     'r}',     't}',     'y}',     'z}',     '''}',
'"}',     '@',     '#' ,      '$',      '`',      '*',      '_',     '\'
);

VTFee: array [0..210] of integer =(
$152, $178, $2039, 161, 165, 174, $153, 164, 171, 163,
$2030, 170, 162, $203A, $161, 169, 176, 123,  90, 192,
186, 167, $160, 230, 235, 229, 187, 195, 231, 234,
194, 228, 111, 191, 227, 193, 233, 232, 226, 236,
237, 238, 239, 248, 224, 225, 112, 199, 220, 209,
213, 223, 198, 212, 219,  79, 214, 218, 211, 197,
196, 217, 200, 201, 202, 203, 204, $2020, 216, 205,
 83,  68,  70, 242,  85,  71,  74,  75,  76,  87,
69, 82,  206,  89,  81,  188, 124, 244, 113, 125,
 84, 243,  37,  62, 246,  95,  94, 249, 252,  78,
241, 255, 251, 252, 250,  97,  115,  83, 100,
 68, 102,  70, 103,  71, 104,  72, 106,  74, 107,
 75, 108,  76, $2021, 80,  119,  87, 101,  69, 114,
 82, 116, 206, 121, 89,  117,  85, 105,  73, 111,
 79,   0,  65, 122, 120,  88,  99,  67, 118,  86,
 98, 110,  78, 109,  77, 207,  60,  44,  46,  42,
 63,  $2019,  38,  93,  59, 168, 172,  66, 245,  81,
 91,  48,  49,  50,  51,  52,  53,  54,  55,  56,
 57,  45,  40,  41,  61,  43,  47, 244, 113, 125,
 84, 243,  37,  62, 246,  95,  94, 249, 252,  78,
241, 255, 251, 252, 250,  $201C, $2026, 35, 126, $201D, 36, $2018
);

implementation

end.
