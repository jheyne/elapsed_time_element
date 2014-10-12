Elapsed Time Web Component
========

Compares a DateTime to the current time and displays the elapsed time, such as

  4 hours 38 minutes
  
Demonstration code can be exercised by running example/app.html in Dartium. This references a demo web component, which in turn references the 'elapsed-time' element.

Internationalization for some locales (de, en, es, fr, it, pt) is supported by setting the **selectedLocale** attribute. The example app how to set the locale using the user's browser language setting (not always an ideal strategy).

Usage
-------

1. This is the simplest case. DateTime.now() is the default time, and no attributes are set.

 ```html
        <elapsed-time></elapsed-time> 
```

2. Units like 'minutes' and 'hours' can be abbreviated for a more succinct presentation. Set **"verbose"** to "false".

 ```html
        <elapsed-time verbose="false"></elapsed-time> 
```

3. A ""prefix"" and/or **suffix** can be specified (for example, " ago").

 ```html
        <elapsed-time prefix="happened" suffix=" ago"></elapsed-time> 
```

4. A message can be specified when the elapse is **less than one minute** (for example, as "moments ago").

 ```html
    <elapsed-time lessThanOneMinute="moments ago"></elapsed-time> 
 ```

5. A **specific date** can be specified (for example, two hours ago).

 ```html
    <elapsed-time dateTime="{{twoHoursAgo}}"></elapsed-time> 
 ```

6. A **future specific date** can be specified (for example, two hours from now).

 ```html
    <elapsed-time dateTime="{{twoHoursAhead}}"></elapsed-time> 
 ```
7. The **CSS style** of the elapsed time can be explicitly set (for example, "color: red;").

 ```html
    <elapsed-time elapsedTimeStyle="color: red;"></elapsed-time> 
 ```

8. **CSS style** can be **dynamically** configured via a callback (for example, bold red for 2 hours or more, otherwise green italic).

 ```html
    <elapsed-time styleCallback="{{colorTime}}"></elapsed-time> 
 ```

   Dart code:

 ```dart
@published StyleCallbackFunction colorTime = (DateTime dateTime, Duration duration) => duration.inMinutes >= 2 ? "color: red; font-weight: bold" : "color: green; font-style: italic";  
 ```
9. The **tooltip icon** can be altered to another core-icons option (for example, to "warning").

 ```html
    <elapsed-time tooltipIcon="warning"></elapsed-time> 
 ```

10. If the **date is null** a custom message can be displayed (the default shows nothing).

 ```html
    <elapsed-time noTimeSpecified="not available" ></elapsed-time> 
 ```
 