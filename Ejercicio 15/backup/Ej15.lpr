program Ej15;
var
  arch: text;
  car1, car2, letra: char;
  contLetra, contPal: word;
begin
  {Inciso a)}
  assign(arch, 'datos.txt'); reset(arch);
  writeln('Ingrese letra de comienzo'); readln(letra);
  contLetra:= 0;
  {car1:= ' '; pone en blanco el primer caracter para detectar la 1er palabra}
  read(arch, car1);
  while car1 <> '.' do
  begin
    read(arch, car2);
    if (car1 = ' ') and (car2 = letra)then {EVALUA COMIENZO DE PALABRA}
      contLetra:= contLetra + 1;
    car1:= car2;
  end;
  close(arch);
  writeln('La cantidad de palabras que comienzan con la letra ', letra, ' es: ',contLetra);
  {Lee la cantidad de palabras}
  assign(arch, 'datos.txt'); reset(arch);
  contLetra:= 0;
  car1:= ' ';
  while car1 <> '.' do
  begin
    read(arch, car2);
    if (car1 = ' ') and ((car2 <> ' ') or (car2 <> '.')) then
      contLetra:= contLetra + 1;
    car1:= car2;
  end;
  close(arch);
  writeln('Hay ', contLetra - 1,' palabras');
  {Inciso b)}
  assign(arch, 'datos.txt'); reset(arch);
  contLetra:= 0;
  contPal:= 0;
  read(arch, car1);
  while car1 <> '.' do
  begin
    read(arch, car2);
    if (car2 = letra) and ((car1 <> ' ') or (car1 <> '.')) then
      contLetra:= contLetra + 1;
    if (contLetra >= 1) and (car1 = ' ') then
    begin
      contPal:= contPal + 1;
      contLetra:= 0;
    end;
    car1:= car2;
  end;
  close(arch);
  writeln('La cantidad de palabras que contienen la letra ', letra, ' es: ',contPal);
  readln();
end.

