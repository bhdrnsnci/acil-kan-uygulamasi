class Notification {
  int id;
  String name;
  String message;
  String date;

  Notification.withId(int id, String name, String message, String date) {
    this. id = id;
    this.name = name;
    this.message = message;
    this.date = date;
  }

  Notification(String name, String message, String date) {
    this.name = name;
    this.message = message;
    this.date = date;
  }

  Notification.withoutInfo() {
  }
}