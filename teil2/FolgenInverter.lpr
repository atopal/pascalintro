program FolgenInverter (input, output);
{Liesst fuenf zahlen in ein Feld ein und
gibt sie in umgekehrter Reihenfolge wieder aus}
  type

  tZahlenFeld = array [1..5] of integer;

  var
  zahlen: tZahlenFeld;
  i: integer;
begin
  writeln ('Bitte fuenf Zahlen eingeben: ');
  for i:=1 to 5 do
  begin
    write ('Zahl ', i, ': ');
    readln(zahlen[i])
  end;
  writeln ('Und nun die Ausgabe in umgekehrter Reihenfolge');
  for i:=5 downto 1 do
    writeln ('Zahl ', i, ': ', zahlen[i])
end.
