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
Inscript Layout
Mpas to Glyph Index
}
unit DTMap10;

interface

uses
  SysUtils;

const
// Inscript
SIkee: array [0..327] of ansistring =(
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
';d',     'bd',     'nd',     'Cd',     'md',     'pd',     '<d',     'ud',     '&d',     'Ud',     ']d',     '/f',
'Nf',     'Vf',     'kf',     'hf',     'jf',     'Bf',     'lf',     'cf',     '''f',     'Jf',     'vf',
';f',     'bf',     'nf',     'Cf',     'mf',     'pf',     '<f',     'uf',     '&f',     'Uf',     ']f',
'/r',     'Nr',     'Vr',     'kr',     'hr',     'jr',     'Br',     'lr',     'cr',     '''r',     'Jr',
'vr',     ';r',     'br',     'nr',     'Cr',     'mr',     'pr',     '<r',     'ur',     '&r',     'Ur',
']r',     '/g',     'Ng',     'Vg',     'kg',     'hg',     'jg',     'Bg',     'lg',     'cg',     '''g',     'Jg',
'vg',     ';g',     'bg',     'ng',     'Cg',     'mg',     'pg',     '<g',     'ug',     '&g',    'Ug',     ']g',     '/t',     'Nt',     'Vt',     'kt',     'ht',
'jt',     'Bt',     'lt',     'ct',     '''t',     'Jt',     'vt',     ';t',     'bt',     'nt',     'Ct',
'mt',     'pt',     '<t',     'ut',     '&t', 'Ut',
']t',
'0',      '1',      '2',      '3',     '4',      '5',      '6',      '7',      '8',      '9',
'?',      '(',      ')',      '=',      '+',     '-'
);

SIFee: array [0..983] of integer =(
$B6,0,0,   $67,0,0,   $D6,0,0,   $7E,0,0,   $63,0,0,   $BB,0,0,   $A8,0,0,   $B0,0,0,   $6E,0,0,   $CE,0,0,
$7B,0,0,   $CE,$65,0, $E0,0,0,   $EF,0,0,   $F4,0,0,   $C4,0,0,   $51,0,0,   $A6,0,0,   $F0,0,0,   $3E,0,0,
$E5,0,0,   $C3,0,0,   $5C,0,0,   $42,0,0,   $AB,0,0,   $E9,0,0,   $6B,0,0,   $77,0,0,   $65,0,0,   $C5,0,0,
$AA,0,0,   $76,0,0,   $AD,0,0,   $DB,0,0,   $C7,0,0,   $B3,0,0,   $EF,$56,0, $F4,$56,0, $C4,$56,0, $51,$56,0,
$A6,$56,0, $F0,$56,0, $3E,$56,0, $E5,$56,0, $C3,$56,0, $5C,$56,0, $42,$56,0, $AB,$56,0, $E9,$56,0, $6B,$56,0,
$77,$56,0, $65,$56,0, $C5,$56,0, $AA,$56,0, $76,$56,0, $AD,$56,0, $DB,$56,0, $C7,$56,0, $B3,$56,0, $D8,$EF,0,
$D8,$F4,0, $D8,$C4,0, $D8,$51,0, $D8,$A6,0, $D8,$F0,0, $D8,$3E,0, $D8,$E5,0, $D8,$C3,0, $D8,$5C,0, $D8,$42,0,
$D8,$AB,0, $D8,$E9,0, $D8,$6B,0, $D8,$77,0, $D8,$65,0, $D8,$C5,0, $D8,$AA,0, $D8,$76,0, $D8,$AD,0, $D8,$DB,0,
$D8,$C7,0, $D8,$B3,0, $BC,$EF,0, $BC,$F4,0, $BC,$C4,0, $BC,$51,0, $BC,$A6,0, $BC,$F0,0, $BC,$3E,0, $BC,$E5,0,
$BC,$C3,0, $BC,$5C,0, $BC,$42,0, $BC,$AB,0, $BC,$E9,0, $BC,$6B,0, $BC,$77,0, $BC,$65,0, $BC,$C5,0, $BC,$AA,0,
$BC,$76,0, $BC,$AD,0, $BC,$DB,0, $BC,$C7,0, $BC,$B3,0, $E7,$EF,0, $E7,$F4,0, $E7,$C4,0, $E7,$51,0, $E7,$A6,0,
$E7,$F0,0, $E7,$3E,0, $E7,$E5,0, $E7,$C3,0, $E7,$5C,0, $E7,$42,0, $E7,$AB,0, $E7,$E9,0, $E7,$6B,0, $E7,$77,0,
$E7,$65,0, $E7,$C5,0, $E7,$AA,0, $E7,$76,0, $E7,$AD,0, $E7,$DB,0, $E7,$C7,0, $E7,$B3,0, $D8,$EF,$56, $D8,$F4,$56,
$D8,$C4,$56, $D8,$51,$56, $D8,$A6,$56, $D8,$F0,$56, $D8,$3E,$56, $D8,$E5,$56, $D8,$C3,$56, $D8,$5C,$56, $D8,$42,$56, $D8,$AB,$56,
$D8,$E9,$56, $D8,$6B,$56, $D8,$77,$56, $D8,$65,$56, $D8,$C5,$56, $D8,$AA,$56, $D8,$76,$56, $D8,$AD,$56, $D8,$DB,$56, $D8,$C7,$56,
$D8,$B3,$56, $BC,$EF,$56, $BC,$F4,$56, $BC,$C4,$56, $BC,$51,$56, $BC,$A6,$56, $BC,$F0,$56, $BC,$3E,$56, $BC,$E5,$56, $BC,$C3,$56,
$BC,$5C,$56, $BC,$42,$56, $BC,$AB,$56, $BC,$E9,$56, $BC,$6B,$56, $BC,$77,$56, $BC,$65,$56, $BC,$C5,$56, $BC,$AA,$56, $BC,$76,$56,
$BC,$AD,$56, $BC,$DB,$56, $BC,$C7,$56, $BC,$B3,$56, $D8,$EF,$65, $D8,$F4,$65, $D8,$C4,$65, $D8,$51,$65, $D8,$A6,$65, $D8,$F0,$65,
$D8,$3E,$65, $D8,$E5,$65, $D8,$C3,$65, $D8,$5C,$65, $D8,$42,$65, $D8,$AB,$65, $D8,$E9,$65, $D8,$6B,$65, $D8,$77,$65, $D8,$65,$65,
$D8,$C5,$65, $D8,$AA,$65, $D8,$76,$65, $D8,$AD,$65, $D8,$DB,$65, $D8,$C7,$65, $D8,$B3,$65, $46,0,0,   $5E,0,0,   $5B,0,0,
$C2,0,0,   $A9,0,0,   $EC,0,0,   $B5,0,0,   $DD,0,0,   $44,0,0,   $E2,0,0,   $75,0,0,   $CD,0,0,   $DF,0,0,
$CB,0,0,   $5F,0,0,   $F5,0,0,   $FC,0,0,   $EB,0,0,   $69,0,0,   $E3,0,0,   $D5,0,0,   $BA,0,0,   $DE,0,0,
$6C,0,0,   $B9,0,0,   $4D,0,0,   $FE,0,0,   $B8,0,0,   $F6,0,0,   $61,0,0,   $5D,0,0,   $74,0,0,   $BD,0,0,
$A4,0,0,   $57,0,0,   $45,0,0,   $73,0,0,   $6F,0,0,   $E8,0,0,   $6F,0,0,   $F7,0,0,   $B4,0,0,   $4E,0,0,
$48,0,0,   $F4,0,0,   $51,0,0,   $58,0,0,   $43,0,0,   $CC,0,0,   $FF,0,0,   $AC,0,0,   $5A,0,0,   $D1,0,0,
$79,0,0,   $2A,0,0,   $CF,0,0,     $53,0,0,   $C0,0,0,   $E6,0,0,   $54,0,0,   $DC,0,0,   $A7,0,0,   $A2,0,0,
$FD,0,0,   $55,0,0,   $EA,0,0,   $C8,0,0,   $F4,0,0,   $51,0,0,   $A5,0,0,   $D3,0,0,   $D0,0,0,   $7A,0,0,
$41,0,0,   $F2,0,0,   $BF,0,0,   $6D,0,0,   $78,0,0,   $7C,0,0,   $AE,0,0,   $4F,0,0,   $B7,0,0,   $A1,0,0,
$4B,0,0,   $62,0,0,   $71,0,0,   $68,0,0, $D7,$0,0, $F8,0,0, $59,0,0, $F4,0,0,   $51,0,0,   $52,0,0,
$6A,0,0,   $FB,0,0,   $ED,0,0,   $AF,0,0,   $D4,0,0,   $F1,0,0,   $23,0,0,   $4A,0,0,   $F9,0,0,   $47,0,0,
$B1,0,0,   $F3,0,0,     $C6,0,0,   $D9,0,0,   $49,0,0,   $60,$0,0, $C9,0,0, $A3,0,0, $DA,0,0, $66,0,0,
$F4,0,0,   $51,0,0,   $30,0,0,   $31,0,0,   $32,0,0,   $33,0,0,   $34,0,0,   $35,0,0,   $36,0,0,   $37,0,0,
$38,0,0,   $39,0,0,   $3F,0,0,     $28,0,0,     $29,0,0,     $3D,0,0,     $2B,0,0,     $2D,0,0);

implementation

end.
