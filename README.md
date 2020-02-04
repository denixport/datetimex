# Extension methods for DateTime and Duration
[![Build Status](https://travis-ci.org/denixport/datetimex.svg?branch=master)](https://travis-ci.org/denixport/datetimex)
![Pub](https://img.shields.io/pub/vpre/datetimex.svg)
![GitHub](https://img.shields.io/github/license/denixport/datetimex.svg)

[TBD]

Available extensions:
* Extension on `num` that enables durational suffixes: `1.hour`, `1.minute` etc.
  Math and comparison is out of the box: `1.hour == 0.5.hour + 0.5.hour`


## Requirements
- Dart version >=2.6 

## Getting Started

### Installation
1. Add an entry in your `pubspec.yaml` for `datetimex`
```yaml
dependencies:
  datetimex: ^1.0.0
```
2. Run `pub get` (`flutter packages get` for Flutter)
3. Import the extension you need
```dart
import 'package:datetimex/duration.dart'; // Durational suffixes
```

## Release notes
See [CHANGELOG](CHANGELOG.md)

## Features and Bugs
Please file bugs and feature requests at the [issue tracker][tracker].

[tracker]: https://github.com/denixport/datetimex/issues
