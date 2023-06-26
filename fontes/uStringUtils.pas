unit uStringUtils;

interface

Uses
  System.SysUtils;

Type
  TStringUtils = class
    public
      function ApenasNumeros(Value: String): String;
  end;

implementation

{ TStringUtils }

function TStringUtils.ApenasNumeros(Value: String): String;
var
  i: integer;
begin
  result := '';
  for I := 1 to Value.Length do
    if (Value[i] in ['0'..'9']) then
      Result := result + Value[i];
end;

end.
