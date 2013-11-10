program testing (input, output);

  const
  FELDGROESSE = 9;
  FELDGROESSEPLUSEINS = 10;

  type
  tIndex = 1..FELDGROESSE;
  tIndexObenUnten = 0..FELDGROESSEPLUSEINS;

  var
  unten,
  oben : tIndexObenUnten;
  Mitte : tIndex;
  Feld : array [tIndex] of integer;
  Suchwert,i : integer;
  gefunden : boolean;

begin
  writeln ('Bitte 9 Zahlen eingeben:');
  for i:=1 to FELDGROESSE do
    readln (Feld[i]);
  writeln ('Suchwert eingeben: ');
  readln (Suchwert);
  {begin program}

  gefunden := false;
  unten := 1;
  oben := FELDGROESSE;
  while (unten <= oben) and not gefunden do
  begin
    Mitte := (oben + unten) div 2;
    if Suchwert = Feld[Mitte] then
      gefunden := true
    else
      if Suchwert < Feld[Mitte] then
        oben := Mitte - 1
      else
        unten := Mitte + 1
  end;

   {end program}
  if gefunden then
    writeln ('Ja, Suche Erfolgreich')
  else
    writeln ('Nein, nicht vorhanden');
end.

