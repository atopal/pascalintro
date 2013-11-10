program Median (input, output);

  type
  tBstaben = 'a'..'z';
  tKleinBstabenFeld = array [tBstaben] of boolean;

  var
  KleinBstaben : tKleinBstabenFeld;
  AnzahlAlle, Medianzahl, i : integer;
  Buchstabe, MedianBuchstabe: char;

begin
  {Variablen initialisieren}
  for Buchstabe:='a' to 'z' do
    KleinBstaben[Buchstabe]:=false;
  AnzahlAlle:=0;

  {Text einlesen}
  writeln ('Bitte Buchstaben eingeben: ');
  read (Buchstabe);
  while (Buchstabe >= 'a') AND (Buchstabe <= 'z') do
  begin
   if KleinBstaben[Buchstabe] = false then
   begin
     KleinBstaben[Buchstabe] := true;
     AnzahlAlle:=AnzahlAlle+1;
   end;
   read (Buchstabe);
  end;
  Medianzahl:= (AnzahlAlle+1) DIV 2;
  writeln ('Medianzahl: ', Medianzahl);
  i:=1;
  {Alle Buchstaben zusammenzaehlen}
  for Buchstabe:='a' to 'z' do
    begin
      if KleinBstaben[Buchstabe] then
      begin
        write (Buchstabe, ', ');
        if i=Medianzahl then
          MedianBuchstabe:=Buchstabe;
      i:=i+1;
      end;
    end;
  {Ergebnis ausgeben}
  writeln ('Der Median lautet: ', MedianBuchstabe);
end.
