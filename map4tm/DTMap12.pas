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
Tamil Unicode Standard Font
Phonetic Layout
}
unit DTMap12;

interface

uses
  SysUtils;

const
// TAU
//UTkee: array [0..79] of ansiístring =(
UPkee: array [0..338] of ansistring =(
{ Vowels}
'a',      'A',      'i',      'I',    'u',      'U',      'e',      'E',    'ai',   'o',
'O',      'au',      '*',      '_',
{ Consonants}
'ka',      'nga',     'cha',      'gna',      'ta',      'Na',      'tha',      'nha',  'pa', 'ma',
'ya',      'ra',      'la',      'va',      'zha',      'La',      'Ra',      'na',
{ Grantha}
'ha',      'ja',      'sa',      'sha',      'ksha',
'shri', 'sri',
{ Numerals}
'0',      '1',      '2',      '3',     '4',       '5',      '6',      '7',      '8',      '9',
{ Duplicates}
{ Symbols}
',',     '.',       '?',      '>',
'~',     '@',       '#',
'%',      '^',      '(',      ')',      '=',      '+',      '-',

'k',     'ng',     'ch',     'gn',     't',     'N',    'th',     'nh',     'p',     'm',
'y',     'r',      'l',    'v',     'zh',     'L',     'R',     'n',     'sh',     's',
'h',     'j',      'ksh',
'kA',     'ngA',     'chA',     'gnA',     'tA',     'NA',    'thA',     'nhA',     'pA',     'mA',
'yA',     'rA',      'lA',    'vA',     'zhA',     'LA',     'RA',     'nA',     'shA',     'sA',
'hA',     'jA',      'kshA',
'ki',     'ngi',     'chi',     'gni',     'ti',     'Ni',    'thi',     'nhi',     'pi',     'mi',
'yi',     'ri',      'li',    'vi',     'zhi',     'Li',     'Ri',     'ni',     'shi',     'si',
'hi',     'ji',      'kshi',
'kI',     'ngI',     'chI',     'gnI',    'tI',      'NI',    'thI',       'nhI',     'pI',     'mI',
'yI',     'rI',      'lI',    'vI',     'zhI',     'LI',     'RI',     'nI',     'shI',     'sI',
'hI',     'jI',      'kshI',
'ke',     'nge',     'che',     'gne',     'te',     'Ne',    'the',     'nhe',     'pe',     'me',
'ye',     're',      'le',    've',     'zhe',     'Le',     'Re',     'ne',     'she',     'se',
'he',     'je',      'kshe',
'kE',     'ngE',     'chE',     'gnE',     'tE',     'NE',    'thE',     'nhE',     'pE',     'mE',
'yE',     'rE',      'lE',    'vE',     'zhE',     'LE',     'RE',     'nE',     'shE',     'sE',
'hE',     'jE',      'kshE',
'kai',     'ngai',     'chai',     'gnai',     'tai',     'Nai',    'thai',     'nhai',     'pai',     'mai',
'yai',     'rai',      'lai',    'vai',     'zhai',     'Lai',     'Rai',     'nai',     'shai',     'sai',
'hai',     'jai',      'kshai',
'ko',     'ngo',     'cho',     'gno',     'to',     'No',    'tho',     'nho',     'po',     'mo',
'yo',     'ro',      'lo',    'vo',     'zho',     'Lo',     'Ro',     'no',     'sho',     'so',
'ho',     'jo',      'ksho',
'kO',     'ngO',     'chO',     'gnO',     'tO',     'NO',    'thO',     'nhO',     'pO',     'mO',
'yO',     'rO',      'lO',    'vO',     'zhO',     'LO',     'RO',     'nO',     'shO',     'sO',
'hO',     'jO',      'kshO',
'kau',     'ngau',     'chau',     'gnau',     'tau',     'Nau',    'thau',     'nhau',     'pau',     'mau',
'yau',     'rau',      'lau',    'vau',     'zhau',     'Lau',     'Rau',     'nau',     'shau',     'sau',
'hau',     'jau',      'kshau',
// U and UU
'ku',     'ngu',     'chu',     'gnu',     'tu',     'Nu',    'thu',     'nhu',     'pu',     'mu',
'yu',     'ru',      'lu',    'vu',     'zhu',     'Lu',     'Ru',     'nu',     'shu',     'su',
'hu',     'ju',      'kshu',
'kU',     'ngU',     'chU',     'gnU',     'tU',     'NU',    'thU',     'nhU',     'pU',     'mU',
'yU',     'rU',      'lU',    'vU',     'zhU',     'LU',     'RU',     'nU',     'shU',     'sU',
'hU',     'jU',      'kshU'

);

//UTFee: array [0..159] of integer =(
UPFee: array [0..1355] of integer =(
{ Vowels}
  $B85,0,0,0,    $B86,0,0,0,    $B87,0,0,0,    $B88,0,0,0,    $B89,0,0,0,    $B8A,0,0,0,    $B8E,0,0,0,    $B8F,0,0,0,    $B90,0,0,0,
  $B92,0,0,0,    $B93,0,0,0,    $0B94,0,0,0,   $B83,0,0,0,    $B83,0,0,0,
{ Consonants}
  $B95,0,0,0,    $B99,0,0,0,    $B9A,0,0,0,    $B9E,0,0,0,    $B9F,0,0,0,    $BA3,0,0,0,    $BA4,0,0,0,    $BA8,0,0,0,    $BAA,0,0,0,    $BAE,0,0,0,
  $BAF,0,0,0,    $BB0,0,0,0,    $BB2,0,0,0,    $BB5,0,0,0,    $BB4,0,0,0,    $BB3,0,0,0,    $BB1,0,0,0,    $BA9,0,0,0,
{ Deva Nagari}
  $BB9,0,0,0,    $B9C,0,0,0,    $BB8,0,0,0,    $BB7,0,0,0,    $B95,$BCD,$BB7,0,
  $BB6,$BCD,$BB0,$BC0,   $BB8,$BCD,$BB0,$BC0,
{ Numerals}
  48,0,0,0,      49,0,0,0,      50,0,0,0,      51,0,0,0,      52,0,0,0,      53,0,0,0,      54,0,0,0,      55,0,0,0,      56,0,0,0,      57,0,0,0,
{ Duplicates}
{ Symbols}
  $2C,0,0,0,     $2E,0,0,0,     $2D,0,0,0,     $3F,0,0,0,
  $2A,0,0,0,     $22,0,0,0,     $25,0,0,0,
  $BC1,0,0,0,    $BC2,0,0,0,
  40,0,0,0,      41,0,0,0,      61,0,0,0,      43,0,0,0,      45,0,0,0,

  $B95,$BCD,0,0, $B99,$BCD,0,0, $B9A,$BCD,0,0, $B9E,$BCD,0,0, $B9F,$BCD,0,0, $BA3,$BCD,0,0, $BA4,$BCD,0,0, $BA8,$BCD,0,0, $BAA,$BCD,0,0, $BAE,$BCD,0,0,
  $BAF,$BCD,0,0, $BB0,$BCD,0,0, $BB2,$BCD,0,0, $BB5,$BCD,0,0, $BB4,$BCD,0,0, $BB3,$BCD,0,0, $BB1,$BCD,0,0, $BA9,$BCD,0,0, $BB7,$BCD,0,0, $BB8,$BCD,0,0,
  $BB9,$BCD,0,0, $B9C,$BCD,0,0, $B95,$BCD,$BB7,$BCD,
  $B95,$BBE,0,0, $B99,$BBE,0,0, $B9A,$BBE,0,0, $B9E,$BBE,0,0, $B9F,$BBE,0,0, $BA3,$BBE,0,0, $BA4,$BBE,0,0, $BA8,$BBE,0,0, $BAA,$BBE,0,0, $BAE,$BBE,0,0,
  $BAF,$BBE,0,0, $BB0,$BBE,0,0, $BB2,$BBE,0,0, $BB5,$BBE,0,0, $BB4,$BBE,0,0, $BB3,$BBE,0,0, $BB1,$BBE,0,0, $BA9,$BBE,0,0, $BB7,$BBE,0,0, $BB8,$BBE,0,0,
  $BB9,$BBE,0,0, $B9C,$BBE,0,0, $B95,$BCD,$BB7,$BBE,
  $B95,$BBF,0,0, $B99,$BBF,0,0, $B9A,$BBF,0,0, $B9E,$BBF,0,0, $B9F,$BBF,0,0, $BA3,$BBF,0,0, $BA4,$BBF,0,0, $BA8,$BBF,0,0, $BAA,$BBF,0,0, $BAE,$BBF,0,0,
  $BAF,$BBF,0,0, $BB0,$BBF,0,0, $BB2,$BBF,0,0, $BB5,$BBF,0,0, $BB4,$BBF,0,0, $BB3,$BBF,0,0, $BB1,$BBF,0,0, $BA9,$BBF,0,0, $BB7,$BBF,0,0, $BB8,$BBF,0,0,
  $BB9,$BBF,0,0, $B9C,$BBF,0,0, $B95,$BCD,$BB7,$BBF,
  $B95,$BC0,0,0, $B99,$BC0,0,0, $B9A,$BC0,0,0, $B9E,$BC0,0,0, $B9F,$BC0,0,0, $BA3,$BC0,0,0, $BA4,$BC0,0,0, $BA8,$BC0,0,0, $BAA,$BC0,0,0, $BAE,$BC0,0,0,
  $BAF,$BC0,0,0, $BB0,$BC0,0,0, $BB2,$BC0,0,0, $BB5,$BC0,0,0, $BB4,$BC0,0,0, $BB3,$BC0,0,0, $BB1,$BC0,0,0, $BA9,$BC0,0,0, $BB7,$BC0,0,0, $BB8,$BC0,0,0,
  $BB9,$BC0,0,0, $B9C,$BC0,0,0, $B95,$BCD,$BB7,$BC0,
  $B95,$BC6,0,0, $B99,$BC6,0,0, $B9A,$BC6,0,0, $B9E,$BC6,0,0, $B9F,$BC6,0,0, $BA3,$BC6,0,0, $BA4,$BC6,0,0, $BA8,$BC6,0,0, $BAA,$BC6,0,0, $BAE,$BC6,0,0,
  $BAF,$BC6,0,0, $BB0,$BC6,0,0, $BB2,$BC6,0,0, $BB5,$BC6,0,0, $BB4,$BC6,0,0, $BB3,$BC6,0,0, $BB1,$BC6,0,0, $BA9,$BC6,0,0, $BB7,$BC6,0,0, $BB8,$BC6,0,0,
  $BB9,$BC6,0,0, $B9C,$BC6,0,0, $B95,$BCD,$BB7,$BC6,
  $B95,$BC7,0,0, $B99,$BC7,0,0, $B9A,$BC7,0,0, $B9E,$BC7,0,0, $B9F,$BC7,0,0, $BA3,$BC7,0,0, $BA4,$BC7,0,0, $BA8,$BC7,0,0, $BAA,$BC7,0,0, $BAE,$BC7,0,0,
  $BAF,$BC7,0,0, $BB0,$BC7,0,0, $BB2,$BC7,0,0, $BB5,$BC7,0,0, $BB4,$BC7,0,0, $BB3,$BC7,0,0, $BB1,$BC7,0,0, $BA9,$BC7,0,0, $BB7,$BC7,0,0, $BB8,$BC7,0,0,
  $BB9,$BC7,0,0, $B9C,$BC7,0,0, $B95,$BCD,$BB7,$BC7,
  $B95,$BC8,0,0, $B99,$BC8,0,0, $B9A,$BC8,0,0, $B9E,$BC8,0,0, $B9F,$BC8,0,0, $BA3,$BC8,0,0,  $BA4,$BC8,0,0, $BA8,$BC8,0,0, $BAA,$BC8,0,0, $BAE,$BC8,0,0,
  $BAF,$BC8,0,0, $BB0,$BC8,0,0, $BB2,$BC8,0,0, $BB5,$BC8,0,0, $BB4,$BC8,0,0, $BB3,$BC8,0,0, $BB1,$BC8,0,0, $BA9,$BC8,0,0,  $BB7,$BC8,0,0, $BB8,$BC8,0,0,
  $BB9,$BC8,0,0, $B9C,$BC8,0,0, $B95,$BCD,$BB7,$BC8,
  $B95,$BCA,0,0, $B99,$BCA,0,0, $B9A,$BCA,0,0, $B9E,$BCA,0,0, $B9F,$BCA,0,0, $BA3,$BCA,0,0, $BA4,$BCA,0,0, $BA8,$BCA,0,0, $BAA,$BCA,0,0, $BAE,$BCA,0,0,
  $BAF,$BCA,0,0, $BB0,$BCA,0,0, $BB2,$BCA,0,0, $BB5,$BCA,0,0, $BB4,$BCA,0,0, $BB3,$BCA,0,0, $BB1,$BCA,0,0, $BA9,$BCA,0,0, $BB7,$BCA,0,0, $BB8,$BCA,0,0,
  $BB9,$BCA,0,0, $B9C,$BCA,0,0, $B95,$BCD,$BB7,$BCA,
  $B95,$BCB,0,0, $B99,$BCB,0,0, $B9A,$BCB,0,0, $B9E,$BCB,0,0, $B9F,$BCB,0,0, $BA3,$BCB,0,0, $BA4,$BCB,0,0, $BA8,$BCB,0,0, $BAA,$BCB,0,0, $BAE,$BCB,0,0,
  $BAF,$BCB,0,0, $BB0,$BCB,0,0, $BB2,$BCB,0,0, $BB5,$BCB,0,0, $BB4,$BCB,0,0, $BB3,$BCB,0,0, $BB1,$BCB,0,0, $BA9,$BCB,0,0, $BB7,$BCB,0,0, $BB8,$BCB,0,0,
  $BB9,$BCB,0,0, $B9C,$BCB,0,0, $B95,$BCD,$BB7,$BCB,
  $B95,$BCC,0,0, $B99,$BCC,0,0, $B9A,$BCC,0,0, $B9E,$BCC,0,0, $B9F,$BCC,0,0, $BA3,$BCC,0,0, $BA4,$BCC,0,0, $BA8,$BCC,0,0, $BAA,$BCC,0,0, $BAE,$BCC,0,0,
  $BAF,$BCC,0,0, $BB0,$BCC,0,0, $BB2,$BCC,0,0, $BB5,$BCC,0,0, $BB4,$BCC,0,0, $BB3,$BCC,0,0, $BB1,$BCC,0,0, $BA9,$BCC,0,0, $BB7,$BCC,0,0, $BB8,$BCC,0,0,
  $BB9,$BCC,0,0, $B9C,$BCC,0,0, $B95,$BCD,$BB7,$BCC,
  $B95,$BC1,0,0, $B99,$BC1,0,0, $B9A,$BC1,0,0, $B9E,$BC1,0,0, $B9F,$BC1,0,0, $BA3,$BC1,0,0, $BA4,$BC1,0,0, $BA8,$BC1,0,0, $BAA,$BC1,0,0, $BAE,$BC1,0,0,
  $BAF,$BC1,0,0, $BB0,$BC1,0,0, $BB2,$BC1,0,0, $BB5,$BC1,0,0, $BB4,$BC1,0,0, $BB3,$BC1,0,0, $BB1,$BC1,0,0, $BA9,$BC1,0,0, $BB7,$BC1,0,0, $BB8,$BC1,0,0,
  $BB9,$BC1,0,0, $B9C,$BC1,0,0, $B95,$BCD,$BB7,$BC1,
  $B95,$BC2,0,0, $B99,$BC2,0,0, $B9A,$BC2,0,0, $B9E,$BC2,0,0, $B9F,$BC2,0,0, $BA3,$BC2,0,0, $BA4,$BC2,0,0, $BA8,$BC2,0,0, $BAA,$BC2,0,0, $BAE,$BC2,0,0,
  $BAF,$BC2,0,0, $BB0,$BC2,0,0, $BB2,$BC2,0,0, $BB5,$BC2,0,0, $BB4,$BC2,0,0, $BB3,$BC2,0,0, $BB1,$BC2,0,0, $BA9,$BC2,0,0, $BB7,$BC2,0,0, $BB8,$BC2,0,0,
  $BB9,$BC2,0,0, $B9C,$BC2,0,0, $B95,$BCD,$BB7,$BC2
);



implementation

end.
