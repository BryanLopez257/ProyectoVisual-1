# Proyecto Visual - Configuración de Librerías

## Problema Resuelto
Este proyecto ha sido configurado para evitar problemas con las librerías cuando se pasa entre diferentes entornos o máquinas.

## Cambios Realizados

### 1. Directorio `lib` Local
- Se creó un directorio `lib` dentro del proyecto
- Las librerías ahora se almacenan localmente en lugar de depender de las librerías globales de NetBeans
- Este directorio está incluido en el control de versiones

### 2. Archivo `.gitignore` Actualizado
- Se agregaron patrones para ignorar archivos temporales y de configuración específicos del usuario
- **IMPORTANTE**: El directorio `lib` NO está ignorado, por lo que las librerías se incluyen en el repositorio

### 3. `project.properties` Modificado
- Se cambiaron las referencias de `${libs.*.classpath}` a rutas relativas
- Ahora usa `file.reference.*` apuntando al directorio `lib` local

## Librerías Requeridas

El proyecto necesita las siguientes librerías en el directorio `lib`:

1. `mysql-connector-java-8.0.33.jar` - Conector MySQL
2. `jasperreports-6.0.0.jar` - JasperReports
3. `commons-collections-3.2.1.jar` - Apache Commons Collections
4. `commons-logging-1.1.jar` - Apache Commons Logging
5. `commons-digester-2.1.jar` - Apache Commons Digester
6. `itext-pdf-5.5.4.jar` - iText PDF
7. `groovy-2.4.5.jar` - Groovy
8. `jcommon-1.0.15.jar` - JCommon
9. `jfreechart-1.0.12.jar` - JFreeChart

## Instalación Rápida

### Opción 1: Script Automático
Ejecuta el archivo `instalar_librerias.bat` que te guiará en el proceso.

### Opción 2: Manual
1. Descarga las librerías necesarias
2. Cópialas al directorio `lib/`
3. Asegúrate de que los nombres coincidan exactamente

## Verificación

Después de instalar las librerías:
1. Abre el proyecto en NetBeans
2. Limpia y compila el proyecto (Clean & Build)
3. Si hay errores de librerías faltantes, verifica que estén en `lib/` con los nombres correctos

## Beneficios

✅ **Portabilidad**: El proyecto funciona en cualquier máquina sin configuración adicional
✅ **Consistencia**: Las mismas versiones de librerías en todos los entornos
✅ **Control de versiones**: Las librerías están incluidas en Git
✅ **Independencia**: No depende de librerías globales de NetBeans

## Notas Importantes

- Si cambias versiones de librerías, actualiza los nombres en `project.properties`
- El directorio `lib/` debe contener TODOS los archivos JAR necesarios
- No elimines el directorio `lib/` del control de versiones