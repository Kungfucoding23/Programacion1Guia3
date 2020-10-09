program Ej16;
var
  i, N, masViajes, viajes: byte;
  litros, consumo, km, menosKm, kmTotal, menosLitros: real;
  patente, patMas, patMenos: string;
begin
  masViajes:= 0;
  menosLitros:= 0;
  menosKm:= 999999;
  writeln('Ingrese la cantidad de vehiculos'); readln(N);
  for i:= 1 to N do
  begin
    writeln('Ingrese la patente del vehiculo ', i); readln(patente);
    viajes:= 0;
    kmTotal:= 0;
    consumo:= 0;
    repeat
    viajes:= viajes + 1;
    writeln('Viaje ', viajes,' del auto ',patente);
    writeln('Ingrese los litros consumidos de combustible'); readln(litros);
    consumo:= consumo + litros;
    writeln('Ingrese los km recorridos'); readln(km);
    kmTotal:= kmTotal + km;
    writeln('=========================================');
    until km = 0;
    if viajes > masViajes then
    begin
         masViajes:= viajes;
         patMas:= patente;
    end;
    if kmTotal < menosKm then
    begin
         menosKm:= kmTotal;
         menosLitros:= consumo;
         patMenos:= patente;
    end;
    writeln('El vehiculo de patente ',patente,' ha consumido ', (consumo/kmTotal):8:2,' litros por km recorrido');
    writeln('=========================================');
  end;
  writeln('La patente del vehiculo que mas viajes hizo es: ', patMas);
  writeln('El auto que hizo la menor cantidad de km (',menosKm:4:2,') consumio ',menosLitros:4:2,' litros de combustible');
  readln();
end.

