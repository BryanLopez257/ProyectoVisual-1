@echo off
echo ================================
echo  INSTALADOR DE LIBRERIAS - PROYECTO VISUAL
echo ================================
echo.

set LIB_DIR=%~dp0lib

echo Creando directorio lib si no existe...
if not exist "%LIB_DIR%" mkdir "%LIB_DIR%"

echo.
echo Directorio de librerias: %LIB_DIR%
echo.
echo LIBRERIAS REQUERIDAS:
echo =====================
echo 1. mysql-connector-java-8.0.33.jar (o version similar)
echo 2. jasperreports-6.0.0.jar
echo 3. commons-collections-3.2.1.jar
echo 4. commons-logging-1.1.jar  
echo 5. commons-digester-2.1.jar
echo 6. itext-pdf-5.5.4.jar
echo 7. groovy-2.4.5.jar
echo 8. jcommon-1.0.15.jar
echo 9. jfreechart-1.0.12.jar
echo.

echo INSTRUCCIONES:
echo ==============
echo 1. Copia todos los archivos JAR necesarios al directorio 'lib'
echo 2. Asegurate de que los nombres coincidan con los especificados arriba
echo 3. Si tienes versiones diferentes, actualiza el archivo project.properties
echo.

echo Contenido actual del directorio lib:
echo ====================================
if exist "%LIB_DIR%\*.jar" (
    dir "%LIB_DIR%\*.jar" /b
) else (
    echo No hay archivos JAR en el directorio lib
)

echo.
echo ¿Deseas abrir el directorio lib? (S/N)
set /p RESPUESTA=
if /i "%RESPUESTA%"=="S" (
    explorer "%LIB_DIR%"
)

echo.
echo Presiona cualquier tecla para continuar...
pause >nul