program Ej3;
var
  i, N, num, numAnt: byte;
begin
  writeln('Ingrese la cantidad N'); readln(N);
  writeln('Ingrese un numero'); readln(num);
  numAnt:= num;
  for i:= 2 to N do
  begin
     writeln('Ingrese un numero'); readln(num);
     if num > numAnt then
        begin
          writeln('El numero ', num, ' supera a ', numAnt,': ', num - numAnt, ' veces');
          numAnt:= num;
        end
     else
         if num >= numAnt then
            writeln('El numero ',num,' no supera a ',numAnt);
  end;
  readln();
end.

