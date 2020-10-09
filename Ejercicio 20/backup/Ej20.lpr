program Ej20;
var
  arch: text;
  num1, num2: integer;
  suma, cont: real;
begin
  suma:= 0;
  cont:= 0;
  assign(arch, 'datos.txt'); reset(arch);
  read(arch, num1);
  while not eof(arch) do
  begin
    read(arch, num2);
    if num2 <> 0 then
    begin
       num1:= num2;
       {write(num1, ', ');}
    end;
    if (num1 < 0) then
    begin
       writeln((suma/cont):2:2, ' ');
       suma:= 0;
       cont:= 0;
    end
       else
           if (num1 > 0) and (num2 > 0) then
           begin
              suma:= suma + num1;
              cont:= cont + 1;
           end;

  end;
  close(arch);
  readln();
end.
