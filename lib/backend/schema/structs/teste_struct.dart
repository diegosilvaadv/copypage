// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TesteStruct extends BaseStruct {
  TesteStruct({
    String? nome,
  }) : _nome = nome;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  static TesteStruct fromMap(Map<String, dynamic> data) => TesteStruct(
        nome: data['nome'] as String?,
      );

  static TesteStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TesteStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static TesteStruct fromSerializableMap(Map<String, dynamic> data) =>
      TesteStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TesteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TesteStruct && nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([nome]);
}

TesteStruct createTesteStruct({
  String? nome,
}) =>
    TesteStruct(
      nome: nome,
    );
