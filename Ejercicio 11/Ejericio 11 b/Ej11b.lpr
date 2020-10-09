program Ej11b;
var
  arch: text;
  nota1, nota2, nota3, A, E: byte;
  promedio, porc, mayorPromedio: real;
  nombreMayor: string;
  nombre: string[15];
begin
  assign(arch, 'datos.txt');
  reset(arch);
  A:= 0;
  E:= 0;
  porc:= 0;
  mayorPromedio:= 0;
  repeat
    promedio:= 0;
    {read(arch,car);
    while car = '' do avanza ignorando espacios hasta encontrar apellido
    begin
      read(arch, car);
      nombre:= '';
    end;
    while car <> '' do copia el nombre en nombre
    begin
      nombre:= nombre + car; read(arch, car);
      E:= E + 1;
    end;}
    readln(arch,nombre);
    E:= E + 1;
    {a) para cada alumno saco su promedio y evaluo su condicion}
    readln(arch,nota1,nota2,nota3);
    promedio:= (nota1 + nota2 + nota3)/3;
    if promedio > mayorPromedio then
    begin
         mayorPromedio:= promedio;
         nombreMayor:= nombre;
    end;
    if (promedio >= 4) then
    begin
         writeln('APROBADO');
         A:= A + 1;
    end
       else
           writeln('DESAPROBADO');
    writeln('Su promedio es: ',promedio:2:2);
    writeln('=================================================');
  until eof(arch);
  close(arch);
  {b) porcentaje de alumnos que aprobaron}
  porc:= porc + ((A * 100)/E);
  writeln('Aprobaron un %',porc:3:2);
  writeln('=================================================');
  writeln('El alumno con mayor promedio es ', nombreMayor);
  readln();
end.
