class Note {
  String? username;
  int? rno;
  int? phone;
  String? email;

  Note({this.username, this.rno, this.phone, this.email});

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      username: map["username"],
      rno: int.tryParse(map["rno"]),
      phone: int.tryParse(map["phone"]),
      email: map["email"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "username": username,
      "rno": rno!.toString(),
      "phone": phone!.toString(),
      "email": email,
    };
  }
}
