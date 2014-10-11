import 'package:polymer/polymer.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:elapsed_time_element/util.dart';
import 'all_messages.dart';

typedef String StyleCallbackFunction(DateTime dateTime, Duration duration);

  /*
   * Takes care of refreshing the displayed lapsed time. For efficiency, a single instance can update multiple elements which have the same refresh interval.
   */
class _RefreshTimer {

  int _refreshInSeconds = 30;
  
  Timer _refreshTimer;
  
  List<TimeElapsed> _activeElements = new List();
  
  static Map<int, _RefreshTimer> _cache = new Map<int, _RefreshTimer>();
  
  _RefreshTimer(this._refreshInSeconds);

  /*
   * Supplies an instance for a particular refresh interval
   */
  factory _RefreshTimer.seconds(int refreshInSeconds) {
    return _cache.putIfAbsent(refreshInSeconds, () => new _RefreshTimer(refreshInSeconds));
  }
  
  void register(TimeElapsed lapse) {
    if (_activeElements.isEmpty) {
      _startTimer();
    }
    _activeElements.add(lapse);
  }

  void unregister(TimeElapsed lapse) {
    _activeElements.remove(lapse);
    if (_activeElements.isEmpty) {
      _refreshTimer.cancel();
    }
  }

  void _startTimer() {
    Duration refreshPeriod = new Duration(seconds: _refreshInSeconds);
    _refreshTimer = new Timer.periodic(refreshPeriod, refreshAllDates);
  }

  void refreshAllDates(Timer timer) {
    _activeElements.forEach((e) => e.refreshDates());
  }
}

/**
 * A Polymer elapsed time element.
 */
@CustomTag('elapsed-time')
class TimeElapsed extends PolymerElement {
      
  /*
   * The date supplied by the user (defaults to 'now')
   */
  DateTime _dateTime = new DateTime.now();
  
  @published get dateTime => _dateTime;
  set dateTime(DateTime date) {
    _dateTime = date;
    refreshDates();
  }

  /*
   * The message to show if no time is specified (defaults to empty string)
   */
  @published String noTimeSpecified = '';
  
/*
 * The interval for refreshing the display (defaults to 30 seconds)
 */
  @published int refreshInSeconds = 30;    
  
  /*
   * the format used to present the date in the tooltip
   */
  @published String tooltipFormat = 'yyyy-MM-dd H:mm:ss';
  
/*
 * Callback which supplies CSS style for the time elapse display.
 * For convenience, the date and the duration from 'now' are supplied.
 */
  @published StyleCallbackFunction styleCallback;
  
/*
 * The string to show if the time elapsed is less than one minute
 */
  @published String lessThanOneMinute = lessThanOneMinuteVerbose();
  
/*
 * Directly sets the CSS for the elapsed time.
 */
  @published String elapsedTimeStyle = '';
  
/*
 * The elapsed time [private]
 */
  @published String elapsedTime = ''; 
  
  /*
   * The date string to show in the tooltip [private]
   */
  @published String tooltipDate = '';
  
/*
 * The core icon identifier for the icon in the tooltip.
 * See <http://www.polymer-project.org/components/core-elements/demo.html#core-icon>
 */
  @published String tooltipIcon = 'schedule';

  /*
   * A string to be displayed before the elapsed time
   */
  @published String prefix = '';

  /*
   * A string to be displayed after the elapsed time
   */
  @published String suffix = '';
  
  /*
   * Specifies whether to show abbreviations or full words for minutes, hours, etc.
   */
  @published String verbose = "true";
  
  TimeElapsed.created() : super.created() {
  }
  
  void attached() {
    super.attached();
    refreshDates();
    new _RefreshTimer.seconds(refreshInSeconds).register(this);
  }
      
  void detached() {
    super.detached();
    new _RefreshTimer.seconds(refreshInSeconds).unregister(this);
  }  
  
  void refreshDates([Timer timer]) {
    if (_dateTime == null) {
      elapsedTime = noTimeSpecified;
      tooltipDate = noTimeSpecified;
      return;
    }
    var isVerbose = "true" == verbose;
    var elapsed = Util.formatDate(_dateTime, short: !isVerbose);
    if (!isVerbose && lessThanOneMinute == lessThanOneMinuteVerbose()) {
      lessThanOneMinute = lessThanOneMinuteSuccinct();
    }
    elapsedTime = prefix + (elapsed.isEmpty ? lessThanOneMinute : elapsed) + suffix;
    tooltipDate = new DateFormat(tooltipFormat).format(_dateTime);
    if (styleCallback != null) {
      DateTime now = new DateTime.now();
      Duration duration = now.isBefore(_dateTime) ? _dateTime.difference(now) : now.difference(_dateTime);
      elapsedTimeStyle = styleCallback(_dateTime, duration);
    }    
  }
  
}

