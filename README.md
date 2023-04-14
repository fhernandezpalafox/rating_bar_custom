# rating_bar_custom

[![pub package](https://img.shields.io/pub/v/rating_bar_custom.svg)](https://pub.dev/packages/rating_bar_custom)

Un paquete Flutter para mostrar una barra de calificación personalizada con estrellas llenas, medias estrellas y estrellas vacías según el valor proporcionado.

## Instalación

Añade `rating_bar_custom` a tus dependencias en `pubspec.yaml`:

```yaml
dependencies:
  rating_bar_custom: ^0.0.1

Aquí tienes un ejemplo de archivo README.md para tu paquete rating_bar_custom:

less
Copy code
# rating_bar_custom

[![pub package](https://img.shields.io/pub/v/rating_bar_custom.svg)](https://pub.dev/packages/rating_bar_custom)

Un paquete Flutter para mostrar una barra de calificación personalizada con estrellas llenas, medias estrellas y estrellas vacías según el valor proporcionado.

Instalación

Añade `rating_bar_custom` a tus dependencias en `pubspec.yaml`:

```yaml
dependencies:
  rating_bar_custom: ^0.0.1

Luego, ejecuta flutter pub get para instalar el paquete.

###Uso
Importa el paquete en tu archivo Dart:


import 'package:rating_bar_custom/rating_bar_custom.dart';


Utiliza el widget **RatingBarCustom** en tu aplicación:

```Dart
RatingBarCustom(
  numberStars: 5,
  starCount: 3.5,
  colorStar: Colors.orange,
),
```

Propiedades
**numberStars**: El número total de estrellas a mostrar (por defecto es 5).
**starCount**: El número de estrellas llenas y medias a mostrar. Por ejemplo, si starCount es 3.5, se mostrarán 3 estrellas llenas, una media estrella y una estrella vacía (por defecto es 1.0).
**colorStar**: El color de las estrellas llenas y medias (requerido).
**sizeIcon**: El tamaño de las estrellas (por defecto es 24.0).

Ejemplo

```Dart
import 'package:flutter/material.dart';
import 'package:rating_bar_custom/rating_bar_custom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo RatingBarCustom'),
        ),
        body: Center(
          child: RatingBarCustom(
            numberStars: 5,
            starCount: 3.5,
            colorStar: Colors.orange,
          ),
        ),
      ),
    );
  }
}

```
Contribuciones

Las contribuciones son bienvenidas. Por favor, crea un issue o envía un pull request para cualquier mejora o corrección de errores.

Licencia
Este paquete está bajo la licencia MIT. Consulta el archivo LICENSE para obtener más información.


