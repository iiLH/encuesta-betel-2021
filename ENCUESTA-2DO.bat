@echo off
color 80
:: Codigo hecho por el lucca B-)
:: echo sirve para mostrar texto en la pantalla
:nombre
title ENCUESTA BET-EL 2do
echo -------------------------------------------
echo ¿Cual es tu nombre?
echo -------------------------------------------
set /p Nombre=Escribe tu nombre:
set Archivo=Encuesta_de_%Nombre%.txt
echo Nombre: %Nombre% > %Archivo%
cls
call :p1
:p1
echo ------------------------------------
echo ¿Tienes alguien al cual guardas rencor, %Nombre%?
echo escribe lo que quieras
echo ------------------------------------
set /p p1=Escribe:
echo %Nombre% Escribo para la pregunta 1: %p1% >> %Archivo%
cls
call :p2

:p2
echo -------------------------------------
echo ¿Has perdonado a alguien, %Nombre%?
echo -------------------------------------
set /p p2=Escribe:
echo %Nombre% Escribio para la pregunta 2: %p2% >> %Archivo%
cls
call :p3

:p3
echo ------------------------
echo Para vos, %Nombre%: Te parece bueno perdonar?
echo ------------------------
set /p p3=Escribe:
echo %Nombre% Escribio para la pregunta 3: %p3% >> %Archivo%
cls
call :ok

:ok
echo ------------------------------------------------------
echo Gracias, %Nombre% por completar la encuesta!
echo ------------------------------------------------------
set /p Salir=Quieres salir de la encuesta?:
cls
if %Salir%==si (exit) ELSE (call :nombre)
