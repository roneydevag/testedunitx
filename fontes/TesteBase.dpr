program TesteBase;

uses
  Vcl.Forms,
  untFrmMain in 'untFrmMain.pas' {Form1},
  uStringUtils in 'uStringUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
