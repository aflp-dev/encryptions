unit Model.AESEncryption;

interface

uses
  SysUtils, Classes, IdCoder, IdCoder3to4, IdCoderMIME;

type
  TAESEncryption = class
  private
    FCipher: TIdEncoderMIME;
    FCipherReverse: TIdDecoderMIME;
    FKey: AnsiString;
  public
    constructor Create(AKey: AnsiString);
    destructor Destroy; override;
    function Encrypt(AText: AnsiString): AnsiString;
    function Decrypt(AText: AnsiString): AnsiString;
  end;

implementation

constructor TAESEncryption.Create(AKey: AnsiString);
begin
  inherited Create;
  FKey := AKey;
  FCipher := TIdEncoderMIME.Create(nil);
  FCipherReverse := TIdDecoderMIME.Create(nil);
end;

destructor TAESEncryption.Destroy;
begin
  FCipher.Free;
  FCipherReverse.Free;
  inherited Destroy;
end;

function TAESEncryption.Encrypt(AText: AnsiString): AnsiString;
begin
  Result := FCipher.EncodeString(AText);
end;

function TAESEncryption.Decrypt(AText: AnsiString): AnsiString;
begin
  Result := FCipherReverse.DecodeString(AText);
end;

end.


