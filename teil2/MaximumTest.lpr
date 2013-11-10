program MaximumTest (input, output);

  var
  maxzahl,
  zahl: integer;

begin
  writeln ('Bitte geben ganze Zahlen ein: ');
  readln (zahl);
  maxzahl := zahl;
  if zahl = 0 then
    writeln ('Leere Eingabefolge!')
  else
  begin
    while zahl <> 0 do
    begin
      if zahl > maxzahl then
        maxzahl := zahl;
      readln (zahl);
    end;
  writeln (maxzahl);
  end;
end.
