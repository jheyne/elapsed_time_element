/**
 * DO NOT EDIT. This is code generated via pkg/intl/generate_localized.dart
 * This is a library that provides messages for a messages locale. All the
 * messages from the main program should be duplicated here with the same
 * function name.
 */

library pt_messages;
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {

  get localeName => 'messages';
  static daysSuccinct(days) => "${Intl.plural(days, zero: '', one: 'd', other: 'd')}";

  static daysVerbose(days) => "${Intl.plural(days, zero: '', one: '${days} dia', other: '${days} dias')}";

  static hoursSuccinct(hours) => "${Intl.plural(hours, zero: '', one: 'h', other: 'h')}";

  static hoursVerbose(hours) => "${Intl.plural(hours, zero: '', one: '${hours} hora', other: '${hours} horas')}";

  static lessThanOneMinuteSuccinct() => "< 1m";

  static lessThanOneMinuteVerbose() => "< 1 minuto";

  static minutesSuccinct(minutes) => "${Intl.plural(minutes, zero: '', one: 'm', other: 'm')}";

  static minutesVerbose(minutes) => "${Intl.plural(minutes, zero: '', one: '${minutes} minuto', other: '${minutes} minutos')}";

  static secondsSuccinct(seconds) => "${Intl.plural(seconds, zero: '', one: 's', other: 's')}";

  static secondsVerbose(seconds) => "${Intl.plural(seconds, zero: '', one: '${seconds} segunda', other: '${seconds} segundos')}";


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