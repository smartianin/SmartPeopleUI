import 'package:angular2/core.dart';
import 'package:angular2/common.dart';
import 'package:angular2/router.dart';

import 'package:angular2_material/src/components/button/button.dart';
import 'package:SmartPeopleUI/shared/index.dart';

@Component(
    selector: 'change-password',
    directives: const [
       ROUTER_DIRECTIVES,
       ValidationNotificationComponent,
       MdButton,
       InfoComponent
    ],
    encapsulation: ViewEncapsulation.Native, //TODO it is temporary, in further should remove and avoid
    templateUrl: 'error-authorization.component.html',
    styleUrls: const['error-authorization.component.css'])

class ErrorAuthorizationComponent {
   ControlGroup form;
   Map<String, String> messages;

   isValid(String control) => form.controls[control].untouched  || form.controls[control].valid;

   isRequired(String control) {
      String value = form.controls[control].value;

      return !isValid(control) && value.length == 0;
   }

   isInsufficientLength(String control) {
      String value = form.controls[control].value;

      return !isValid(control) && !isRequired(control) && value.length < 6;
   }

   isLengthExcess(String control) {
      String value = form.controls[control].value;

      return !isValid(control) && value.length > 18;
   }

   isUnhandledError(String control) {

      if(control == 'email') return !isValid(control) && !isRequired(control);

      return !isValid(control) && !isRequired(control) && !isLengthExcess(control) && !isInsufficientLength(control);
   }

   ErrorAuthorizationComponent() {

      this.form = new ControlGroup({
         'email': new Control('', Validators.compose([EmailValidator.validate, Validators.required])),
         'password': new Control('', Validators.compose([PasswordValidator.validate, Validators.required]))
      });

   }
}