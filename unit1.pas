unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
   contact=record
     nom:string;
     pre:string;
     num:string;
   end;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    rslt: TLabel;
    nomsp: TEdit;
    presp: TEdit;
    numsp: TEdit;
    Rech: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure nomspChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  T:array[1..100]of contact;
  n,i:integer;

implementation

{$R *.lfm}
procedure hi;
begin
  For i:=1 to 100 do
  begin
  T[i].nom:='';
  T[i].pre:='';
  T[i].num:='';
  end;
end;

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var k:integer;
begin
  k:=0;
   for i:=1 to 100 do
   begin
         if(T[i].nom='')then
         begin
            k:=i;
         end;
   end;
  if(k<>0) then
  begin
  T[k].nom:=nomsp.Text;
  T[k].pre:=presp.Text;
  T[k].num:=numsp.Text;
  rslt.Caption:='LE CONTACT EST AJOUTÉ';
  presp.Caption:='';
  nomsp.caption:='';
  numsp.caption:='';

  end
  else
  begin
  nomsp.caption:='NO SPACE';
  presp.caption:='NO SPACE';
  numsp.CAPTION:='NO SPACE';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  for i := 1 to 100 do
  begin
  if ((T[i].nom=Rech.text)or(T[i].pre=Rech.text)or(T[i].num=Rech.Text)) then
  begin
    T[i].nom:='';
    T[i].pre:='';
    T[i].num:='';
    nomsp.caption:='';
    presp.Caption:='';
    numsp.caption:='';
    rslt.caption:='NOUS AVONS SUPPRIMÉ LE CONTACT';
  end
  else
  BEGIN
  rslt.caption:='NOUS AVONS PAS TROUVE LE CONTACT';
  end;
END;
END;



procedure TForm1.Button3Click(Sender: TObject);

begin
  for i:=1 to 100 do
  begin
  if ((T[i].nom=Rech.text)or(T[i].pre=Rech.Text)or(T[i].num=Rech.Text)) then
  Begin
  nomsp.Caption:=T[i].nom;
  presp.Caption:=T[i].pre;
  numsp.Caption:=T[i].num;
  rslt.caption:='CECI LES INFORMATIONS DE CE CONTACT'
  end
  else
  begin
  rslt.Caption:='NOUS AVONS PAS TROUVÉ CE CONTACT ';
  END;
  end;

end;

procedure TForm1.nomspChange(Sender: TObject);
begin

end;

end.

