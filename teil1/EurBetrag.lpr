program EurBetrag (input, output);
 {Euro Betrag ausgeben mit Prüfung und Fehlermeldung}
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
   else
     begin
       write ('Eingabefehler! Betrag ', Betrag);
       writeln ('ist negativ');
     end
   end. { EURBetrag2 }


