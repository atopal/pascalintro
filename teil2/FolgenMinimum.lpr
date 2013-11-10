program  FolgenMinimum (input, output);

  const
  MAXFELD = 20;

  type
  tIndex = 1..MAXFELD;
  tZahlenFeld = array [tIndex] of integer;

  var
  Zahlen: tZahlenFeld;
  kleinste: integer;
  i, k: tIndex;

begin
  for i:=1 to MAXFELD do
  begin
    write ('Bitte ', i, '. Zahl eingeben: ');
    readln (Zahlen[i]);
  end;
  kleinste:= Zahlen[i];
  k:=1;
  for i:=1 to MAXFELD do
    if Zahlen[i] < kleinste then
      begin
        kleinste := Zahlen[i];
        k:=i;
      end;
  writeln ('Kleinste Zahl ist ', kleinste, ' an der ', k, '. Stelle.');
end.
