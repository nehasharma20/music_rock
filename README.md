# 🎵 Music Rock – Music Services Module (Single Screen)

This mini Flutter project demonstrates a **responsive UI** that fetches and displays a list of music services from **Firebase Firestore**, following the **MVVM architecture** with **Provider** for state management and **GetIt** (optional) for dependency injection.

---

## 📱 Screens

### ✅ Home Screen
- Dynamically displays a list of music services.
- Each service card includes:
  - Icon (can be asset or system icon)
  - Title
  - Short description
- Tapping a card navigates to a detail screen showing:
  > “You tapped on: `<Service Title>`”

---

## 🔧 Features

- ✨ Responsive UI using Flutter
- 📦 Firebase Firestore integration (read-only)
- 🧠 MVVM architecture
- ✅ State management using Provider
- 💉 Dependency Injection via GetIt (optional/bonus)
- 🚀 Navigation on tap
- ⚠️ Null-safe and error-handled data fetching

---

## 📂 Project Structure

```plaintext
assets/
├── icons/
│   ├── music.png
│   ├── mix.png
│   ├── lyrics.png
│   ├── vocals.png
├── images/
│   ├── music_bg.png
│   ├── mix_bg.png
│   ├── lyrics_bg.png
│   ├── vocals_bg.png
lib/
├── core/
│   ├── constants/
│   │   └── app_colors.dart
│   │   └── app_text_styles.dart
│   └── widgets/
│       └── custom_bottom_nav_bar.dart
│       └── service_card.dart
├── data/
│   └── model/
│       └── music_service.dart
│   └── repository/
│       └── music_service_repository.dart
├── view_model/
│   └── music_service_view_model.dart
├── view/
│   └── screens/
│       └── home_screen.dart
├── main.dart
└── firebase_options.dart
