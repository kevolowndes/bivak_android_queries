/// No hay nada que importar. Este paquete existe solo por su
/// android/src/main/AndroidManifest.xml, que declara:
///
///   <queries>
///     <intent>
///       <action android:name="android.speech.RecognitionService" />
///     </intent>
///   </queries>
///
/// Android (manifest merger de Gradle) lo fusiona en el manifiesto de la app.
library;
