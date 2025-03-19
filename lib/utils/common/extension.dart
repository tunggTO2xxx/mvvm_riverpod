extension NullCheck<T> on T? {
  bool get isNullOrEmpty {
    if (this == null) {
      return true;
    }
    if (this is String) {
      if (this == "") {
        return true;
      }
    }
    if (this is double && this == 0) {
      return true;
    }

    return false;
  }
}

extension StringEx on String? {
  String get orEmpty {
    if (!isNullOrEmpty) {
      return this!;
    }
    return '';
  }

  String get orZero {
    if (!isNullOrEmpty) {
      return this!;
    }
    return '0';
  }

  String get orDash {
    if (!isNullOrEmpty) {
      return this!;
    }
    return '--';
  }

  String orString(String value) {
    if (!isNullOrEmpty) {
      return this!;
    }
    return value;
  }
}