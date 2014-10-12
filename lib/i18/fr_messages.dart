/**
 * DO NOT EDIT. This is code generated via pkg/intl/generate_localized.dart
 * This is a library that provides messages for a messages locale. All the
 * messages from the main program should be duplicated here with the same
 * function name.
 */

library fr_messages;
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {

  get localeName => 'messages';
  static daysSuccinct(days) => "${Intl.plural(days, zero: '', one: 'j', other: 'j')}";

  static daysVerbose(days) => "${Intl.plural(days, zero: '', one: '${days} jour', other: '${days} jours')}";

  static hoursSuccinct(hours) => "${Intl.plural(hours, zero: '', one: 'h', other: 'h')}";

  static hoursVerbose(hours) => "${Intl.plural(hours, zero: '', one: '${hours} heure', other: '${hours} heures')}";

  static lessThanOneMinuteSuccinct() => "< 1m";

  static lessThanOneMinuteVerbose() => "< 1 minute";

  static minutesSuccinct(minutes) => "${Intl.plural(minutes, zero: '', one: 'm', other: 'm')}";

  static minutesVerbose(minutes) => "${Intl.plural(minutes, zero: '', one: '${minutes} minute', other: '${minutes} minutes')}";

  static secondsSuccinct(seconds) => "${Intl.plural(seconds, zero: '', one: 's', other: 's')}";

  static secondsVerbose(seconds) => "${Intl.plural(seconds, zero: '', one: '${seconds} seconde', other: '${seconds} secondes')}";


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