program Ej7;
var
  nota1, nota2, nota3, A, E: byte;
  promedio, porc, mayorPromedio: real;
  nombre, fin, nombreMayor: string;
begin
  A:= 0;
  E:= 0;
  porc:= 0;
  mayorPromedio:= 0;
  repeat
    promedio:= 0;
    writeln('Ingrese el nombre del estudiante');
    readln(); {tuve que poner este read vacio aca xq sino no me permitia ingresar el nombre al repetir el programa}
    readln(nombre);
    E:= E + 1;
    writeln('Ingrese sus 3 notas'); readln(nota1,nota2,nota3);
    {a) para cada alumno saco su promedio y evaluo su condicion}
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
    writeln('Si no hay mas estudiantes ingrese *** para finalizar'); read(fin);
    writeln('=================================================');
  until fin = '***';
  readln();
  {b) porcentaje de alumnos que aprobaron}
  porc:= porc + ((A * 100)/E);
  writeln('Aprobaron un %',porc:3:2);
  writeln('=================================================');
  writeln('El alumno con mayor promedio es ', nombreMayor);
  readln();
end.

