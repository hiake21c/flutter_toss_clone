
import 'package:flutter_toss_clone/screen/main/tab/home/vo/vo_bank_account.dart';

import '../banks_dummy.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan,  1000000, accountTypeName: '신한은행 증권계좌');
final bankAccountShinhan2 = BankAccount(bankShinhan,  2000000, accountTypeName: '신한은행 적금계좌');
final bankAccountShinhan3 = BankAccount(bankShinhan,  3000000, accountTypeName: '신한은행 대출계좌');
final bankAccountToss = BankAccount(bankToss,  4000000, accountTypeName: '토스뱅크 적금계좌');
final bankAccountKakao = BankAccount(bankKakao,  5000000, accountTypeName: '카카오뱅크 적금계좌');

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
  bankAccountKakao,
];
