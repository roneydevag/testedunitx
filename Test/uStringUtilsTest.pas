unit uStringUtilsTest;

interface

uses
  DUnitX.TestFramework,
  uStringUtils;

type
  [TestFixture]
  TStringUtilsTest = class
  public
    [Test]
    procedure TestApenasNumeros;

    [Test]
    procedure TestComLetrasMinusculas;

    [Test]
    procedure TestComCarecteresEspeciais;
  end;

implementation

{ TStringUtilsTest }

procedure TStringUtilsTest.TestApenasNumeros;
var
  utils : TStringUtils;
  resultado: string;
begin
  utils := TStringUtils.Create;
  try
    resultado := utils.ApenasNumeros('ABC123');
    Assert.AreEqual('123', resultado)
  finally
    utils.Free;
  end;
end;

procedure TStringUtilsTest.TestComCarecteresEspeciais;
var
  utils : TStringUtils;
  resultado: string;
begin
  utils := TStringUtils.Create;
  try
    resultado := utils.ApenasNumeros('@Bc123');
    Assert.AreEqual('123', resultado, 'Não resultou o 123 esperado: ' + resultado);
  finally
    utils.Free;
  end;
end;

procedure TStringUtilsTest.TestComLetrasMinusculas;
var
  utils : TStringUtils;
  resultado: string;
begin
  utils := TStringUtils.Create;
  try
    resultado := utils.ApenasNumeros('abc123');
    Assert.AreEqual('123', resultado)
  finally
    utils.Free;
  end;
end;

initialization
  TDUnitX.RegisterTestFixture(TStringUtilsTest);

end.
