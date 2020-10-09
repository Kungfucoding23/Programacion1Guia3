program Ej12;
var
  T: text;
  cad1: string[8];
  cad2, cad3: string[3];
  a, b: word;
  x: real;
  c: char;
  u: char;
begin
  assign(T, 'datos.txt'); reset(T);
  {1}{readln(T, cad2, c, x); readln(T, a); read(T, cad1);}
  {2}{readln(T, cad3, cad2, x,a); readln(T, x); readln(T);}
  {3}readln(T, cad1, cad3, c, b); read(T, c, cad2); read(T);
  {4}{readln(T); readln(T, cad1); readln(T, x);}

       writeln('cad1: ',cad1);
       writeln('cad2: ',cad2);
       writeln('cad3: ',cad3);
       writeln('a: ',a);
       writeln('b: ',b);
       writeln('x: ',x:2:2);
       writeln('c: ',c);
  close(T);
  readln();

end.
