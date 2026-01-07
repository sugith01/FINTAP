# 👆 FINTAP – Flutter Finger Tapping Game

**FINTAP** is a fast-paced and addictive finger tapping game developed using **Flutter**.  
The game challenges players to tap as fast as possible within a limited time, helping improve reflexes, speed, and finger coordination through engaging gameplay.

---

## 📌 Features

- Clean and colorful game UI  
- Fast and responsive finger tapping gameplay  
- Real-time score updates  
- High-score tracking for replay motivation  
- Smooth tap detection for accurate counting  
- Responsive layout for different screen sizes  
- Lightweight and performance-optimized  

---

## 🛠️ Tech Stack

| Technology | Purpose |
|-----------|---------|
| Flutter | Cross-platform mobile app development |
| Dart | Game logic and state management |
| Material UI | UI components and theming |

---

## 🎨 App Design

- Playful and minimal UI  
- Flat color design for better focus  
- Optimized for one-hand gameplay  
- Smooth animations and visual feedback  

---

## 🧠 Game Logic Overview

- User taps are captured using gesture detection  
- Each valid tap increases the score  
- Game runs for a fixed duration using a timer  
- High score is stored locally  
- UI updates dynamically using `setState()`  

---

## 📂 Project Structure

```css
FINTAP/
│
├── lib/
│   ├── main.dart            /* App entry point */
│   │
│   ├── screens/
│   │   ├── home_screen.dart   /* Main game screen */
│   │   └── result_screen.dart /* Score/result display */
│   │
│   ├── widgets/
│   │   ├── tap_button.dart    /* Tap interaction widget */
│   │   └── score_board.dart   /* Score UI component */
│   │
│   └── logic/
│       ├── game_logic.dart    /* Game rules & scoring */
│       └── timer.dart         /* Game timer handling */
│
├── assets/
│   ├── images/               /* App images & icons */
│   └── sounds/               /* Sound effects (optional) */
│
├── pubspec.yaml              /* Dependencies & assets config */
├── README.md                 /* Project documentation */
└── android/ ios/ web/        /* Platform-specific files */
