import 'package:SmartPeopleUI/redux/index.dart';
import 'package:angular2/core.dart';
import 'package:SmartPeopleUI/index.dart';
import 'package:SmartPeopleUI/shared/index.dart';

@Injectable()
class InjectableStore extends Store {

  InjectableStore(LocalStorageService localStorage) : super(
    combineReducers([AuthReducer.reduce]),
    initialState: new State({}),
    middleware: applyMiddleware([printMiddleware, new ApiMiddleware(localStorage).apply]));

}