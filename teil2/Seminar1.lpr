program Seminar1 (input, output);
  const
  MAX = 100;

  type
  tFeldZaehler = 1..MAX;
  tStatus = (aktiv, passiv);
  tMatrikelNummer = 1..maxint;
  tGebDatum = record
                Jahr : 1900..2100;
                Monat : 1..12;
                Tag : 1..31;
              end;
  tAdresse = record
                Stadt : String [100];
                Plz : String [5];
                Strasse : String [100];
             end;
  tName = record
            Vorname,
            Nachname : String [100];
          end;
  tStudent = record
               MatrikelNummer : tMatrikelNummer;
               Name : tName;
               Status : tStatus;
               GebDatum : tGebDatum;
               Adresse : tAdresse;
             end;
  tStudFeld = array [tFeldZaehler] of tStudent;

  var
  i, laenge : tFeldZaehler;
  Student : tStudFeld;
  StatusEingabe: char;
begin
  {Anzahl der Teilnehmer einlesen}
  repeat
  writeln ('Wie viele Studenten haben teilngenommen? (100 max): ');
  readln (laenge);
  until (laenge >=1) AND (laenge<MAX);
  {Matrikelnummer und Aktivitaet einlesen}
  for i:=1 to laenge do
  begin
    write ('Vorname: ');
    readln (Student[i].Name.Vorname);
    write ('Nachname: ');
    readln (Student[i].Name.Nachname);
    write ('Matrikelnummer: ');
    readln (Student[i].Matrikelnummer);
    repeat
      write ('Status (p=passiv, a=aktiv): ');
      readln (StatusEingabe);
      if StatusEingabe = 'a' then
        Student[i].Status:= aktiv;
      if StatusEingabe = 'p' then
        Student[i].Status := passiv;
    until (StatusEingabe = 'a') OR (StatusEingabe = 'p');
  end;
  writeln ('----------------------');
  writeln;
  {Erfolgreiche Teilnehmer ausdrucken}
  writeln ('Erfolgreiche Teilnehmer:');
  for i:=1 to laenge do
    if Student[i].Status = aktiv then
      begin
        write (Student[i].Name.Vorname);
        write (' ');
        writeln (Student[i].Name.Nachname);
        writeln (Student[i].Matrikelnummer);
      end;
  writeln ('----------------------');
  writeln;
  {Liste der aktiven Teilnehmer}
  writeln ('Liste der aktiven Teilnehmer:');
  for i:=1 to laenge do
    if Student[i].Status = aktiv then
      begin
        write (Student[i].Name.Vorname);
        write (' ');
        writeln (Student[i].Name.Nachname);
        writeln (Student[i].Matrikelnummer);
      end;
  writeln ('----------------------');
  writeln;
  {Liste der passiven Teilnehmer}
  writeln ('Liste der passiven Teilnehmer:');
  for i:=1 to laenge do
    if Student[i].Status = passiv then
      begin
        write (Student[i].Name.Vorname);
        write (' ');
        writeln (Student[i].Name.Nachname);
        writeln (Student[i].Matrikelnummer);
      end;
end.

