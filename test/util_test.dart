library time_lapsed.tests;

import 'package:unittest/unittest.dart';
import 'package:intl/intl.dart';
import 'package:elapsed_time_element/util.dart';
import 'package:elapsed_time_element/i18/messages_all.dart';
import 'dart:async';

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
  test('verbose 1d 1h 30m', () =>
    expect(format(new Duration(days: 1, hours: 1, minutes: 30), short: false),
      equals('1 day 1 hour 30 minutes'))
  );
  test("verbose spanish 1d 1h 30m", () {
    formatLocale(new Duration(days: 1, hours: 1, minutes: 30), 'es', short: false).then(expectAsync((String elapsed) {
      expect(elapsed, equals('1 día 1 hora 30 minutos'));
    }));
  });
}

  Future<String> formatLocale(Duration duration,  String locale, {short: true, includeSeconds: false}) {
    Completer<String> completer = new Completer();
    initializeMessages(locale).then((List list) => completer.complete(Intl.withLocale(locale, () => format(duration, short: short))));
    return completer.future;
  }
  
  String format(Duration duration, {short: true, includeSeconds: false}) {
    return Util.formatDate(new DateTime.now().subtract(duration), short: short, includeSeconds: includeSeconds);
  }
  