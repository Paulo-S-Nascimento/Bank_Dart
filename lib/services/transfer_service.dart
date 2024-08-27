import 'package:dart_bank/models/account.dart';

void transferService(Account origin, Account destination, double value) {

  // Não permite a transferencia de valores entre a mesma conta
  if (origin == destination) {
    throw Exception("Erro! a conta origem é igual a conta de destinação.");
  }

  // Não permite a transferencia de valores menor ou igual a zero
  if (value <= 0) {
    throw Exception("O valor da transferência deve ser maior que zero.");
  }

  // Não permite a transferencia de valores maiores que o saldo da conta de origem
  if (origin.getBalance() < value) {
    throw Exception("Saldo insuficiente na conta de origem.");
  }

  // Se tudo estiver ok, realiza a transferência!
  origin.removeBalance(value);
  destination.addBalance(value);
}



