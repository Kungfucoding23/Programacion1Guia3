program Ej21;
var
  arch: text;
  num1, num2, max: integer;
  cont, subconjunto, masElementos: byte;
begin
  cont:= 0;
  subconjunto:= 0;
  max:= 0;
  assign(arch, 'datos.txt'); reset(arch);
  read(arch, num1);
  while not eof(arch) do
  begin
    read(arch, num2);
    if num2 <> 0 then
    begin
       num1:= num2;
       cont:= cont + 1;
    end
       else
           if num2 = 0 then
           begin
              subconjunto:= subconjunto + 1;
              writeln('Subconjunto: ', subconjunto - 1);
           end;
    if num2 > max then
       max:= num2;
  end;
  close(arch);
  writeln('El subconjunto con mas elementos es');
  readln();
end.
