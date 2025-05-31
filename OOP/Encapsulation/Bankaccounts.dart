class Bankacccounts {
  int _ID;
  String _Firstname;
  String _Lastname;
  double _Balance;
  String _phone;
  Bankacccounts(
    this._ID,
    this._Firstname,
    this._Lastname,
    this._Balance,
    this._phone,
  );

  int get getID => _ID;
  String get getFullName => " $_Firstname $_Lastname ";
  double get getBalance => _Balance;
  String get getphone => _phone;

  set Firstname(String firstname) {
    this._Firstname = firstname;
  }

  set Lastname(String lastname) {
    this._Lastname = lastname;
  }

  set phone(String phone_) {
    this._phone = phone_;
  }

  set Deposit(double ammount) {
    ammount > 0 ? _Balance += ammount : print("Inavalid Value ");
  }

  set withdrow(double ammount) {
    if (ammount > 0 && ammount <= _Balance) {
      _Balance -= ammount;
      print("successful withdrow");
    } else
      print("Inavalid Value ");
  }

  void Transfer(Bankacccounts objfrom, Bankacccounts objTo, double ammount) {
    if (objfrom._Balance > 0 && ammount <= objfrom._Balance) {
      objfrom._Balance -= ammount;
      objTo._Balance += ammount;
    }
  }
}
