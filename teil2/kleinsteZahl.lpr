program kleinsteZahl (input, output);
{Die kleinste der eingegebenen Zahlen ausgeben, ausser 0}

  var
  Zahl, MinZahl: integer;

begin
  writeln ('Bitte ganze Zahlen eingeben und mit 0 abschliessen: ');
  readln (Zahl);
  MinZahl:=Zahl;
  while Zahl <> 0 do
  begin
    if Zahl<MinZahl then
      MinZahl:=Zahl;
    readln (Zahl);
  end;
  if MinZahl =0 then
    writeln ('Keine Zahl eingegeben')
  else
    writeln ('Die kleinste Zahl ist: ', MinZahl);
end.


