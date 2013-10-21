program EurMuenzen (input, output);

  var
  Betrag,
  Rest,
  Einer,
  Zweier,
  Fuenfer,
  Zehner,
  Zwanziger,
  Fuenfziger: integer;

begin
  { Euro Betrag zwischen 1 und 99 einlesen }
  readln (Betrag);
  if (Betrag<1) or (Betrag>99) then
    writeln ('Der Betrag muss zwischen 1 und 99 cent liegen')
  else
  begin
    {Ergebnis berechnen}
    Fuenfziger:= Betrag div 50;
    Rest:= Betrag mod 50;
    Zwanziger:= Rest div 20;
    Rest:= Rest mod 20;
    Zehner:= Rest div 10;
    Rest:= Rest mod 10;
    Fuenfer:= Rest div 5;
    Rest:= Rest mod 5;
    Zweier:= Rest div 2;
    Rest:= Rest mod 2;
    Einer:= Rest;
    writeln (Fuenfziger,' ', Zwanziger,' ', Zehner, ' ', Fuenfer, ' ', Zweier,' ', Einer);
  end
end.
