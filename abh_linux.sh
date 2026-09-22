# 1. Abhängigkeiten installieren
sudo apt-get update
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa \
  clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev

# 2. Flutter SDK installieren (falls noch nicht vorhanden)
cd ~
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:$HOME/flutter/bin"
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc

# 3. Repo klonen
git clone https://github.com/schlemiel/FlutterApp.git
cd FlutterApp/flutter_application_1   # ggf. Pfad anpassen, je nach Repo-Struktur

# 4. Prüfen & bauen
flutter config --enable-linux-desktop
flutter doctor -v
flutter pub get
flutter run -d linux        # zum Testen
flutter build linux         # Release-Build → build/linux/x64/release/bundle