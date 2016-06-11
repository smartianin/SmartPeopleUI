import 'package:SmartPeopleUI/redux/index.dart';
import 'package:SmartPeopleUI/account-management/restore-access/index.dart';

class RestoreAccessData{
  bool isCodeSent;
  bool isCodeApplied;
  bool isInvalidCode;
  bool isUserNotFound;
  String email;
  RestoreAccessData({this.isCodeSent: false, this.isCodeApplied: false, this.isInvalidCode: false, this.isUserNotFound: false, this.email: null});
}

class RestoreAccessReducer {
  static State reduce(State state, Action action) {
    switch (action.type) {
      case GET_RESTORE_CODE:
        return new State.from(state)
          ..['restoreAccess']= new RestoreAccessData(
            isCodeSent: action.data['codeSent'] == null ? false : action.data['codeSent'],
            isUserNotFound: action.data['userNotFound'] == null ? false : action.data['userNotFound']
          );

      case CLEAR_RESTORE_ACCESS:
        return new State.from(state)
          ..['restoreAccess'] = null;

      case APPLY_RESTORE_CODE:
        return new State.from(state)
          ..['restoreAccess'] = new RestoreAccessData(
            isCodeApplied: action.data['codeApplied'] == null ? false : action.data['codeApplied'],
            isInvalidCode: action.data['invalidCode'] == null ? false : action.data['invalidCode']
          );
      default:
        return state;
    }
  }
}