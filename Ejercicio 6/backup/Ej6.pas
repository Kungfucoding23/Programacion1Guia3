program Ej6;
var
  saldoInicial, monto, sueldoFinal: real;
  cod: char;
  cont: byte;
begin
  cont:= 0;
  sueldoFinal:= 0;
  writeln('Ingrese su saldo inicial'); readln(saldoInicial);
  sueldoFinal:= sueldoFinal + saldoInicial;
  repeat
    writeln('===============================================');
    writeln('Ingrese el codigo de la operacion que desea realizar:');
    writeln('D: Deposito');
    writeln('R: Retiro');
    writeln('C: Consulta de saldo');
    writeln('F: Fin de datos');
    readln(cod);
    cod:= Upcase(cod);
    if (cod = 'D') or (cod = 'R') then
       begin
       writeln('===============================================');
       writeln('Ingrese el monto con el que desea operar');
       readln(monto);
       end;
    case cod of
         'D': sueldoFinal:= sueldoFinal + monto;

         'R': if saldoInicial >= monto then
                 sueldoFinal:= sueldoFinal - monto
              else
                cont:= cont + 1;
         'C': writeln('Su saldo disponible es $', sueldoFinal:8:2);

         'F': writeln('Finalizando...');
         else
           writeln('Codigo inexistente');
    end;
    if cod = 'D' then
       writeln('Operacion realizada exitosamente')
       else
         if (cod = 'R') and (saldoInicial >= monto) then
            writeln('Operacion realizada exitosamente')
            else
              if (cod = 'R') and (saldoInicial >= monto) then
                 writeln('Fondos insuficientes');
  until cod = 'F';
  writeln('===============================================');
  writeln('El sueldo final es: ',sueldoFinal:8:2);
  writeln('No pudo retirar dinero por fondos insuficientes ',cont,' veces');
  readln();
end.

