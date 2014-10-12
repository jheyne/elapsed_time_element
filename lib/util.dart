library util;

import 'all_messages.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'i18/messages_all.dart' as i18;
import 'dart:async';

class Util {
  
  static String formatDate(DateTime date, {bool short: true, bool includeSeconds: false}) {
    if(date == null) {
      return '';
    }
    DateTime now = new DateTime.now();
    Duration d = now.isBefore(date) ? date.difference(now) : now.difference(date);
    var inSeconds = d.inSeconds;
    var inMinutes = d.inMinutes;
    var inHours = d.inHours;
    var inDays = d.inDays;
    StringBuffer b = new StringBuffer();
    if(inDays > 0) {
      b.write(short ? '${inDays}${daysSuccinct(inDays)}' : daysVerbose(inDays));  
      b.write(' ');  
    }
    var hours = inHours - inDays * Duration.HOURS_PER_DAY;
    if(hours > 0) {
      b.write(short ? '${hours}${hoursSuccinct(hours)}' : hoursVerbose(hours)); 
      b.write(' ');  
    }    
    var minutes = inMinutes - inHours * Duration.MINUTES_PER_HOUR;
    if(minutes > 0) {
      b.write(short ? '${minutes}${minutesSuccinct(minutes)}' : minutesVerbose(minutes)); 
      b.write(' ');  
    }    
    var seconds = inSeconds - inMinutes * Duration.SECONDS_PER_MINUTE;
    if(includeSeconds && seconds > 0) {
      b.write(short ? '${seconds}${secondsSuccinct(seconds)}' : secondsVerbose(seconds)); 
    }    
    return b.toString().trim();
  }
  

  static Future<List> initializeLocale(String selectedLocale) {    
    var messages = i18.initializeMessages(selectedLocale);
    var date = initializeDateFormatting(selectedLocale, null);
    return Future.wait([messages, date]);
  }
  
}