enum Environment { dev, stg, prod }

class AppFlavors {
  static Environment? appFlavors;

  static String get baseUrl {
    switch (appFlavors) {
      case Environment.dev:
        return 'https://jsonplaceholder.typicode.com/';
      case Environment.stg:
        return '';
      case Environment.prod:
        return '';
      default:
        return '';
    }
  }
}
