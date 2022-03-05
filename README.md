<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

flutter_limited_select is help you checkbox functionality like single selection, limited selection, and multiple selection in flutter.

## Features

Custom CheckBox
CheckBox List.
Single Selection.
Limited Selection.
Multiple or unlimited selection.

## Getting started

Add dependency #

```dart
dependencies:
  flutter_limited_select: ^0.0.1
```

Easy to use
```dart
import 'package:flutter_limited_select/flutter_limited_select.dart';

```

Single Selection form checkbox list
```dart
FlutterSingleSelect(
        singleValueList: mySingleValueList,
        onChanged: (index){

        },

      )
```

<img src="https://github.com/giasuddin2548/flutter_limited_select/blob/master/screenshot/single.gif" width="250" height="500" />

Limited Selection form checkbox list
```dart
FlutterLimitedSelect(

        limit: 3,
        limitedValueList: mySingleValueList,
        onChanged: (List<FlutterSelectModel> list){

        },
      )
```

Unlimited Selection form checkbox list

```dart
FlutterUnlimitedSelect(

        unlimitedCheckList: mySingleValueList,
        onChanged: (List<FlutterSelectModel> list){

        },
      )
```



## Additional information

Read the documentation carefully before using this packages.
