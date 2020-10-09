program Ej2;
const
  basico = 300000;
var
  N, i, ant: byte;
  sueldo, total, promedio, max: real;
  nombre, nombreMax: string;
begin
  sueldo:= 0;
  total:= 0;
  max:= 0;
  writeln('Ingrese la cantidad de empleados'); readln(N);
  for i:= 1 to N do
  begin
    writeln('Ingrese el nombre'); readln(nombre);
    writeln('Ingrese la antiguedad'); readln(ant);
    case ant of
    0..5: sueldo:= basico + (basico*0.2);
    6..10: sueldo:= basico + (basico*0.4);
    11..15: sueldo:= basico + (basico*0.6);
    else
      sueldo:= basico + (basico*0.8);
    end;
    if max < sueldo then
    begin
       max:=sueldo;
       nombreMax:=nombre;
    end;
    total:= total + sueldo;
    writeln('El sueldo de ',nombre,' es $',sueldo:8:2,' pesos');
    readln();
  end;
  promedio:= total/N;
  writeln(nombreMax,' tiene el mayor sueldo');
  writeln('El sueldo promedio es: $',promedio:8:2,' pesos');
  readln();
end.

