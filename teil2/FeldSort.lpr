program FeldSort (input, output);
{Ein Feld von integers der abesteigend sortieren}

  const
  FELDMAX = 10;

  type
  tNatPlus = 1..FELDMAX;
  tFeld = array [tNatPlus] of integer;

  var
  i,
  TempMinIndex : tNatPlus;
  Feld : tFeld;
  TempMin : integer;

  function min (unten, oben: tNatPlus) : tNatPlus;
  {Nimmt zwei Positionen entgegen, findet minimum und vertauscht es mit erster
  Position}
    var
    k,
    Minimum : tNatPlus;

  begin
   Minimum := unten;
   for k := unten + 1 to oben do
     if Feld[k] < Feld[Minimum] then
       Minimum := k;
   min := Minimum;
  end;

begin

  {Einlesen des Feldes}
  writeln ('Bitte geben Sie ', FELDMAX, ' Zahlen ein.');
  for i := 1 to FELDMAX do
  begin
    write (i, ' von ', FELDMAX, ': ');
    readln (Feld[i]);
  end;

  for i := 1 to FELDMAX-1 do
  begin
    TempMinIndex := min(i, FELDMAX);
    TempMin := Feld[TempMinIndex];
    Feld[TempMinIndex] := Feld[i];
    Feld[i] := TempMin;
  end;

  {Feldausgabe}
  for i := 1 to FELDMAX do
    write (Feld[i], ', ');
end.
