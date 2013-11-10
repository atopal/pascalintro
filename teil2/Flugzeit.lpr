program Flugzeit (input, output);

  type
    tStunde = 0..23;
    tMinSek = 0..59;

    tZeit = record
              h : tStunde;
              m,
              s : tMinSek;
            end;

  var
  Abflug,
  Landung,
  Dauer : tZeit;

begin
  {Startzeit einlesen}
  writeln ('Bitte Startzeit eingeben.');
  write ('h: ');
  readln (Abflug.h);
  write ('m: ');
  readln (Abflug.m);
  write ('s: ');
  readln (Abflug.s);

  {Landezeit einlesen}
  writeln ('Bitte Landezeit eingeben.');
  write ('h: ');
  readln (Landung.h);
  write ('m: ');
  readln (Landung.m);
  write ('s: ');
  readln (Landung.s);

  {Dauer berechnen}

  {Sekungen}
  if Abflug.s > Landung.s then
  begin
    Dauer.s := Landung.s + (60 - Abflug.s);
    if Abflug.m = 59 then
    begin
      Abflug.m := 0;
      Abflug.h := Abflug.h + 1;
    end
    else
      Abflug.m := Abflug.m +1;
  end
  else
    Dauer.s := Landung.s - Abflug.s;

   {Minuten}
   if Abflug.m > Landung.m then
   begin
     Dauer.m := Landung.m + (60 - Abflug.m);
     if Abflug.h = 23 then
      Abflug.h := 0
     else
       Abflug.h := Abflug.h+1;
   end
   else
     Dauer.m := Landung.m - Abflug.m;

   {Stunden}
   if Abflug.h > Landung.h then
     Dauer.h := Landung.h + (24 - Abflug.h)
   else
     Dauer.h := Landung.h - Abflug.h;

  {Ergebnis ausgeben}

  writeln ('Der Flug dauert ', Dauer.h, ' Stunden, ', Dauer.m, ' Minuten und ',
            Dauer.s, ' Sekunden.');

end.
