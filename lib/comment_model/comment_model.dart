class CommentModel {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommentModel({this.id, this.body, this.name, this.email, this.postId});

  CommentModel.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() =>
      {'postId': postId, 'id': id, 'name': name, 'email': email, 'body': body};
}
