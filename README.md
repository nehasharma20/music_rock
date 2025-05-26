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
lib/
│
├── core/
│   └── models/
│       └── music_service_model.dart        # Model class for music services
│
├── data/
│   └── repository/
│       └── music_service_repository.dart   # Firestore read logic
│
├── view/
│   └── screens/
│       ├── home_screen.dart                # Home UI with service list
│       └── detail_screen.dart              # Tapped service detail
│   └── widgets/
│       └── service_card.dart               # Reusable card widget
│
├── view_model/
│   └── service_view_model.dart             # ViewModel for service list
│
├── main.dart                               # App entry point, Provider setup
