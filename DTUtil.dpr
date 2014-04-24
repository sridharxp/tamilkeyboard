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
program DTUtil;

uses
  Forms,
  Dawn in 'Dawn.pas' {frmDawn},
  Purchase in '..\..\TL\IPP\Purchase.pas' {frmRegister},
  ethernet_detail in '..\..\TL\IPP\ethernet_detail.pas',
  USBSerial in '..\..\TL\IPP\USBSerial.pas',
  MapUtil in 'MapUtil.pas' {frmMaputil},
  CodePoint in 'CodePoint.pas' {frmCPCalc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDawn, frmDawn);
  Application.CreateForm(TfrmRegister, frmRegister);
  Application.CreateForm(TfrmMaputil, frmMaputil);
  Application.CreateForm(TfrmCPCalc, frmCPCalc);
  Application.Run;
end.
