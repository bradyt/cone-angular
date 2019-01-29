import 'package:angular/angular.dart';

import 'src/add_transaction/add_transaction_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'cone-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [AddTransactionComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in AddTransactionComponent.
}
