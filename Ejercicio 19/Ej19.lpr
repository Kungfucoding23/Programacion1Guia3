program Ej19;
var
  arch: text;
  num1, num2, numNeg, max: integer;
begin
  max:= 0;
  numNeg:= 0;
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
       numNeg:= 1;
       writeln(max, ' ');
       max:= 0;
    end
       else
           if (num2 > max) and (numNeg = 1) then
              max:= num2;
  end;
  close(arch);
  readln();
end.

