program Ej10;
var
  arch: text;
  num1, num2: integer;
  frec: byte;
begin
  frec:= 1;
  writeln('Leyendo archivo...');
  writeln('=========================');
  assign(arch, 'datos.txt'); reset(arch);
  read(arch, num1);
  while not eof(arch) do
  begin
    read(arch, num2);
    if num1 = num2 then
       frec:= frec + 1
       else
         if num1 <> num2 then
            begin
              writeln('');
              writeln('Numero:   ;   Frecuencia:');
              writeln('');
              writeln('    ',num1, '                 ',frec);
              frec:= 1;
              num1:= num2;
            end;
  end;
  {writeln('');
  writeln('Numero:   ;   Frecuencia:');
  writeln('');
  writeln('    ',num1, '                 ',frec);}
  close(arch);
  readln();
end.

