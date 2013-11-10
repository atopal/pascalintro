program Fakultaet (input, output);
{gib die Fakultaet von einer eingegebenen Zahl groesser gleich 0 aus}

type
tRechner=0..maxint;

var
Eingabe:tRechner;
Temp:integer;
i:integer;

begin
  write ('Bitte zahl>=0 eingeben: ');
  readln (Eingabe);
  if Eingabe=0 then
    writeln ('Fakultaet von 0 ist 1')
  else
    begin
      Temp:=1;
      for i:=1 to Eingabe do
      begin
        Temp:=Temp*i;
        writeln (i, ' ', Temp);
      end;
      writeln ('Die Faklutaet von ', Eingabe, ' ist ', Temp);
    end
end.
