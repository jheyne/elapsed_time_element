Elapsed Time Web Component
========

Compares a DateTime to the current time and displays the elapsed time, such as

  4 hours 38 minutes
  
Demonstration code can be exercised by running example/app.html in Dartium. This references a demo web component, which in turn references the 'elapsed-time' element.

Internationalization for some locales (de, en, es, fr, it, pt) is supported by setting the **selectedLocale** attribute. The example app how to set the locale using the user's browser language setting (not always an ideal strategy).

Usage
-------

* This is the simplest case. DateTime.now() is the default time, and no attributes are set.

```
    <elapsed-time></elapsed-time> 
```

* Units like 'minutes' and 'hours' can be abbreviated for a more succinct presentation. Set **"verbose"** to "false".

```
    <elapsed-time verbose="false"></elapsed-time> 
```

* A ""prefix"" and/or **suffix** can be specified (for example, " ago").

```
    <elapsed-time prefix="happened" suffix=" ago"></elapsed-time> 
```

* A message can be specified when the elapse is **less than one minute** (for example, as "moments ago").

```
    <elapsed-time lessThanOneMinute="moments ago"></elapsed-time> 
```

* A **specific date** can be specified (for example, two hours ago).

```
    <elapsed-time dateTime="{{twoHoursAgo}}"></elapsed-time> 
```

* A **future specific date** can be specified (for example, two hours from now).

```
    <elapsed-time dateTime="{{twoHoursAhead}}"></elapsed-time> 
```

* The **CSS style** of the elapsed time can be explicitly set (for example, "color: red;").

```
    <elapsed-time elapsedTimeStyle="color: red;"></elapsed-time> 
```

* **CSS style** can be **dynamically** configured via a callback (for example, bold red for 2 hours or more, otherwise green italic).

```
    <elapsed-time styleCallback="{{colorTime}}"></elapsed-time> 
```

   Dart code:


    @published StyleCallbackFunction colorTime = (DateTime dateTime, Duration duration) => duration.inMinutes >= 2 ? "color: red; font-weight: bold" : "color: green; font-style: italic";  

* The **tooltip icon** can be altered to another core-icons option (for example, to "warning").

```
    <elapsed-time tooltipIcon="warning"></elapsed-time> 
```

* If the **date is null** a custom message can be displayed (the default shows nothing).

```
    <elapsed-time noTimeSpecified="not available" ></elapsed-time> 
```
