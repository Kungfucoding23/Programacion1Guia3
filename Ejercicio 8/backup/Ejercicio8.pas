Program Ejercicio8;
Var
 Arch: text;
 A, Sum, Cont : integer;
Begin
 Assign( Arch, 'Lote de prueba.TXT' ); {enlaza la variable Arch con el archivo 'Lote de prueba' necesario para la lectura}
 Reset ( Arch ); {Prepara el archivo para la lectura}
 Sum:=0;
 Cont := 0;
 While NOT eof ( Arch ) do  {Hasta que llega al fin del archivo, lee los valores, los almacena en A y luego los suma y cuenta la cantidad de numeros del archivo}
 Begin
 Readln( Arch, A ); {se leen los valores del archivo y se almacenan en 'A'}
 If A > 0 then
 begin
 Sum := Sum + A ; Cont := Cont + 1;
 End;
End;
 Close ( Arch );  {cierra el archivo}
 If Cont <> 0 then
 Writeln( (Sum / Cont):8:2 )
 Else
 Writeln ('No hay numeros positivos');
 readln();
End.

