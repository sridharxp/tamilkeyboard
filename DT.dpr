program DT;

uses
  Forms,
  Dawn in 'Dawn.pas' {frmDawn},
  Purchase in '..\..\TL\IPP\Purchase.pas' {frmRegister},
  ethernet_detail in '\TL\IPP\ethernet_detail.pas',
  USBSerial in '\TL\IPP\USBSerial.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDawn, frmDawn);
  Application.CreateForm(TfrmRegister, frmRegister);
  Application.Run;
end.
