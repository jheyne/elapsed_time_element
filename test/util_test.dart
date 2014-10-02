library time_lapsed.tests;

import 'package:unittest/unittest.dart';
import 'package:elapsed_time_element/util.dart';

void main() {
  test('1m', () =>
    expect(format(new Duration(minutes: 1)),
      equals('1m'))
  );
  test('2m', () =>
    expect(format(new Duration(minutes: 2)),
      equals('2m'))
  );
  test('2s', () =>
    expect(format(new Duration(seconds: 2), includeSeconds: true),
      equals('2s'))
  );
  test('1h', () =>
    expect(format(new Duration(hours: 1)),
      equals('1h'))
  );
  test('1h 30m', () =>
    expect(format(new Duration(hours: 1, minutes: 30)),
      equals('1h 30m'))
  );
  test('1d 1h 30m', () =>
    expect(format(new Duration(days: 1, hours: 1, minutes: 30)),
      equals('1d 1h 30m'))
  );
  test('long 1d 1h 30m', () =>
    expect(format(new Duration(days: 1, hours: 1, minutes: 30), short: false),
      equals('1 day 1 hour 30 minutes'))
  );
}

String format(Duration duration, {short: true, includeSeconds: false}) {
  return Util.formatDate(new DateTime.now().subtract(duration), short: short, includeSeconds: includeSeconds);
}