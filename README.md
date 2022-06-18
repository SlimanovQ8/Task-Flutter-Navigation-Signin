# Sign in Page ✅

![ISignin](https://user-images.githubusercontent.com/84308096/167295565-f7333b32-fe1e-40d2-a647-69a54f12bb63.gif)

## 🍋 Instructions

1. Fork and clone [this](https://github.com/JoinCODED/Task-Flutter-Navigation-Signin) into your development folder.
2. Install the `go_router` package.

```dart
flutter pub add go_router
```

3. Import your package in your `main.dart` file.

```dart
import 'package:go_router/go_router.dart';
```

4. Create your routes so the `home_screen.dart` be the main screen and `signed_in.dart` on the path `/signin`.
5. Replace the `MaterialApp` with a `MaterialApp.router`.
6. In your `signed_in.dart` page, create a variable to hold the `username`.
7. Fix the constructor for the `signed_in.dart` widget.
8. In your `main.dart` `/signin` route, pass the username as a `String`.
9. In your `home_screen.dart` `ElevatedButton` `onPressed` method, check if the `password` is equal to the String `12345` and then navigate the user to the `/signed_in` page and pass the `username` as extra.
10. In your `signed_in.dart` display a welcome message in the `Text` widget with the username we got.

### 🤼‍♂️ No coming back

After the user is signed in, we don't want him to be able to go back to the signin form.

Open the `go_router` [docs](https://gorouter.dev/navigation) and explore the `go` method instead of the `push` method.
