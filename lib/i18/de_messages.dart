/**
 * DO NOT EDIT. This is code generated via pkg/intl/generate_localized.dart
 * This is a library that provides messages for a messages locale. All the
 * messages from the main program should be duplicated here with the same
 * function name.
 */

library de_messages;
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {

  get localeName => 'messages';
  static daysSuccinct(days) => "${Intl.plural(days, zero: '', one: 'T', other: 'T')}";

  static daysVerbose(days) => "${Intl.plural(days, zero: '', one: '${days} Tag', other: '${days} Tage')}";

  static hoursSuccinct(hours) => "${Intl.plural(hours, zero: '', one: 'S', other: 'S')}";

  static hoursVerbose(hours) => "${Intl.plural(hours, zero: '', one: '${hours} Stunden', other: '${hours} Stunden')}";

  static lessThanOneMinuteSuccinct() => "< 1M";

  static lessThanOneMinuteVerbose() => "< 1 Minute";

  static minutesSuccinct(minutes) => "${Intl.plural(minutes, zero: '', one: 'M', other: 'M')}";

  static minutesVerbose(minutes) => "${Intl.plural(minutes, zero: '', one: '${minutes} Minute', other: '${minutes} Minuten')}";

  static secondsSuccinct(seconds) => "${Intl.plural(seconds, zero: '', one: ' S', other: ' S')}";

  static secondsVerbose(seconds) => "${Intl.plural(seconds, zero: '', one: '${seconds} Sekunde', other: '${seconds} Sekunden')}";


  final messages = const {
    "daysSuccinct" : daysSuccinct,
    "daysVerbose" : daysVerbose,
    "hoursSuccinct" : hoursSuccinct,
    "hoursVerbose" : hoursVerbose,
    "lessThanOneMinuteSuccinct" : lessThanOneMinuteSuccinct,
    "lessThanOneMinuteVerbose" : lessThanOneMinuteVerbose,
    "minutesSuccinct" : minutesSuccinct,
    "minutesVerbose" : minutesVerbose,
    "secondsSuccinct" : secondsSuccinct,
    "secondsVerbose" : secondsVerbose
  };
}