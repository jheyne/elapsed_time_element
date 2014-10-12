/**
 * This was manually constructed from the individual generated local files
 */

library messages_all;

import 'dart:async';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';
import 'package:intl/intl.dart';

import 'de_messages.dart' deferred as de;
import 'es_messages.dart' deferred as es;
import 'fr_messages.dart' deferred as fr;
import 'it_messages.dart' deferred as it;
import 'pt_messages.dart' deferred as pt;


Map<String, Function> _deferredLibraries = {
  'de' : () => de.loadLibrary(),
  'es' : () => es.loadLibrary(),
  'fr' : () => fr.loadLibrary(),
  'it' : () => it.loadLibrary(),
  'pt' : () => pt.loadLibrary(),
};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case 'de' : return de.messages;
    case 'es' : return es.messages;
    case 'fr' : return fr.messages;
    case 'it' : return it.messages;
    case 'pt' : return pt.messages;
    default: return null;
  }
}

/** User programs should call this before using [localeName] for messages.*/
Future initializeMessages(String localeName) {
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  var canonicalizedLocale = Intl.canonicalizedLocale(localeName);
  var lib = _deferredLibraries[canonicalizedLocale];
  var load = lib == null ? new Future.value(false) : lib();
  return load.then((_) =>
      messageLookup.addLocale(localeName, _findGeneratedMessagesFor));
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, (x) => _findExact(x) != null,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
