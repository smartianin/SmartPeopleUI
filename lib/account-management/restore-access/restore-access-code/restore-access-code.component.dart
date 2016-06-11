import 'package:angular2/angular2.dart'
   show Component, Control, ControlGroup, Validators;
import 'package:SmartPeopleUI/index.dart'
   show FormComponent, InjectableStore, RestoreAccessActionCreator, RestoreCodeValidator;

@Component(
selector: 'sp-restore-access-code',
templateUrl: 'restore-access-code.component.html')
class RestoreAccessCodeComponent extends FormComponent{

   final InjectableStore _store;

   Control codeControl;

   ControlGroup form;
   RestoreAccessCodeComponent(this._store) {
      this.codeControl = new Control('',
         Validators.compose([RestoreCodeValidator.validate, Validators.required]));
      this.form = new ControlGroup({ 'code': this.codeControl});
   }

   applyCode() => _store.dispatch(RestoreAccessActionCreator.applyRestoreCode(codeControl.value));
}