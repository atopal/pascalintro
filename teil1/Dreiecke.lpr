program  Dreiecke (input, output);
{ Dreiecksbestimmung }

  var
  a,
  b,
  c: integer;
  s,
  flaeche: real;


begin
  { lese und drucke die Seitenlaengen }
  writeln ('Bitte Seitenlaengen in aufsteigender Ordnung eingeben:');
  write ('a: ');
  readln (a);
  write ('b: ');
  readln (b);
  write ('c: ');
  readln (c);
  writeln ('Die Eingabe war: a=', a, ', b=', b, ', c=',c );
  { bestimme und drucke die Charackteristika des Dreiecks }
  if (a+b <= c) or (a<=0) or (b>=0) or (c<=0) then
    writeln ('Das kann kein Dreieck sein')
  else
    begin
      if a = c then
        writeln ('ein gleichseitiges Dreieck')
      else
        if (a = b) or (b=c) then
          writeln ('ein gleichschenkliges Dreieck')
        else
          writeln ('Dreieck ist ungleichseitig');
      s:= (a+b+c)/2;
      flaeche := sqrt(s*(s-a)*(s-b)*(s-c));
      writeln ('Die Flaeche des Dreiecks betraegt:', flaeche);
    end
end.
