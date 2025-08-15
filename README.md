# 📱 Flutter Logic

**Flutter Logic** is a Flutter project that demonstrates different logic implementations for:  
- File & image uploads  
- Single / multiple selections  
- Toggle selection  

This project is designed to help developers understand and practice state management and user interaction handling in Flutter.

---

## ✨ Features
- 📂 Upload files from device storage.  
- 🖼️ Upload single or multiple images.  
- ✅ Single item selection.  
- 🔲 Multiple item selection.  
- 🔀 Toggle selection functionality.  
- 🎨 Clean project structure to make it easy to extend.  

---

## 📂 Project Structure

```
screens/
│
├── attachment&images_screens/
│   ├── upload_file.dart           # Upload a file from storage
│   ├── upload_image.dart          # Upload a single image
│   ├── upload_multi_images.dart   # Upload multiple images
│
├── selection_screens/
│   ├── image_selection.dart       # Basic image selection
│   ├── multy_selection.dart       # Multiple selection logic
│   ├── single_selection.dart      # Single selection logic
│   ├── toggel_selection.dart      # Toggle selection logic
│
├── main.dart                      # Application entry point
└── root.dart                      # Root widget / app configuration
```

---

## 🛠️ Technologies Used
- **Flutter** (Dart)  
- **Material Design**  
- **Stateful & Stateless Widgets** for UI handling  
- Can be extended with:  
  - `image_picker` → for picking images from gallery/camera  
  - `file_picker` → for uploading files  

---

## ▶️ Getting Started

### Prerequisites
- Install [Flutter SDK](https://flutter.dev/docs/get-started/install).  
- Install Android Studio or VS Code with Flutter extension.  

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/KhaledBahjat/flutterlogic
   cd flutter_logic
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

---

📜 License
This project is open source and available under the **MIT License**.  
You are free to use, modify, and distribute this project for personal and commercial purposes.  

---
