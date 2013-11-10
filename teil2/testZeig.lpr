program testZeig (input, output);

  type
  tDatum = array [1..3] of integer;
  tPerson = record
              name : string[10];
              GebDatum : tDatum;
              Gehalt : real;
            end;

  var
  Zeig1: ^tPerson;
  Zeig2: ^tPerson;

begin
  Zeig1 := nil;
  new (Zeig1);
  Zeig1^.name := 'Kadir';
  Zeig1^.Gehalt := 60000.45;
  new (Zeig2);
  Zeig2^ := Zeig1^;
  writeln (Zeig2^.Name);
  writeln (Zeig2^.Gehalt:6:2);
end.
