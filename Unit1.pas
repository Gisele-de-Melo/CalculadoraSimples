//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnAdd: TButton;
    btnSub: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    btnClear: TButton;
    Edit1: TEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FirstNumber, SecondNumber: Double;
    Operation: String;
    procedure ExecuteOperation;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  FirstNumber := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operation := '+';
  Edit1.SetFocus;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  Edit1.Clear;
  Edit1.SetFocus;
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
  FirstNumber := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operation := '/';
  Edit1.SetFocus;
end;

procedure TForm1.btnMultClick(Sender: TObject);
begin
  FirstNumber := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operation := '*';
  Edit1.SetFocus;
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  FirstNumber := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Operation := '-';
  Edit1.SetFocus;
end;

procedure TForm1.ExecuteOperation;
begin
  SecondNumber := StrToFloat(Edit1.Text);
  if Operation = '+' then
    Edit1.Text := FloatToStr(FirstNumber + SecondNumber)
  else
  if Operation = '-' then
    Edit1.Text := FloatToStr(FirstNumber - SecondNumber)
  else
  if Operation = '*' then
    Edit1.Text := FloatToStr(FirstNumber * SecondNumber)
  else
  if Operation = '/' then
  begin
    if SecondNumber = 0 then
      ShowMessage('Erro: Divisão por zero')
    else
      Edit1.Text := FloatToStr(FirstNumber / SecondNumber);
  end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then  // Enter key
  begin
    ExecuteOperation;
    Key := #0;
  end;
end;

end.
