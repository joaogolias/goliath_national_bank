# goliath_national_bank

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Running

```
# Lists available devices
flutter devices 

# runs in Chrome
flutter run -d chrome

# adding libs
flutter pub add path_provider

# install project libs
flutter packages get
```

### TODO List

1. ~~Setup project~~
1. ~~Add internationalization~~
1. ~~Create a new page for "Extract"~~
1. Setup firebase app distribution
1. (Extract Page) Represent the maximum I can spent in a week (R$400)
1. (Extract Page) Modal that creates a new expense (with button that opens it)
    - descripiton, value, category and date
    - Default date: today, but it can change
1. (Extract Page) Final balance => maximum - expent
1. (Extract Page) In extract, shows description value and date, cateogry
1. Save into localstorage/sharedpreferences/userdefault
    - Create FileSystemManager - DONE but still need to test
    - Convert JSON to classes
    - Check for user permission
    - Save default JSON/setup file when app opens the first time - IN PROGRESS hard to test
