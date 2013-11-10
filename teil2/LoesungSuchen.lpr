program LoesungSuchen (input, output);

  var
  EingabeA,
  EingabeB,
  EingabeC,
  l1,
  l2: real;
  exists: boolean;

  procedure LoesungFinden ( a, b, c : real;
               loesung1, loesung2: real;
               gibtLoesung: boolean);
    var
    d : real;
  begin
    d := b * b - 4.0 * a * c;
    if (d < 0.0) or (a=0.0) then
      gibtLoesung := false
    else
    begin
      gibtLoesung := true;
      d := sqrt(d);
      loesung1 := -(b - d) / (2.0 * a);
      loesung2 := -(b + d) / (2.0 * a);
    end;
  end; {LoesungFinden}

begin
  writeln ('Bitte die drei Werte eingeben: ');
  readln (EingabeA);
  readln (EingabeB);
  readln (EingabeC);

  LoesungFinden(EingabeA, EingabeB, EingabeC, l1, l2, exists);
  if exists then
    writeln ('Loesung 1 ist ', l1, '. Loesung 2 ist ', l2, '.')
  else
   writeln ('Es existiert keine Loesung');
end.{LoesungSuchen}
