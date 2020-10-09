program Ej9;
var
  arch: text;
  n, min: integer;
  cumple: boolean;
begin
  min:= -999999;
  writeln('Leyendo archivo...');
  assign(arch, 'conjunto.txt'); reset(arch);
  writeln('Archivo leido con exito');
  while NOT eof(arch) do
  begin
    read(arch, n); {leo los valores de arch y los guardo en 'n'}
    if n > min then
    begin
       min:= n;
       cumple:= true;
    end
       else
           cumple:= false;
  end;
  close(arch); {cierra el archivo}
  if cumple = true then
     writeln('Estan ordenados en forma ascentente')
     else
       writeln('No estan ordenados ascententemente');
  readln();
end.

