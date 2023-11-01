// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:tdd_tutorial/src/authentication/domain/entities/user.dart';

import '../../../../core/utils/typedef.dart';

class Usermodel extends User {
  const Usermodel({required super.id, required super.createdAt, required super.name, required super.avatar});

  const Usermodel.empty()
      : this(
          id: 1,
          avatar: '',
          createdAt: '',
          name: '',
        );

  factory Usermodel.fromJson(String source) => Usermodel.fromMap(json.decode(source) as DataMap);
  String toJson() => json.encode(toMap());

  Usermodel.fromMap(DataMap map)
      : this(avatar: map['avatar'] as String, id: map['id'] as int, createdAt: map['createdAt'] as String, name: map['name'] as String);

  DataMap toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'name': name,
      'avatar': avatar,
    };
  }

  Usermodel copyWith({
    int? id,
    String? createdAt,
    String? name,
    String? avatar,
  }) {
    return Usermodel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
    );
  }
}
