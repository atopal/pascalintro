program Quadratzahl (input, output);
{Gibt die Quadratzahlen von 10 Werten an}

  const
  MAXINDEX=10;

  type
  tIndex =1..MAXINDEX;

  var
  i: tIndex;

begin
  for i:=1 to MAXINDEX do
  writeln (i:2, ' * ', i:2, ' = ', sqr(i):3);
end. {Quadratzahl}
