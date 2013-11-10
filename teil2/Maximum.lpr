program Maximum (input, output);

  var
  maxzahl,i, zahl: integer;

begin
  maxzahl:=-(maxint-1);
  writeln ('Bitte geben sie 4 ganze Zahlen ein: ');
  for i:=1 to 4 do
    begin
      readln (zahl);
      if zahl> maxzahl then
        maxzahl:=zahl
    end;
  writeln ('Die groesste Zahl ist ', maxzahl);
end.

