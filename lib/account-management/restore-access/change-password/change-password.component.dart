import 'dart:html' show window;
import 'package:SmartPeopleUI/index.dart' show FormComponent, PasswordValidator, ValidationNotificationComponent, InjectableStore, RestoreAccessActionCreator, RestoreAccessData, ErrorTooltipComponent;
import 'package:angular2/angular2.dart'show Component, Control, ControlGroup, Validators;

@Component(
    selector: 'sp-change-password',
    directives: const [ErrorTooltipComponent],
    templateUrl: 'change-password.component.html')

class ChangePasswordComponent extends FormComponent {

   final InjectableStore _store;

   Control passwordControl;
   Control passwordRepeatControl;
   ControlGroup form;

   bool isPasswordChangingError = false;
   bool isPasswordChanged = false;

   ChangePasswordComponent(this._store) {

      this.passwordControl = new Control('777777',
          Validators.compose([
             PasswordValidator.validate,
             Validators.required,
             Validators.minLength(6),
             Validators.maxLength(18)
          ]));

      this.passwordRepeatControl = new Control('777777',
          Validators.compose(
              [PasswordValidator.validate, Validators.required]));

      this.form = new ControlGroup({
         'password': this.passwordControl,
         'passwordRepeat': this.passwordRepeatControl
    });
  }

   _onStateChange(State state) {
      RestoreAccessData restoreAccess = state['restoreAccess'];
      if (restoreAccess == null) return;

      isPasswordChanged = restoreAccess.isPasswordChanged;
      isPasswordChangingError = restoreAccess.isPasswordChangingError;

      if (isPasswordChanged) {
         _store.dispatch(RestoreAccessActionCreator.clearRestoreAccess());
         window.alert('Password is changed');
      }

      if (isPasswordChangingError) window.alert('Error while password changing');

   }

   applyPasswordChanging() {
      String restoreToken = (_store.state['restoreAccess'] as RestoreAccessData)?.changePasswordToken;
      _store.dispatch(RestoreAccessActionCreator.applyPasswordChanging(passwordControl.value, restoreToken));
      _store.take(1).listen(_onStateChange);
   }

}
