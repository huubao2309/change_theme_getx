# Change theme with GetX

## CHANGE THEME:

```dart
	// Change theme
	Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
```

## DEMO:

![IMAGE_DEMO_GIF](https://github.com/huubao2309/change_theme_getx/blob/main/images/demo.gif)

## FIX REBUILD COLOR:

### Replace at method change theme:

```dart
	Get.theme.primaryColor,
```

### To:

```dart
	context.theme.primaryColor,
```
