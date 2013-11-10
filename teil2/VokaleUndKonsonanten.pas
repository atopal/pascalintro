program VokaleUndKonsonanten (input, output);

  type
  tBstaben = 'a'..'z';
  tKleinBstabenFeld = array [tBstaben] of integer;

  var
  KleinBstaben : tKleinBstabenFeld;
  AnzahlAlle : integer;
  AnzahlVokale : integer;
  AnzahlKons: integer;
  Buchstabe: char;

begin
  {Variablen initialisieren}
  for Buchstabe:='a' to 'z' do
    KleinBstaben[Buchstabe]:=0;
  AnzahlAlle:=0;
  AnzahlVokale:=0;

  {Text einlesen}
  writeln ('Bitte Text eingeben: ');
  repeat
   read (Buchstabe);
   if (Buchstabe >='a') AND (Buchstabe<='z') then
    KleinBstaben[Buchstabe] := KleinBstaben[Buchstabe]+1;
  until (Buchstabe = '.');

  {Alle Buchstaben zusammenzaehlen}
  for Buchstabe:='a' to 'z' do
    begin
      AnzahlAlle := AnzahlAlle + KleinBstaben[Buchstabe];
      if ((Buchstabe = 'a') OR (Buchstabe = 'e') OR (Buchstabe = 'i')
      OR (Buchstabe = 'o') OR (Buchstabe = 'u')) then
      AnzahlVokale := AnzahlVokale+KleinBstaben[Buchstabe];
    end;
  writeln ('Vokale: ' , AnzahlVokale );
  {Vokale von Buchstaben abziehen}
  AnzahlKons := AnzahlAlle - AnzahlVokale;

  {Ergebnis ausgeben}
  Writeln ('Der Text hat ', AnzahlAlle, ' kleine Buchstaben. Davon ',
  AnzahlKons, ' Konsonanten und ', AnzahlVokale, ' Vokale.');
end.
