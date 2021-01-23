import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:notes/entities/entities.dart';

class User extends Equatable {
  final String id;
  final String email;

  const User({
    @required this.id,
    @required this.email,
  });

  @override
  List<Object> get props => [id, email];

  @override
  String toString() => '''User{
    id: $id,
    email: $email
  }''';

  //convert model to entity
  UserEntity toEntity() {
    return UserEntity(id: id, email: email);
  }

  //convert User Entity --> User
  factory User.fromEntity(UserEntity entity) {
    return User(id: entity.id, email: entity.email);
  }
}
