/**
 * DO NOT EDIT. This is code generated via pkg/intl/generate_localized.dart
 * This is a library that provides messages for a messages locale. All the
 * messages from the main program should be duplicated here with the same
 * function name.
 */

library it_messages;
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {

  get localeName => 'messages';
  static daysSuccinct(days) => "${Intl.plural(days, zero: '', one: 'g', other: 'g')}";

  static daysVerbose(days) => "${Intl.plural(days, zero: '', one: '${days} giorno', other: '${days} giorni')}";

  static hoursSuccinct(hours) => "${Intl.plural(hours, zero: '', one: 'o', other: 'o')}";

  static hoursVerbose(hours) => "${Intl.plural(hours, zero: '', one: '${hours} ore', other: '${hours} ore')}";

  static lessThanOneMinuteSuccinct() => "< 1m";

  static lessThanOneMinuteVerbose() => "< 1 minuto";

  static minutesSuccinct(minutes) => "${Intl.plural(minutes, zero: '', one: 'm', other: 'm')}";

  static minutesVerbose(minutes) => "${Intl.plural(minutes, zero: '', one: '${minutes} minuto', other: '${minutes} minuti')}";

  static secondsSuccinct(seconds) => "${Intl.plural(seconds, zero: '', one: 's', other: 's')}";

  static secondsVerbose(seconds) => "${Intl.plural(seconds, zero: '', one: '${seconds} secondo', other: '${seconds} secondi')}";


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