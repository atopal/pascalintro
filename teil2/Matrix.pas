program Matrix (input, output);
{3x4 integer Matrix einlesen, ausgeben und Zeilen- und Spalten-Summe ausgeben }

  const
  ZEILEMAX = 3;
  SPALTEMAX = 4;

  type
  tZeile = 1..ZEILEMAX;
  tSpalte = 1..SPALTEMAX;
  tAVector = array [tZeile, tSpalte] of integer;
  tBVector = array [tZeile] of integer;
  tCVector = array [tSpalte] of integer;

   var
   z : tZeile;
   s : tSpalte;
   A : tAVector;
   B : tBVector;
   C : tCVector;

begin
  {Einlesen}
  writeln ('Bitte eine 3x4 Matrix an integeter eingeben');
  for z := 1 to ZEILEMAX do
  begin
    B[z]:=0;
    for s := 1 to SPALTEMAX do
    begin
      write ('Zahl eingeben [', z, '][', s, ']: ');
      readln (A[z,s]);
      B[z] := B[z] + A[z,s];
    end;
  end;

  {Spaltensumme}
  for s := 1 to SPALTEMAX do
  begin
    C[s]:=0;
    for z := 1 to ZEILEMAX do
      C[s]  := C[s] + A[z,s];
  end;

  {Ausgabe Matrix und Zeilensumme}
  for z := 1 to ZEILEMAX do
  begin
    for s := 1 to SPALTEMAX do
    begin
      write (A[z,s], ' ');
    end;
    writeln (' : ', B[z]);
  end;

  {Ausgabe Spaltensumme}
  for s := 1 to SPALTEMAX do
    write ('--');
  writeln;
  for s := 1 to SPALTEMAX do
    write (C[s], ' ');
  writeln;
end.

