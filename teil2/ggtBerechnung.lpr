program ggtBerechnung (input, output);
{Berechnet für zwei natuerliche Zahlen den ggt}

  type
    tNatZahl=1..maxint;

  var
    Eingabe1, Eingabe2: integer;
    Zahl1, Zahl2: tNatZahl;

begin
  Writeln ('Bitte Zwei Zahlen groesser als Null eingeben');
  write ('Zahl 1: ');
  readln (Eingabe1);
  while Eingabe1 <=0 do
  begin
    writeln ('Bitte eine Zahl groesser als Null eingeben: ');
    readln (Eingabe1);
  end;
  Zahl1:=Eingabe1;
  write ('Zahl 2: ');
  readln (Eingabe2);
  while Eingabe2 <= 0 do
  begin
    writeln ('Bitte eine Zahl groesser als Null eingeben');
    readln (Eingabe2);
  end;
  Zahl2 := Eingabe2;
  while Zahl1<>Zahl2 do
  begin
    if Zahl1 > Zahl2 then
      Zahl1 := Zahl1-Zahl2
    else
      Zahl2 := Zahl2-Zahl1;
  end;
  writeln ('Der GGT von ', Eingabe1, ' und ', Eingabe2, ' ist ', Zahl1, '.')
end.
