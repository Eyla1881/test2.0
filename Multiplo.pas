{program par_y_multiplo_de_3;

var
  num: integer;

begin
  writeln('Ingrese un numero entero: ');
  readln(num);
  
  if (num mod 2 = 0) and (num mod 3 = 0) then
  begin
    writeln('El numero ingresado es par y multiplo de 3.');
  end
  else if (num mod 2 = 0) then
  begin
    writeln('El numero ingresado es par');
  end
  else
  begin
    writeln('El numero ingresado no es par y/o no es multiplo de 3.');
  end;
  
  readln;
end.
}
{
program Adivinanza;

var
  numero, intento, contador: integer;

begin
  Randomize; // Inicializa el generador de números aleatorios
  numero := Random(100) + 1; // Genera un número aleatorio entre 1 y 100
  contador := 0;

  writeln('Adivina el número secreto (entre 1 y 100):');

  repeat
    readln(intento);
    contador := contador + 1;

    if intento < numero then
    begin
      writeln('El número secreto es mayor.');
    end
    else if intento > numero then
    begin
      writeln('El número secreto es menor.');
    end;

  until intento = numero;

  writeln('¡Felicitaciones! Adivinaste el número en ', contador, ' intentos.');
  readln;
end.}
{program VerificacionContrasena;

var
  i: integer;
  contrasena: string;
  tieneLetra, tieneNumero, tieneLongitud: boolean;

begin
  writeln('Ingrese una contraseña:');
  readln(contrasena);

  // Verificar si la contraseña tiene al menos una letra
  tieneLetra := False;
  for i := 1 to length(contrasena) do
  begin
    if (contrasena[i] in ['a'..'z', 'A'..'Z']) then
    begin
      tieneLetra := True;
      Break;
    end;
  end;

  // Verificar si la contraseña tiene al menos un número
  tieneNumero := False;
  for  i := 1 to length(contrasena) do
  begin
    if (contrasena[i] in ['0'..'9']) then
    begin
      tieneNumero := True;
      Break;
    end;
  end;

  // Verificar si la contraseña tiene al menos 8 caracteres
  tieneLongitud := length(contrasena) >= 8;

  // Mostrar mensaje de validación de la contraseña
  if (tieneLetra and tieneNumero and tieneLongitud) then
  begin
    writeln('La contraseña es válida.');
  end
  else
  begin
    writeln('La contraseña no es válida.');
    if (not tieneLetra) then
    begin
      writeln('La contraseña debe incluir al menos una letra.');
    end;
    if (not tieneNumero) then
    begin
      writeln('La contraseña debe incluir al menos un número.');
    end;
    if (not tieneLongitud) then
    begin
      writeln('La contraseña debe tener al menos 8 caracteres.');
    end;
  end;

  readln;
end.}
{program EvaluacionNotas;

var
  nota: integer;

begin
  writeln('Ingrese su nota:');
  readln(nota);

  if (nota >= 90) then
  begin
    writeln('Su nota es A.');
  end
  else if (nota >= 80) then
  begin
    writeln('Su nota es B.');
  end
  else if (nota >= 70) then
  begin
    writeln('Su nota es C.');
  end
  else if (nota >= 60) then
  begin
    writeln('Su nota es D.');
  end
  else
  begin
    writeln('Su nota es F.');
  end;

  readln;
end.}
