import 'package:basics_to_flutter/welcom.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {

  // we made a static function which means it can be used  without instanciating  

  static Map<String, WidgetBuilder> getRoutes() {

    /// (context) => Wlecome()    is a WidgetBuilder
    return {
      '/welcome': (context) => const Welcome(),
    };
  }
}
