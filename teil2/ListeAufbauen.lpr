program Liste1 (input, output);

  type
  tRefListe = ^tListe;
  tListe = record
             info : integer;
             next : tRefListe;
           end;

  var
  Zeiger : tRefListe;

  procedure ListeAufbauen (var outRefAnfang : tRefListe);
    var
    Zeiger : tRefListe;
    Zahl : integer;

  begin
    outRefAnfang := nil;
    writeln ('Bitte Zahlen eingeben und mit 0 abschliessen.');
    readln (Zahl);
    while Zahl <> 0 do
    begin
      new (Zeiger);
      Zeiger^.info := Zahl;
      Zeiger^.next := outRefAnfang;
      outRefAnfang := Zeiger;
      readln (Zahl);
    end;
  end; {ListeAufbauen}

  procedure ListeDurchlaufen (inRefAnfang : tRefListe);
  { gibt die Werte der Listenelemente aus }
    var
    Zeiger : tRefListe;

  begin
    Zeiger := inRefAnfang;
    while Zeiger <> nil do
    begin
      writeln (Zeiger^.info);
      Zeiger := Zeiger^.next;
    end;
  end; { ListeDurchlaufen }

  function ListenElemSuchen1 (inRefAnfang : tRefListe;
                              inZahl: integer) : tRefListe;
  { Das erste Listenelement bestimmen, das inZahl entspricht}

    var
    Zeiger : tRefListe;

  begin
    Zeiger := inRefAnfang;
    ListenElemSuchen1 := nil;
    while Zeiger <> nil do
      if (Zeiger^.info) = inZahl then
      begin
          ListenElemSuchen1 := Zeiger;
          Zeiger := nil;
      end
      else
        Zeiger := Zeiger^.next;
  end; { ListenElemSuchen1 }

  procedure SortiertEinfuegen;
  begin
  end; { SortiertEinfuegen }

begin
  new (Zeiger);
  ListeAufbauen(Zeiger);
  ListeDurchlaufen(Zeiger);
  Zeiger := ListenElemSuchen1(Zeiger, 15);
  if Zeiger <> nil then
    writeln ('Gefunden: ', Zeiger^.info)
  else
    writeln ('Nicht gefunden');
  SortiertEinfuegen();
end. { Liste1 }
