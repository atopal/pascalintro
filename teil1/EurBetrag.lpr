program EurBetrag (input, output);
 {Euro Betrag ausgeben}
 const
   WAEHRUNG = 'EUR';

 var
   Betrag : real;

 begin
   write ('Bitte ', WAEHRUNG, '-Betrag (< 1 Mio.) ');
   write ('angeben: ');
   readln (Betrag);
   if Betrag >= 0.0 then
   writeln (Betrag:9:2, WAEHRUNG)
   end. { EURBetrag2 }


