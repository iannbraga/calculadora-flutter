class Memory {
  String _value = '0';

  void applyCommand(String command) {
    if (command == 'C') {
      _value = '0';
    } else {
      _value += command;
    }
  }

  String get value {
    return _value;
  }
}
