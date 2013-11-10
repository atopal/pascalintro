program kleinsteZahl2 (input, output);
{Die kleinste der eingegebenen Zahlen ausgeben, ausser 0}

  var
  Zahl, MinZahl: integer;

begin
  writeln ('Bitte ganze Zahlen eingeben und mit 0 abschliessen: ');
  readln (Zahl);
  MinZahl:=Zahl;
  if Zahl<>0 then
    repeat
      if Zahl<MinZahl then
        MinZahl:=Zahl;
      readln (Zahl);
    until Zahl = 0;
  if Minzahl <>0 then
    writeln ('Die kleinste Zahl ist: ', MinZahl)
  else
    writeln ('Keine Zahl eingegeben');
end.

