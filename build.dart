//export 'package:polymer/builder.dart';
import 'package:polymer/builder.dart';
        
main(args) {
  build(entryPoints: ['example/app.html'],
        options: parseOptions(args));
}
