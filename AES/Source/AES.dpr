program AES;

uses
  Vcl.Forms,
  View.AES in '..\View\View.AES.pas' {frmMain},
  Model.AESEncryption in '..\Model\Model.AESEncryption.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
