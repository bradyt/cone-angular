import 'dart:io';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:path/path.dart' as p;

@Component(
  selector: 'add-transaction',
  styleUrls: ['add_transaction_component.css'],
  templateUrl: 'add_transaction_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
)
class AddTransactionComponent implements OnInit {
  String newTransaction = '';
  var homeDir;
  File ledgerFile;

  @override
  void ngOnInit() {
    if (Platform.isWindows) {
      homeDir = Platform.environment['APPDATA'];
    } else {
      homeDir = Platform.environment['HOME'];
    }
    ledgerFile = File(p.join(homeDir, '.cone.ledger'));
  }

  void add() {
    ledgerFile.writeAsString(newTransaction);
    newTransaction = '';
  }
}
