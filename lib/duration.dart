// Copyright (c) 2020, Denis Portnov. All rights reserved.
// Released under MIT License that can be found in the LICENSE file.

library datetimex.duration;

///
extension NumDuration on num {
  /// Duration in `num` days
  Duration get days {
    return Duration(microseconds: (this * Duration.microsecondsPerDay).toInt());
  }

  /// Duration in `num` hours
  Duration get hours {
    return Duration(
        microseconds: (this * Duration.microsecondsPerHour).toInt());
  }

  /// Duration in `num` minutes
  Duration get minutes {
    return Duration(
        microseconds: (this * Duration.microsecondsPerMinute).toInt());
  }

  /// Duration in `num` seconds
  Duration get seconds {
    return Duration(
        microseconds: (this * Duration.microsecondsPerSecond).toInt());
  }
}
