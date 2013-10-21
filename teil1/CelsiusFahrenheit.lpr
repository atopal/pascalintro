program CelsiusFahrenheit (input, output);
  var
    fahrenheit: real;
    celsius: real;
begin
  write ('Bitte geben Sie den Fahrenheit-Wert ein: ');
  readln (fahrenheit);
  celsius:= (5.0 * (fahrenheit-32)) / 9.0;
  writeln (fahrenheit:1:1, ' Grad Fahrenheit sind ', celsius:1:1, ' Grad Celsius.');
end.
