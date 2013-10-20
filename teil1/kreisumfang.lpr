program kreisumfang;
{ berechnet den Kreisumfang bei gegebenen Radius}

  const
    PI = 3.141592654;

  var
    Radius,
    Umfang: real;

  begin
    writeln ('Berechnung des Kreisumfangs.');
    write ('Geben Sie den Radius an: ');
    readln (Radius);
    Umfang:= 2.0 * PI * Radius;
    writeln ('Der Umfang betraegt: ', Umfang);
  end.
