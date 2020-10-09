program Ej14;
var
  sum, x: word;
begin
  sum:= 0;
  writeln('Ingrese x'); readln(x);
  while (x <> 0) and (sum <= 100) do
  begin
    sum:= sum + x;
    writeln('Ingrese x'); readln(x);
  end;
  writeln('El resultado es: ', sum);
end.

