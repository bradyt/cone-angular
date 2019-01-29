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
  String homeDir;
  String ledgerFile;

  AddTransactionComponent() {
    homeDir = r'C:\\Users\Administrator\';
    ledgerFile = p.join(homeDir, '.cone.ledger');
  }

  @override
  void ngOnInit() {}

  void add() {
    File lF = File(ledgerFile);
    lF.writeAsString(newTransaction);
    newTransaction = '';
  }
}
