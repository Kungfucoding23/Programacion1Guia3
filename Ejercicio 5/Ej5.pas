program Ej5;
var
  k, q: integer;
  i: byte;
begin
{Multiplos de K menores que Q}
  writeln('Ingrese el valor de K y el valor de Q');readln(k,q);
  for i:=1 to q - 1 do
  begin
    if i mod k = 0 then
       writeln(i,' es multiplo de ',k,', menor que ',q);
  end;
  readln();
end.

