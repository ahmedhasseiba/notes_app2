# Copilot instructions — notes_app2

Purpose: help an AI coding agent be productive immediately in this Flutter app.

- **Big picture:** This is a small Flutter application (Material) with the entry point at `lib/main.dart`. The project uses a standard Flutter multi-platform layout: `android/`, `ios/`, `macos/`, `web/`, `linux/`, `windows/`. Business logic and UI live under `lib/`; native platform glue and build scripts live under their respective folders.

- **Key files to inspect first:**
  - `lib/main.dart` — app entry, `ThemeData` and `MyHomePage` (stateful) are here.
  - `pubspec.yaml` — dependencies, SDK constraint (`sdk: ^3.10.4`), versioning and assets.
  - `analysis_options.yaml` — lint rules used by the repo (follow these).
  - `test/widget_test.dart` — example test; use it to confirm test runner behavior.
  - `android/` and `ios/` — native build files; note Android uses Gradle Kotlin scripts (`build.gradle.kts`).

- **Build / run / debug (concrete commands):**
  1. Fetch deps: `flutter pub get`
  2. Analyze: `flutter analyze`
  3. Run on a device: `flutter run -d <device-id>` (or `flutter run` for default)
  4. Run tests: `flutter test`
  5. Format code: `dart format .` (or `flutter format .`)
  6. Android CI/local build: `cd android && ./gradlew assembleDebug`
  7. iOS (local, for signing/editing): open Xcode workspace at `ios/Runner.xcworkspace` or build with `flutter build ios --no-codesign` for CI.

- **Project-specific patterns & conventions:**
  - Keep all Flutter/Dart code in `lib/`. Avoid changing platform folders unless a native integration is required.
  - Follow rules in `analysis_options.yaml` and prefer `flutter_lints` formatting/diagnostics.
  - Version and build information lives in `pubspec.yaml` under `version:`; changes there affect app stores.
  - The project currently has no third-party packages beyond `cupertino_icons`; prefer adding dependencies explicitly in `pubspec.yaml` and running `flutter pub get`.

- **Integration points & native considerations:**
  - iOS plugin registrant and app delegate are in `ios/Runner` (see `AppDelegate.swift`, `GeneratedPluginRegistrant.*`).
  - Android native config and Gradle Kotlin scripts live in `android/` and `app/`; use the provided `gradlew` wrapper.

- **Common gotchas observed in this workspace:**
  - `lib/main.dart` is the default counter app scaffold. Be mindful of small template typos when editing (e.g., `ColorScheme.fromSeed` must be called correctly — watch for stray `.` or incomplete refactors).
  - When modifying iOS signing or capabilities, use the workspace (`ios/Runner.xcworkspace`) not the `.xcodeproj`.

- **When making changes:**
  - Run `flutter analyze` and `flutter test` before opening a PR.
  - Keep UI/state changes focused to `lib/` and add tests in `test/` where feasible.

If anything here is unclear or you want the instructions expanded (examples for common edits, CI integration notes, or code-style rules), tell me which area to expand.
