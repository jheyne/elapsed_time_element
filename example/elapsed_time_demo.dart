import 'package:polymer/polymer.dart';
//import '../lib/time_lapsed.dart';
import 'package:elapsed_time_element/elapsed_time.dart';
import 'dart:html';

/**
 * demonstrates usage of time-lapsed element.
 */
@CustomTag('elapsed-time-demo')
class TimeElapsedDemo extends PolymerElement {
  @observable String selectedLocale;
  @published DateTime twoHoursAgo = new DateTime.now().subtract(new Duration(hours: 2));
  @published DateTime twoHoursAhead = new DateTime.now().add(new Duration(hours: 2));
  @published StyleCallbackFunction colorTime = (DateTime dateTime, Duration duration) => duration.inMinutes >= 2 ? "color: red; font-weight: bold" : "color: green; font-style: italic";
  
  TimeElapsedDemo.created() : super.created() {
    selectedLocale = window.navigator.language;
    print("Selected Locale: ${selectedLocale}");
  }

  void domReady() {
    super.domReady();
    TimeElapsed nullDate = $['nullDate'] as TimeElapsed;
    nullDate.dateTime = null;
  }
  

}

