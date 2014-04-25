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
unit DTMap1;

interface

uses
  SysUtils;

Const
// TAU
BTkee: array [0..202] of ansistring =(
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
'O',      'z',      'x',      'X',      'c',      'C',      'v',      'V',      'b',
'n',      'N',      'm',      'M',      ',',      '<',      '.',      '/',      '`',      '$',
'_',      '%',      '^',      ';',      'p',      'P',      'B',      'Z',
'q',      '!',      '0',      '1',      '2',      '3',     '4',      '5',      '6',      '7',      '8',      '9',
'?',      '(',      ')',      '=',      '+',     '-' ,
'a}',     's}',     'd}',     'f}',     'g}',
'h}',     'H}',     'j}',     'k}',     'l}',     'w}',     'e}',     'r}',     't}',     'y}',     'z}',     '''}',
'"}'
);

BTFee: array [00..202] of integer =(
110, 115, 117, 100, 108, 111, 114, 106, 109, 104,
116, 107, 102, 113, 112, 105, 118, 119, 120, 121,
122, 101, 103, 171, 176, 178, 161, 169, 172, 175,
167, 170, 165, 177, 168, 163, 174, 173, 166, 179,
180, 181, 182, 183, 162, 164, 194, 199, 201, 184,
192, 195, 198, 190, 193, 188, 200, 191, 186, 197,
196, 189, 202, 203, 204, 205, 206, 185, 187, 217,
222, 224, 207, 215, 218, 221, 213, 216, 211, 223,
214, 209, 220, 219, 212, 208, 210, 235, 240, 242,
225, 233, 236, 239, 231, 234, 229, 241, 232, 227,
238, 237, 230, 226, 228,  86,  97,  91, 222,  93,
224,  76, 207,  84, 221, 244,  90,  82, 213,  85,
216,  80, 211,  77,  79,  92, 223,  83, 214,  78,
209,  89, 220,  88, 219,  87, 218, 251,  73, 165,
188,  81,  74,  75,  69,  70,  71,  72,
249, 250, 227,  65,  66,  67,  68,  46,  44,  64,
 95,  99, 253, 254, 243, 245, 246,  98,  96, 230,
 94,  48,  49,  50,  51,  52,  53,  54,  55,  56,
 57,  63,  40,  41,  61,  43,  45,
 235, 240, 242,
225, 233, 236, 239, 231, 234, 229, 241, 232, 227,
238, 237, 230, 226, 228
);

implementation

end.
