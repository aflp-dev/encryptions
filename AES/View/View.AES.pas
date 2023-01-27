unit View.AES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmMain = class(TForm)
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Memo3: TMemo;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses Model.AESEncryption;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  AES: TAESEncryption;
  TextoOriginal, TextoCifrado: AnsiString;
const
  AESKey = 'DASNQ1238ADH-93123BD2&AFLP@DEV';
begin
 AES := TAESEncryption.Create(AESKey);
 try
   TextoOriginal := Memo1.Lines.Text;
   TextoCifrado := AES.Encrypt(TextoOriginal);
   Memo2.Lines.Add(TextoCifrado);
 finally
   AES.Free;
 end;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
var
  AES: TAESEncryption;
  TextoCifrado, TextoDecifrado: AnsiString;
const
  AESKey = 'DASNQ1238ADH-93123BD2&AFLP@DEV';
begin
  AES := TAESEncryption.Create(AESKey);
  try
    TextoCifrado := Memo2.Lines.Text;
    TextoDecifrado := AES.Decrypt(TextoCifrado);
    Memo3.Lines.Add(TextoDecifrado);
  finally
    AES.Free;
  end;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TMemo then
      TMemo(Components[i]).Clear;
  end;
end;

end.
