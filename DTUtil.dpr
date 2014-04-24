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
