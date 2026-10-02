# bivak_android_queries

Plugin de Flutter **solo para Android** y **sin código Dart**.

Su `android/src/main/AndroidManifest.xml` declara:

```xml
<queries>
    <intent>
        <action android:name="android.speech.RecognitionService" />
    </intent>
</queries>
```

Al compilar, Gradle fusiona ese bloque en el `<manifest>` de la app. Así
`speech_to_text` ve el reconocedor de voz en Android 11 o más (targetSdk 30+),
como pide su README, sin editar a mano el AndroidManifest que genera FlutterFlow.

## Uso

En `pubspec.yaml` (o en FlutterFlow: Settings and Integrations > Project
Dependencies > Custom Dependencies):

```yaml
bivak_android_queries:
  git:
    url: https://github.com/kevolowndes/bivak_android_queries.git
    ref: v1.0.0
```

No hace falta importar nada en Dart. En iOS y en la web no hace nada.

## Qué registra

- Una clase `BivakAndroidQueriesPlugin` vacía (Flutter solo incluye en el build
  de Android los plugins que declaran `pluginClass`). No abre canales, no pide
  permisos, no agrega permisos, servicios ni actividades.
