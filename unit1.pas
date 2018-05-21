unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var cislo1,cislo2,n,i,vysledok,tip,spravne:integer;
begin
n:=strtoint(edit1.text);     //načíta počet príkladov, ktoré chceš vypočítať
spravne:=0;

randomize;

for i:=1 to n do
    begin
     cislo1:=random(11);     //za prvé a druhé číslo priradí číslo od 0 po 10
     cislo2:=random(11);
     vysledok:=cislo1*cislo2;    //vypočíta súčin týchto dvoch čísel
     tip:=strtoint(inputbox('Príklad č. '+inttostr(i),inttostr(cislo1)+'*'+inttostr(cislo2)+'=?','')); //vypýta si tip na výsledok
     if tip=vysledok then         //overí či si vypočítal sprívne alebo nie a určí počet správne vypočítaných príkladov
         begin
           showmessage('Správne');
           inc(spravne);
            end
     else showmessage('Chyba');
    end;
label3.caption:='Počet správnych odpovedí: '+inttostr(spravne);  //vypíše počet správnych odpovedí
end;

end.

