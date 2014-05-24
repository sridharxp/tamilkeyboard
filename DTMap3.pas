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
Tamil Ansi Standard Font
Inscript Layout
}
unit DTMap3;

interface

uses
  SysUtils;

const
// Inscript
AIkee: array [0..327] of ansistring =(
'D', 'E', 'F', 'R', 'G', 'T', 'Z', 'S', 'W', '~', 'A', 'Q', '_',
'k',       'U',     ';',       ']',     '''',     'C',     'l',       'v',     'h',       'c',
'/',       'j',       'n',    'b',       'B',      'N',     'J',       'V',     'm',       ',',
'p',       'u',       '&',
'ke',       'Ue',     ';e',       ']e',     '''e',     'Ce',     'le',       've',     'he',       'ce',
'/e',       'je',       'ne',    'be',       'Be',      'Ne',     'Je',       'Ve',     'me',       ',e',
'pe',       'ue',       '&e',
'kz',       'Uz',     ';z',       ']z',     '''z',     'Cz',     'lz',       'vz',     'hz',       'cz',
'/z',       'jz',       'nz',    'bz',       'Bz',      'Nz',     'Jz',       'Vz',     'mz',       ',z',
'pz',       'uz',       '&z',
'ks',       'Us',     ';s',       ']s',     '''s',     'Cs',     'ls',       'vs',     'hs',       'cs',
'/s',       'js',       'ns',    'bs',       'Bs',      'Ns',     'Js',       'Vs',     'ms',       ',s',
'ps',       'us',       '&s',
'kw',       'Uw',     ';w',       ']w',     '''w',     'Cw',     'lw',       'vw',     'hw',       'cw',
'/w',       'jw',       'nw',    'bw',       'Bw',      'Nw',     'Jw',       'Vw',     'mw',       ',w',
'pw',       'uw',       '&w',
'k`',       'U`',     ';`',       ']`',     '''`',     'C`',     'l`',       'v`',     'h`',       'c`',
'/`',       'j`',       'n`',    'b`',       'B`',      'N`',     'J`',       'V`',     'm`',       ',`',
'p`',       'u`',       '&`',
'ka',       'Ua',     ';a',       ']a',     '''a',     'Ca',     'la',       'va',     'ha',       'ca',
'/a',       'ja',       'na',    'ba',       'Ba',      'Na',     'Ja',       'Va',     'ma',       ',a',
'pa',       'ua',       '&a',
'kq',       'Uq',     ';q',       ']q',     '''q',     'Cq',     'lq',       'vq',     'hq',       'cq',
'/q',       'jq',       'nq',    'bq',       'Bq',      'Nq',     'Jq',       'Vq',     'mq',       ',q',
'pq',       'uq',       '&q',

'/d',     'Nd',     'Vd',     'kd',     'hd',     'jd',     'Bd',     'ld',     'cd',     '''d',     'Jd',     'vd',
';d',     'bd',     'nd',     'Cd',     'md',     'pd',     ',d',     'ud',     '&d',     'Ud',     ']d',     '/f',
'Nf',     'Vf',     'kf',     'hf',     'jf',     'Bf',     'lf',     'cf',     '''f',     'Jf',     'vf',
';f',     'bf',     'nf',     'Cf',     'mf',     'pf',     ',f',     'uf',     '&f',     'Uf',     ']f',
'/r',     'Nr',     'Vr',     'kr',     'hr',     'jr',     'Br',     'lr',     'cr',     '''r',     'Jr',
'vr',     ';r',     'br',     'nr',     'Cr',     'mr',     'pr',     ',r',     'ur',     '&r',     'Ur',
']r',     '/g',     'Ng',     'Vg',     'kg',     'hg',     'jg',     'Bg',     'lg',     'cg',     '''g',     'Jg',
'vg',     ';g',     'bg',     'ng',     'Cg',     'mg',     'pg',     ',g',     'ug',     '&g',    'Ug',     ']g',     '/t',     'Nt',     'Vt',     'kt',     'ht',
'jt',     'Bt',     'lt',     'ct',     '''t',     'Jt',     'vt',     ';t',     'bt',     'nt',     'Ct',
'mt',     'pt',     ',t',     'ut',     '&t', 'Ut',
']t',
'0',      '1',      '2',      '3',     '4',      '5',      '6',      '7',      '8',      '9',
'?',      '(',      ')',      '=',      '+',     '-'
);

AIFee: array [0..983] of integer =(
  $DC,0,0,   $DD,0,0,   $DE,0,0, $DF,0,0,  $E0,0,0,  $E1,0,0, $E2,0,0, $E3,0,0,  $E4,0,0, $E5,0,0,
  $E6,0,0,   $E5,$F7,0,  $E7,0,0,
  $E8,0,0,   $E9,0,0,   $EA,0,0, $EB,0,0,  $EC,0,0,  $ED,0,0, $EE,0,0, $EF,0,0,  $F0,0,0, $F1,0,0,
  $F2,0,0,$F3,0,0, $F4,0,0,  $F5,0,0, $F6,0,0,  $F7,0,0,  $F8,0,0,  $F9,0,0,    $FA,0,0,   $FB,0,0,
  $FC,0,0,  $FD,0,0, $FE,0,0,
  $E8,$A3,0,   $E9,$A3,0,   $EA,$A3,0, $EB,$A3,0,  $EC,$A3,0,  $ED,$A3,0, $EE,$A3,0, $EF,$A3,0,  $F0,$A3,0, $F1,$A3,0,
  $F2,$A3,0,$F3,$A3,0, $F4,$A3,0,  $F5,$A3,0, $F6,$A3,0,  $F7,$A3,0,  $F8,$A3,0,  $F9,$A3,0,    $FA,$A3,0,   $FB,$A3,0,
  $FC,$A3,0,  $FD,$A3,0, $FE,$A3,0,
  $AA,$E8,0,   $AA,$E9,0,   $AA,$EA,0, $AA,$EB,0,  $AA,$EC,0,  $AA,$ED,0, $AA,$EE,0, $AA,$EF,0,  $AA,$F0,0, $AA,$F1,0,
  $AA,$F2,0,$AA,$F3,0, $AA,$F4,0,  $AA,$F5,0, $AA,$F6,0,  $AA,$F7,0,  $AA,$F8,0,  $AA,$F9,0,    $AA,$FA,0,   $AA,$FB,0,
  $AA,$FC,0,  $AA,$FD,0, $AA,$FE,0,
  $AB,$E8,0,   $AB,$E9,0,   $AB,$EA,0, $AB,$EB,0,  $AB,$EC,0,  $AB,$ED,0, $AB,$EE,0, $AB,$EF,0,  $AB,$F0,0, $AB,$F1,0,
  $AB,$F2,0,$AB,$F3,0, $AB,$F4,0,  $AB,$F5,0, $AB,$F6,0,  $AB,$F7,0,  $AB,$F8,0,  $AB,$F9,0,    $AB,$FA,0,   $AB,$FB,0,
  $AB,$FC,0,  $AB,$FD,0, $AB,$FE,0,
  $AC,$E8,0,   $AC,$E9,0,   $AC,$EA,0, $AC,$EB,0,  $AC,$EC,0,  $AC,$ED,0, $AC,$EE,0, $AC,$EF,0,  $AC,$F0,0, $AC,$F1,0,
  $AC,$F2,0,$AC,$F3,0, $AC,$F4,0,  $AC,$F5,0, $AC,$F6,0,  $AC,$F7,0,  $AC,$F8,0,  $AC,$F9,0,    $AC,$FA,0,   $AC,$FB,0,
  $AC,$FC,0,  $AC,$FD,0, $AC,$FE,0,
  $AA,$E8,$A3,   $AA,$E9,$A3,   $AA,$EA,$A3, $AA,$EB,$A3,  $AA,$EC,$A3,  $AA,$ED,$A3, $AA,$EE,$A3, $AA,$EF,$A3,  $AA,$F0,$A3, $AA,$F1,$A3,
  $AA,$F2,$A3,$AA,$F3,$A3, $AA,$F4,$A3,  $AA,$F5,$A3, $AA,$F6,$A3,  $AA,$F7,$A3,  $AA,$F8,$A3,  $AA,$F9,$A3,    $AA,$FA,$A3,   $AA,$FB,$A3,
  $AA,$FC,$A3,  $AA,$FD,$A3, $AA,$FE,$A3,
  $AB,$E8,$A3,   $AB,$E9,$A3,   $AB,$EA,$A3, $AB,$EB,$A3,  $AB,$EC,$A3,  $AB,$ED,$A3, $AB,$EE,$A3, $AB,$EF,$A3,  $AB,$F0,$A3, $AB,$F1,$A3,
  $AB,$F2,$A3,$AB,$F3,$A3, $AB,$F4,$A3,  $AB,$F5,$A3, $AB,$F6,$A3,  $AB,$F7,$A3,  $AB,$F8,$A3,  $AB,$F9,$A3,    $AB,$FA,$A3,   $AB,$FB,$A3,
  $AB,$FC,$A3,  $AB,$FD,$A3, $AB,$FE,$A3,
  $AA,$E8,$F7,   $AA,$E9,$F7,   $AA,$EA,$F7, $AA,$EB,$F7,  $AA,$EC,$F7,  $AA,$ED,$F7, $AA,$EE,$F7, $AA,$EF,$F7,  $AA,$F0,$F7, $AA,$F1,$F7,
  $AA,$F2,$F7,$AA,$F3,$F7, $AA,$F4,$F7,  $AA,$F5,$F7, $AA,$F6,$F7,  $AA,$F7,$F7,  $AA,$F8,$F7,  $AA,$F9,$F7,    $AA,$FA,$F7,   $AA,$FB,$F7,
  $AA,$FC,$F7,  $AA,$FD,$F7, $AA,$FE,$F7,

  $152,0,0, $153,0,0,   $A1,0,0, $201A,0,0,  $160,0,0,  $2DC,0,0, $203A,0,0, $2C6,0,0,  $2039,0,0, $2020,0,0,
  $178,0,0,$2030,0,0, $201E,0,0,  $161,0,0, $2122,0,0,  $2021,0,0,  $76,0,0,  $78,0,0,    $77,0,0,   $79,0,0,
  $7A,0,0,  $192,0,0, $2026,0,0,   $4A,0,0,   $4F,0,0,    $51,0,0,  $41,0,0,  $48,0,0,    $4B,0,0,   $4E,0,0,
  $46,0,0,   $49,0,0,   $AE,0,0,   $50,0,0,   $47,0,0,    $43,0,0,  $4D,0,0,  $52,0,0,    $45,0,0,   $52,0,0,
  $54,0,0,   $53,0,0,   $55,0,0,   $56,0,0,   $42,0,0,    $44,0,0,  $66,0,0,  $6B,0,0,    $6D,0,0,   $57,0,0,
  $64,0,0,   $67,0,0,   $6A,0,0,   $62,0,0,   $65,0,0,    $AF,0,0,  $6C,0,0,  $63,0,0,    $59,0,0,   $69,0,0,
  $68,0,0,   $61,0,0,   $6E,0,0,   $70,0,0,   $6F,0,0,    $71,0,0,  $72,0,0,  $58,0,0,    $5A,0,0,   $BB,0,0,
  $C0,0,0,   $C2,0,0,   $B0,0,0,   $B9,0,0,   $BC,0,0,    $BF,0,0,  $B6,0,0,  $BA,0,0,    $B4,0,0,   $C1,0,0,
  $B8,0,0,   $B2,0,0,   $BE,0,0,   $BD,0,0,   $B5,0,0,    $FA,$A7,0,    $FC,$A7,0,    $FB,$A7,0,      $FD,$A7,0,     $FE,$A7,0,

  $B1,0,0,  $B3,0,0,  $CE,0,0,    $D9,0,0,   $DB,0,0,
  $C3,0,0,   $CE,0,0,   $CF,0,0,   $D8,0,0,   $C9,0,0,    $CD,0,0,  $C7,0,0,  $DA,0,0,    $CB,0,0,   $C5,0,0,
  $D7,0,0,   $D6,0,0,   $C8,0,0,   $FA,$A8,0,     $FC,$A8,0,      $FB,$A8,0,    $FD,$A8,0,    $FE,$A8,0,
  $C4,0,0,   $C6,0,0,
  48,0,0,    49,0,0,    50,0,0,    51,0,0,     52,0,0,   53,0,0,   54,0,0,     55,0,0,    56,0,0,
  57,0,0,    63,0,0,    40,0,0,    41,0,0,    61,0,0,     43,0,0,   45,0,0
);

implementation

end.
