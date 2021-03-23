@echo Generando archivo de captura
copy output_files\MKRVIDOR4000.ttf ReverseByte\
cd ReverseByte
java ReverseByte "MKRVIDOR4000.ttf" app.h
@echo Archivo generado pulsar una tecla para continuar...
pause
del "MKRVIDOR4000.ttf"
cd ..
copy ReverseByte\app.h EmptySketch\
@echo El archivo se ha cargado con exito en el sketch
@echo En la carpeta EmptySketch se encuentra el proyecto
@echo de arduino que puede ser cargado a la tarjeta vidor4000
@echo Pulse una tecla para cerrar...
pause


