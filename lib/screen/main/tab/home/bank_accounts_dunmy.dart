import 'package:fast_app_base/screen/main/tab/home/banks_dunmy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 30000000,accountTypeName: '신한 주거래 우랟통장(저축예금)');
final bankAccountShinhan2 = BankAccount(bankShinhan, 2000000000,accountTypeName: '저축예금');
final bankAccountShinhan3 = BankAccount(bankShinhan, 10000000,accountTypeName: '저축예금');
final bankAccountToss = BankAccount(bankToss, 500000);
final bankAccountKakao = BankAccount(bankKakao, 700000,accountTypeName: '입출금통장');



final bankAccounts =[
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];

final bankMap = {
  'shinhan1' : bankAccountShinhan1,
  'shinhan2' : bankAccountShinhan2,
  'shinhan3' : bankAccountShinhan3,
 };