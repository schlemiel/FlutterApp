Windows 11 VM (Windows Build)
Visual Studio 2022 installieren (Community reicht) mit Workload "Desktop development with C++" – unbedingt notwendig für den Windows-Build.
Git für Windows installieren.
Flutter SDK installieren:
ZIP von https://docs.flutter.dev/get-started/install/windows herunterladen, z. B. nach C:\src\flutter entpacken
C:\src\flutter\bin zum PATH hinzufügen



# Repo klonen
git clone https://github.com/schlemiel/FlutterApp.git
cd FlutterApp\flutter_application_1

# Prüfen & bauen
flutter config --enable-windows-desktop
flutter doctor -v
flutter pub get
flutter run -d windows
flutter build windows        # Release-Build → build\windows\x64\runner\Release