program Verkauf2 (input, output);
{ Rabattgewaehrung: zweite Version }

const
  GRUNDPREIS = 200.00 {EUR};

var
  Anzahl : integer;
  Preis : real;

begin
  writeln ('Bitte die Anzahl der bestellten Waren ',
          'eingeben:');
  readln (Anzahl);
  if Anzahl <= 0 then
    writeln ('Falsche Eingabe')
  else
  { es liegt eine Bestellung vor }
  begin
    Preis := Anzahl * GRUNDPREIS;
    if Anzahl >= 10 then
      { ein Rabatt wird erteilt }
      if Anzahl >= 50 then
        { grosser Rabatt kann gewaehrt werden }
        Preis := Preis * 0.8
      else
        { kleiner Rabatt kann gewaehrt weden }
        Preis := Preis * 0.9;
    writeln ('Der Preis betraegt ', Preis:3:2, 'EUR')
  end
end. { Verkauf1 }
