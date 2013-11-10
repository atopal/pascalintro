program FeldSuche (input, output);

  const
  MAX=100;

  type
  tIndex = 1..MAX;
  tFeld = array [tIndex] of integer;

  var
    i, lang: tIndex;
    Zahlen: tFeld;
    Suche, pos: integer;

begin
  writeln ('Bitte geben Sie bis zu 100 Zahlen ein.');
  {Alle Zahlen einlesen}
  i:=1;
  lang:=1;
  repeat
    write ('Bitte ', i, '. Zahl eingeben: ');
    readln (Zahlen[i]);
    i := i+1;
    lang :=  lang+1
  until (i>MAX) OR eof;
  {Suche entgegen nehmen}
  write ('Bitte gesuchte Zahl eingeben: ');
  readln (Suche);
  {Suchen}
  pos := 0;
  for i:=1 to lang do
    if Zahlen[i] = Suche then
    pos := i;
  {Ergebnis ausgeben}
  if pos <> 0 then
    writeln (Suche, ' kommt an Stelle ', pos, ' vor.')
  else
    writeln (Suche, ' kommt in der Folge nicht vor.');
end.
