import 'package:test/test.dart';
import 'package:datetimex/duration.dart';

void main() {
  test('Durations overflow', () {
    expect(61.seconds, equals(Duration(minutes:1, seconds: 1)));
    expect(86401.seconds, equals(Duration(days:1, seconds: 1)));
  });

  test('Fractional durations', () {
    var oneMin = Duration(minutes: 1);
    var oneSec = Duration(seconds: 1);

    expect((1 / 24).days, Duration(hours: 1));
    expect((1 / (24 * 60)).days, oneMin);
    expect((1 / (24 * 60 * 60)).days, oneSec);
    expect((1 / (24 * 60 * 60 * 1000)).days, Duration(milliseconds: 1));
    expect((1 / (24 * 60 * 60 * 1000000)).days, Duration(microseconds: 1));

    expect((1 / 60).hours, oneMin);
    expect((1 / (60 * 60)).hours, oneSec);

    expect((1 / 60).minutes, oneSec);

    expect((1 / 1000).seconds, Duration(milliseconds: 1));
    expect((1 / 1000000).seconds, Duration(microseconds: 1));
  });

  test('Duration math', () {
    var a = 1.days + 1.hours + 1.minutes + 1.seconds;
    var b = Duration(days: 1, hours: 1, minutes: 1, seconds: 1);
    expect(a, equals(b));
  });
}
