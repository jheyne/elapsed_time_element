import 'package:intl/intl.dart';

String lessThanOneMinuteSuccinct() => Intl.message(
    '< 1m',
      name: "lessThanOneMinuteSuccinct",
      args: [],
      desc: "Succinct indication that elapsed time was less than one minute");

String lessThanOneMinuteVerbose() => Intl.message(
    '< 1 minute',
    name: "lessThanOneMinuteVerbose",
    args: [],
    desc: "Verbose indication that elapsed time was less than one minute");


String daysSuccinct(int days) => Intl.message(
      "${Intl.plural(days,
          zero: '',
          one: 'd',
          other: 'd')}",
    name: "daysSuccinct",
    args: [days],
    desc: "Succinct indication of the number of days (such as 'd' in 1d 2h 3m'). Do NOT insert $days",
    examples: {'days': 23});

String daysVerbose(int days) => Intl.message(
      "${Intl.plural(days,
          zero: '',
          one: '$days day',
          other: '$days days')}",
    name: "daysVerbose",
    args: [days],
    desc: "Verbose indication of the number of days.",
    examples: {'days': 23});


String hoursSuccinct(int hours) => Intl.message(
      "${Intl.plural(hours,
          zero: '',
          one: 'h',
          other: 'h')}",
    name: "hoursSuccinct",
    args: [hours],
    desc: "Succinct indication of the number of hours (such as 'h' in 1d 2h 3m'). Do NOT insert $hours",
    examples: {'hours': 7});

String hoursVerbose(int hours) => Intl.message(
      "${Intl.plural(hours,
          zero: '',
          one: '$hours hour',
          other: '$hours hours')}",
    name: "hoursVerbose",
    args: [hours],
    desc: "Verbose indication of the number of days.",
    examples: {'hours': 23});


String minutesSuccinct(int minutes) => Intl.message(
      "${Intl.plural(minutes,
          zero: '',
          one: 'm',
          other: 'm')}",
    name: "minutesSuccinct",
    args: [minutes],
    desc: "Succinct indication of the number of minutes (such as 'm' in 1d 2h 3m'). Do NOT insert $minutes",
    examples: {'minutes': 7});

String minutesVerbose(int minutes) => Intl.message(
      "${Intl.plural(minutes,
          zero: '',
          one: '$minutes minute',
          other: '$minutes minutes')}",
    name: "minutesVerbose",
    args: [minutes],
    desc: "Verbose indication of the number of minutes.",
    examples: {'minutes': 23});


String secondsSuccinct(int seconds) => Intl.message(
      "${Intl.plural(seconds,
          zero: '',
          one: 's',
          other: 's')}",
    name: "secondsSuccinct",
    args: [seconds],
    desc: "Succinct indication of the number of seconds (such as 's' in 1d 2h 3m 30s'). Do NOT insert $seconds",
    examples: {'minutes': 7});

String secondsVerbose(int seconds) => Intl.message(
      "${Intl.plural(seconds,
          zero: '',
          one: '$seconds second',
          other: '$seconds seconds')}",
    name: "secondsVerbose",
    args: [seconds],
    desc: "Verbose indication of the number of seconds.",
    examples: {'minutes': 23});

