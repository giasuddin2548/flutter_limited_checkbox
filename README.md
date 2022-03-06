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
[![Build Status](https://github.com/dart-lang/pub/workflows/Dart%20CI/badge.svg)](https://github.com/dart-lang/pub/actions/workflows/test.yaml?query=workflow%3A%22Dart+CI%22+branch%3Amaster)
[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

> flutter_limited_checkbox is help you checkbox functionality like single selection, limited selection, and multiple selection in flutter.


<img src="https://cricket.mobilestorebd.com/images/tempImage/single.gif" width="250" height="500"><img src="https://cricket.mobilestorebd.com/images/tempImage/limited.gif" width="250" height="500"><img src="https://cricket.mobilestorebd.com/images/tempImage/unlimited.gif" width="250" height="500">

## Features

  * Custom CheckBox
  * CheckBox List.
  * Single Selection.
  * Limited Selection.
  * Multiple or unlimited selection.

## Getting started

> Add dependency #

```dart
dependencies:
flutter_limited_checkbox: ^0.0.4
```

### Easy to use


### Single Selection form checkbox list
```dart
FlutterSingleCheckbox(
        singleValueList: mySingleValueList,
        onChanged: (index){

        },

      )
```
> Single CheckBox Demo
<img src="https://cricket.mobilestorebd.com/images/tempImage/single.gif" width="250" height="500">

### Limited Selection form checkbox list
```dart
FlutterLimitedCheckbox(

        limit: 3,
        limitedValueList: mySingleValueList,
        onChanged: (List<FlutterSelectModel> list){

        },
      )
```
> Limited CheckBox Demo
<img src="https://cricket.mobilestorebd.com/images/tempImage/limited.gif" width="250" height="500" />


### Unlimited Selection form checkbox list

```dart
FlutterUnlimitedCheckbox(

        unlimitedCheckList: mySingleValueList,
        onChanged: (List<FlutterSelectModel> list){

        },
      )
```

> Unlimited CheckBox Demo
<img src="https://cricket.mobilestorebd.com/images/tempImage/unlimited.gif" width="250" height="500" />



## Additional information

Read the documentation carefully before using this packages.
