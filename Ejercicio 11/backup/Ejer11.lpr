program Ejer11;
var
  arch: text;
  monto, sueldoFinal, inicial: real;
  cod: char;
  cont: byte;
begin
  cont:= 0;
  assign(arch, 'datos.txt');
  reset(arch);
  readln(arch, inicial);
  sueldoFinal:= inicial;
  repeat
    writeln('===============================================');
    readln(arch, cod);
    if (cod = 'D') or (cod = 'R') then
       begin
       writeln('===============================================');
       readln(arch, monto);
       end;
    case cod of
         'D': sueldoFinal:= sueldoFinal + monto;

         'R': if sueldoFinal >= monto then
                 sueldoFinal:= sueldoFinal - monto
              else
                cont:= cont + 1;
         'C': writeln('Su saldo disponible es $', sueldoFinal:8:2);
    end;
    if cod = 'D' then
       writeln('Operacion realizada exitosamente')
       else
         if (cod = 'R') and (sueldoFinal >= monto) then
            writeln('Operacion realizada exitosamente')
            else
              if (cod = 'R') and (sueldoFinal <= monto) then
                 writeln('Fondos insuficientes');
  until eof(arch);
  writeln('===============================================');
  writeln('El sueldo final es: ',sueldoFinal:8:2);
  writeln('No pudo retirar dinero por fondos insuficientes ',cont,' veces');
  readln();
end.
