library util;


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
      b.write(inDays);
      b.write(short ? 'd ' : (inDays > 1 ? ' days ' : ' day '));      
    }
    var hours = inHours - inDays * Duration.HOURS_PER_DAY;
    if(hours > 0) {
      b.write(hours);
      b.write(short ? 'h ' : (hours > 1 ? ' hours ' : ' hour ')); 
    }    
    var minutes = inMinutes - inHours * Duration.MINUTES_PER_HOUR;
    if(minutes > 0) {
      b.write(minutes);
      b.write(short ? 'm ' : (minutes > 1 ? ' minutes ' : ' minute ')); 
    }    
    var seconds = inSeconds - inMinutes * Duration.SECONDS_PER_MINUTE;
    if(includeSeconds && seconds > 0) {
      b.write(seconds);
      b.write(short ? 's' : (seconds > 1 ? ' seconds ' : ' second ')); 
    }    
    return b.toString().trim();
  }
  
}