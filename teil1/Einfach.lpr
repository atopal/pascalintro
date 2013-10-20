program Einfach (output);
{Programmbeispiel fuer eine Textkonstante}
  const
    GRUSS = 'Guten Tag! ';
    N = 15;
    L= '-----------------------------';

  var
    name: char;
    i: integer;
    x,
    y: real;
    c: char;

  begin
    readln (name);
    writeln (name);
    writeln (GRUSS, name, ' Viel Spass');

    i := 7;
    x := -2.7;
    y := 8.1;
    c := '$';
    write (1);  {1}
    write ('.'); {.}
    write ('i*n=');{i*n=}
    write (i:2); { 7}
    write (c:3);  {  $}
    write (N:3);  { 15}
    write ('=':3); {=  }
    write (i*N:3);  {315}
    write ('2.':3);
    write ('x*y=');
    write (x:6:2);
    write (c:3);
    write (y:8:2);
    write ('=':3);
    writeln (x*y:7:1);
    write (L,L);
    {1.i*n= 7  $ 15  =105 2.x*y= -2.70  $    8.10  =  -21.9
     1.i*n= 7  $ 15  =105 2.x*y= -2.70  $    8.10  =  -21.9
    ----------------------------------------------------------}
  end.

