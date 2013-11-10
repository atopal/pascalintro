program testing2 (input, output);

const
  GROESSE = 5;

  type
  tIndex = 1..GROESSE;
  tMatrix = array [tIndex,tIndex] of integer;

  var
  A : tMatrix;
  hilf,
  i,
  j : integer;

begin

{ Lesen der Matrixwerte in A:
  writeln ('Bitte eine 3x4 Matrix an integeter eingeben');
  for i := 1 to GROESSE do
    for j := 1 to GROESSE do
    begin
      write ('Zahl eingeben [', i, '][', j, ']: ');
      readln (A[i,j]);
    end; }

    A[1,1] := 15;
    A[1,2] := 8;
    A[1,3] := 1;
    A[1,4] := 24;
    A[1,5] := 17;
    A[2,1] := 16;
    A[2,2] := 14;
    A[2,3] := 7;
    A[2,4] := 5;
    A[2,5] := 23;
    A[3,1] := 22;
    A[3,2] := 20;
    A[3,3] := 13;
    A[3,4] := 6;
    A[3,5] := 4;
    A[4,1] := 3;
    A[4,2] := 21;
    A[4,3] := 19;
    A[4,4] := 12;
    A[4,5] := 10;
    A[5,1] := 9;
    A[5,2] := 2;
    A[5,3] := 25;
    A[5,4] := 18;
    A[5,5] := 11;


    begin
      for i := GROESSE-1 downto 1 do
      begin
        j := i+1;
        while j <= GROESSE do
        begin
          hilf := A[i,j];
          A[i,j] := A[j,i];
          A[j,i] := hilf;
          j := j+2
        end;
        j := i+2;
        while j <= GROESSE do
        begin
          hilf := A[i,j];
          A[i,j] := A[j,i];
          A[j,i] := hilf;
          j := j+2
        end
      end
    end;

  {Ausgabe Matrix und Zeilensumme}
  for i := 1 to GROESSE do
    begin
      for j := 1 to GROESSE do
        write (A[i,j]:2, ' ');
      writeln;
    end
end.
