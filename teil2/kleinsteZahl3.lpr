program kleinsteZahl3 (input, output);
{Die kleinste der eingegebenen Zahlen ausgeben, ausser 0}

  var
  Zahl, MinZahl: integer;

begin
  writeln ('Bitte ganze Zahlen eingeben und mit 0 abschliessen: ');
  if eof then
    writeln ('Keine Zahl eingegeben')
  else
    begin
    readln (Zahl);
    MinZahl:=Zahl;
    while not eof do
      begin
        readln (Zahl);
        if Zahl<MinZahl then
          MinZahl:=Zahl;
      end;
    writeln ('Die kleinste Zahl ist: ', MinZahl);
    end
end.

