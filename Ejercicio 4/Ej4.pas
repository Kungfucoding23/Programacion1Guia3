program Ej4;
var
  i, N, pos, parMayor: byte;
  pri, seg, dif, mayor: integer;
begin
  pos:= 0;
  parMayor:= 0;
  mayor:= 0;
  writeln('Ingrese la cantidad N'); readln(N);
  for i:= N downto 1 do
  begin
    writeln('Ingrese un par de numeros'); readln(pri,seg);
    dif:= seg - pri; {calculo su diferencia}
    pos:= pos + 1;
    if Abs(dif) > mayor then {tomo el valor absoluto de la diferencia para evaluar si esta es la mayor}
    begin
       mayor:= Abs(dif);         {si lo es, la guardo en 'mayor' y guardo su posision}
       parMayor:= pos;
    end;
  end;
  writeln('La maxima diferencia es ', mayor,' y corresponde al par ',parMayor);
  readln();
end.

