program FeldSort4 (input, output);
{Ein Feld von integers der abesteigend sortieren}

  const
  FELDMAXREAL = 100;

  type
  tNatPlus = 1..FELDMAXREAL;
  tFeld = array [tNatPlus] of integer;

  var
  i,
  FeldMax : tNatPlus;
  Feld : tFeld;

  procedure FeldSortieren ( MaxGroesse: tNatPlus;
                            var ioFeld: tFeld);

    var
    ix,
    TempMinIndex: tNatPlus;

  procedure vertauschen (var iohin : integer;
                    var ioher : integer);

    var
    TempMin : integer;

  begin
    TempMin := iohin;
    iohin := ioher;
    ioher := TempMin;
  end; {vertauschen}

  function min (var inFeld: tFeld;
                inUnten, inOben: tNatPlus) : tNatPlus;
  {Nimmt zwei Positionen entgegen, findet minimum und vertauscht es mit erster
  Position}
    var
    k,
    Minimum : tNatPlus;

  begin
   Minimum := inUnten;
   for k := inUnten + 1 to inOben do
     if inFeld[k] < inFeld[Minimum] then
       Minimum := k;
   min := Minimum;
  end; {min}

  begin
   for ix := 1 to MaxGroesse-1 do
   begin
     TempMinIndex := min(ioFeld, ix, MaxGroesse);
     vertauschen(ioFeld[TempMinIndex], ioFeld[ix]);
   end;
  end; {FeldSortieren}



begin

  {Einlesen des Feldes}
  write ('Groesse des Feldes: ');
  read (FeldMax);
  writeln ('Bitte geben Sie ', FeldMax, ' Zahlen ein.');
  for i := 1 to Feldmax do
  begin
    write (i, ' von ', FeldMax, ': ');
    readln (Feld[i]);
  end;

  FeldSortieren(FeldMax, Feld);

  {Feldausgabe}
  for i := 1 to FeldMax do
    write (Feld[i], ', ');
end. {FeldSort4}
