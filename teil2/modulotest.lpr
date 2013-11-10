program FindeNaechstePrimzahl (input, output) ;

  type
  tNat = 1..maxint;
  tSchrittweite = 0..maxint;

  var
  Eingabe : integer;
  Zahl : tNat;
  Schrittweite : tSchrittweite;
  kleiner,
  groesser : boolean;

  function prim (x: integer) : boolean;

    var
    helper : integer;

  begin
    prim := false;
    if x mod 2 <> 0 then
    begin
      prim := true;
      helper :=1;
      while prim AND ((x DIV 2) >= helper)  do
      begin
        helper := helper + 2;
        if x mod helper = 0 then
          prim := false;
      end; {while}
    end; { if x not even }

    if (x= 1) OR (x = 2) then
      prim := true;
  end;

begin
  kleiner := false;
  groesser := false;
   {Zahl einlesen}
  repeat
    write ('Bitte Zahl groesser als 0 eingeben: ');
    readln (Eingabe);
  until eingabe > 0;

  Zahl := Eingabe;

  {Berechnen ob Primzahl}

  {Zahl ausgeben}
  if prim(Zahl) then
    writeln (Zahl, ' ist eine Primzahl.')
  else
    begin
      Schrittweite := 0;
      repeat
        Schrittweite := Schrittweite+1;
        kleiner := prim (Zahl - Schrittweite);
        groesser := prim (Zahl + Schrittweite);
      until kleiner OR groesser;

      if kleiner AND groesser then
      begin
        writeln ('Die kleinere Primzahl lautet ', Zahl - Schrittweite);
        writeln ('Die groessere Primzahl lautet ', Zahl + Schrittweite);
      end
      else
       if kleiner then
         writeln ('Die naechste Primzahl lautet ', Zahl - Schrittweite)
       else
         writeln ('Die naechste Primzahl lautet ', Zahl + Schrittweite);
    end; {Zahl ist keine Primzahl}
end.

