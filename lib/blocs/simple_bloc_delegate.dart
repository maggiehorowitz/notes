import 'package:bloc/bloc.dart';

/// Lets us print out the different state changes and debug statements to our console
/// Great for when working with multiple blocs
class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onEvent(bloc, transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    print('$error: $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
