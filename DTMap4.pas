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
unit DTMap4;

interface

uses
  SysUtils;

const
// Inscript
BIkee: array [0..327] of ansistring =(
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

BIFee: array [0..983] of integer =(
$41, 0, 0, $42, 0, 0, $43, 0, 0, $44, 0, 0, $45, 0, 0,
$46, 0, 0, $47, 0, 0, $48, 0, 0, $49, 0, 0, $4A, 0, 0,
$4B, 0, 0, $4A, $5B, 0, $40, 0, 0, $4C, 0, 0, $4D, 0, 0,
$4E, 0, 0, $4F, 0, 0, $50, 0, 0, $51, 0, 0, $52, 0, 0,
$53, 0, 0, $54, 0, 0, $55, 0, 0, $56, 0, 0, $57, 0, 0,
$58, 0, 0, $59, 0, 0, $5A, 0, 0, $5B, 0, 0, $5C, 0, 0,
$5D, 0, 0, $5E, 0, 0, $60, 0, 0, $5F, 0, 0, $61, 0, 0,
$62, 0, 0, $4C, $F4, 0, $4D, $F4, 0, $4E, $F4, 0, $4F, $F4, 0,
$50, $F4, 0, $51, $F4, 0, $52, $F4, 0, $53, $F4, 0, $54, $F4, 0,
$55, $F4, 0, $56, $F4, 0, $57, $F4, 0, $58, $F4, 0, $59, $F4, 0,
$5A, $F4, 0, $5B, $F4, 0, $5C, $F4, 0, $5D, $F4, 0, $5E, $F4, 0,
$60, $F4, 0, $5F, $F4, 0, $61, $F4, 0, $62, $F4, 0, $F9, $4C, 0,
$F9, $4D, 0, $F9, $4E, 0, $F9, $4F, 0, $F9, $50, 0, $F9, $51, 0,
$F9, $52, 0, $F9, $53, 0, $F9, $54, 0, $F9, $55, 0, $F9, $56, 0,
$F9, $57, 0, $F9, $58, 0, $F9, $59, 0, $F9, $5A, 0, $F9, $5B, 0,
$F9, $5C, 0, $F9, $5D, 0, $F9, $5E, 0, $F9, $60, 0, $F9, $5F, 0,
$F9, $61, 0, $F9, $62, 0, $FA, $4C, 0, $FA, $4D, 0, $FA, $4E, 0,
$FA, $4F, 0, $FA, $50, 0, $FA, $51, 0, $FA, $52, 0, $FA, $53, 0,
$FA, $54, 0, $FA, $55, 0, $FA, $56, 0, $FA, $57, 0, $FA, $58, 0,
$FA, $59, 0, $FA, $5A, 0, $FA, $5B, 0, $FA, $5C, 0, $FA, $5D, 0,
$FA, $5E, 0, $FA, $60, 0, $FA, $5F, 0, $FA, $61, 0, $FA, $62, 0,
$FB, $4C, 0, $FB, $4D, 0, $FB, $4E, 0, $FB, $4F, 0, $FB, $50, 0,
$FB, $51, 0, $FB, $52, 0, $FB, $53, 0, $FB, $54, 0, $FB, $55, 0,
$FB, $56, 0, $FB, $57, 0, $FB, $58, 0, $FB, $59, 0, $FB, $5A, 0,
$FB, $5B, 0, $FB, $5C, 0, $FB, $5D, 0, $FB, $5E, 0, $FB, $60, 0,
$FB, $5F, 0, $FB, $61, 0, $FB, $62, 0, $F9, $4C, $F4, $F9, $4D, $F4,
$F9, $4E, $F4, $F9, $4F, $F4, $F9, $50, $F4, $F9, $51, $F4, $F9, $52, $F4,
$F9, $53, $F4, $F9, $54, $F4, $F9, $55, $F4, $F9, $56, $F4, $F9, $57, $F4,
$F9, $58, $F4, $F9, $59, $F4, $F9, $5A, $F4, $F9, $5B, $F4, $F9, $5C, $F4,
$F9, $5D, $F4, $F9, $5E, $F4, $F9, $60, $F4, $F9, $5F, $F4, $F9, $61, $F4,
$F9, $62, $F4, $FA, $4C, $F4, $FA, $4D, $F4, $FA, $4E, $F4, $FA, $4F, $F4,
$FA, $50, $F4, $FA, $51, $F4, $FA, $52, $F4, $FA, $53, $F4, $FA, $54, $F4,
$FA, $55, $F4, $FA, $56, $F4, $FA, $57, $F4, $FA, $58, $F4, $FA, $59, $F4,
$FA, $5A, $F4, $FA, $5B, $F4, $FA, $5C, $F4, $FA, $5D, $F4, $FA, $5E, $F4,
$FA, $60, $F4, $FA, $5F, $F4, $FA, $61, $F4, $FA, $62, $F4, $F9, $4C, $5B,
$F9, $4D, $5B, $F9, $4E, $5B, $F9, $4F, $5B, $F9, $50, $5B, $F9, $51, $5B,
$F9, $52, $5B, $F9, $53, $5B, $F9, $54, $5B, $F9, $55, $5B, $F9, $56, $5B,
$F9, $57, $5B, $F9, $58, $5B, $F9, $59, $5B, $F9, $5A, $5B, $F9, $5B, $5B,
$F9, $5C, $5B, $F9, $5D, $5B, $F9, $5E, $5B, $F9, $60, $5B, $F9, $5F, $5B,
$F9, $61, $5B, $F9, $62, $5B, $6E, 0, 0, $73, 0, 0, $75, 0, 0,
$64, 0, 0, $6C, 0, 0, $6F, 0, 0, $72, 0, 0, $6A, 0, 0,
$6D, 0, 0, $68, 0, 0, $74, 0, 0, $6B, 0, 0, $66, 0, 0,
$71, 0, 0, $70, 0, 0, $69, 0, 0, $76, 0, 0, $77, 0, 0,
$78, 0, 0, $79, 0, 0, $7A, 0, 0, $65, 0, 0, $67, 0, 0,
$AB, 0, 0, $B0, 0, 0, $B2, 0, 0, $A1, 0, 0, $A9, 0, 0,
$AC, 0, 0, $AF, 0, 0, $A7, 0, 0, $AA, 0, 0, $A5, 0, 0,
$B1, 0, 0, $A8, 0, 0, $A3, 0, 0, $AE, 0, 0, $AD, 0, 0,
$A6, 0, 0, $AD, 0, 0, $B4, 0, 0, $B5, 0, 0, $B6, 0, 0,
$B7, 0, 0, $A2, 0, 0, $A4, 0, 0, $C2, 0, 0, $C7, 0, 0,
$C9, 0, 0, $B8, 0, 0, $C0, 0, 0, $C3, 0, 0, $C6, 0, 0,
$BE, 0, 0, $C1, 0, 0, $BC, 0, 0, $C8, 0, 0, $BF, 0, 0,
$BA, 0, 0, $C5, 0, 0, $C4, 0, 0, $BD, 0, 0, $CA, 0, 0,
$CB, 0, 0, $CC, 0, 0, $CD, 0, 0, $CE, 0, 0, $B9, 0, 0,
$BB, 0, 0, $D9, 0, 0, $DE, 0, 0, $E0, 0, 0, $CF, 0, 0,
$D7, 0, 0, $DA, 0, 0, $DD, 0, 0, $D5, 0, 0, $D8, 0, 0,
$D3, 0, 0, $DF, 0, 0, $D6, 0, 0, $D1, 0, 0, $DC, 0, 0,
$DB, 0, 0, $D4, 0, 0, $5E, $FD, 0, $5F, $FD, 0, $60, $FD, 0,
$61, $FD, 0, $62, $FD, 0, $D0, 0, 0, $D2, 0, 0, $EB, 0, 0,
$F0, 0, 0, $F2, 0, 0, $E1, 0, 0, $EB, 0, 0, $EC, 0, 0,
$EF, 0, 0, $E7, 0, 0, $EA, 0, 0, $E5, 0, 0, $F1, 0, 0,
$E8, 0, 0, $E3, 0, 0, $EE, 0, 0, $ED, 0, 0, $E6, 0, 0,
$5E, $FE, 0, $5F, $FE, 0, $60, $FE, 0, $61, $FE, 0, $62, $FE, 0,
$E2, 0, 0, $E4, 0, 0, $30, 0, 0, $31, 0, 0, $32, 0, 0,
$33, 0, 0, $34, 0, 0, $35, 0, 0, $36, 0, 0, $37, 0, 0,
$38, 0, 0, $39, 0, 0, $3F, 0, 0, $28, 0, 0, $29, 0, 0,
$3D, 0, 0, $2B, 0, 0, $2D, 0, 0
);

implementation

end.
