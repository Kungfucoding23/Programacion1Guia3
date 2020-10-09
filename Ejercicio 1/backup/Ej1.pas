program Ej1;
var
  i, N, cont, pri: byte;
  num, max, impar: integer;
  cumple: boolean; {variable booleana para analizar si ya existe un numero mayor}
begin
  cont:= 0;
  pri:= 0;
  max:= -99999;
  impar:= 0;
  writeln('Ingrese la cantidad N'); readln(N);
  for i:=1 to N do
  begin
    writeln('Ingrese un numero'); readln(num);
    if num > max then
       begin
       max:= num;  {Si el numero es mayor a -99999 sobreescribe el valor de max por num}
       pri:= pri + 1; {Cuento la posicion del primer numero mayor}
       cumple:= true;
       end
    else
        if (cumple = true) and (num < max) then {si ya existe un numero mayor y ingreso uno menor cuento la posision}
           pri:= pri + 1
           else
             if (cumple = true) and (num > max) then {si ya existe un numero mayor pero ingreso uno mayor a el, ya no se cumple la condicion anterior}
                cumple:= false
             else
               if num = max then
                  cont:= cont + 1;
    if (num mod 2 = 1) and (impar = 0)then
       impar:= num
       else
         if (num mod 2 = 1) and (num > impar) then
            impar:= impar
            else
              if (num mod 2 = 1) and (num < impar) then
                 impar:= num;
  end;
  writeln('El numero maximo es: ', max, ' ocupa el lugar ', pri, ' y tiene ',cont + 1,' ocurrencias');
  writeln('El menor numero impar es: ', impar);
  readln();
end.
