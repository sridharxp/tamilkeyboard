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
unit bsearch;

interface

uses
  Classes,
  Windows,
  SysUtils;

procedure QuickSort(var A: array of Integer; iLo, iHi: Integer) ;
function BinarySearch( aArray : array of integer; SearchKey : integer; ArraySize : integer): boolean;

implementation

function BinarySearch( aArray : array of integer; SearchKey : integer; ArraySize : integer): boolean;
var
  Lo               : integer;
  Hi               : integer;
  Mid              : integer;
begin
  Result           := false;
  Lo               := 0;
  Hi               := ArraySize;
  Mid               := (Lo + Hi) div 2;

  while ((Lo <= Hi) and (Result = False)) do
  begin

    if aArray[Mid] = SearchKey then
    begin
      Result := true;
    end
    else if aArray[Mid] < SearchKey then
    begin
      Lo := Mid + 1;
    end
    else if aArray[Mid] > SearchKey then
    begin
      Hi := Mid - 1;
    end;

    Mid    := (Lo + Hi) div 2;
  end;
end;

procedure QuickSort(var A: array of Integer; iLo, iHi: Integer) ;
 var
   Lo, Hi, Pivot, T: Integer;
 begin
   Lo := iLo;
   Hi := iHi;
   Pivot := A[(Lo + Hi) div 2];
   repeat
     while A[Lo] < Pivot do Inc(Lo) ;
     while A[Hi] > Pivot do Dec(Hi) ;
     if Lo <= Hi then
     begin
       T := A[Lo];
       A[Lo] := A[Hi];
       A[Hi] := T;
       Inc(Lo) ;
       Dec(Hi) ;
     end;
   until Lo > Hi;
   if Hi > iLo then QuickSort(A, iLo, Hi) ;
   if Lo < iHi then QuickSort(A, Lo, iHi) ;
 end;

end.
