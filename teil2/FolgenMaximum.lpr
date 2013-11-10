program  FolgenMaximum (input, output);

  const
  MAXFELD = 5;

  type
  tIndex = 1..MAXFELD;
  tZahlenFeld = array [tIndex] of integer;

  var
  Zahlen: tZahlenFeld;
  groesste: integer;
  i: tIndex;

begin
  for i:=1 to MAXFELD do
  begin
    write ('Bitte ', i, '. Zahl eingeben: ');
    readln (Zahlen[i]);
  end;
  groesste:= Zahlen[i];
  for i:=1 to MAXFELD do
    if Zahlen[i] > groesste then
      groesste := Zahlen[i];
  writeln ('Groesste Zahl ist ', groesste);
end.
