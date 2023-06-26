unit untFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Label1: TLabel;
    edtTexto: TEdit;
    Button1: TButton;
    edtTextoConvertido: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uStringUtils;

procedure TForm1.Button1Click(Sender: TObject);
var
  utils: TStringUtils;
begin
  utils := TStringUtils.Create;
  try
    edtTextoConvertido.Text := utils.ApenasNumeros(edtTexto.Text);
  finally
    utils.Free;
  end;
end;

end.
