import 'dart:developer' as devtools show log;

extension ProviderLog on Object{
  void log()=> devtools.log(toString());
}