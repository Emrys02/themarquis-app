// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ludo_session.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LudoSessionDataImplAdapter extends TypeAdapter<_$LudoSessionDataImpl> {
  @override
  final int typeId = 2;

  @override
  _$LudoSessionDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LudoSessionDataImpl(
      id: fields[0] as String,
      playerCount: fields[1] as int,
      status: fields[2] as String,
      nextPlayer: fields[3] as String,
      nonce: fields[4] as String,
      color: fields[5] as String,
      playAmount: fields[6] as String,
      playToken: fields[7] as String,
      sessionUserStatus: (fields[8] as List).cast<LudoSessionUserStatus>(),
      nextPlayerId: fields[9] as int,
      creator: fields[10] as String,
      createdAt: fields[11] as DateTime,
      v: (fields[12] as List).cast<String>(),
      r: (fields[13] as List).cast<String>(),
      s: (fields[14] as List).cast<String>(),
      randomNumbers: (fields[15] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$LudoSessionDataImpl obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.playerCount)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.nextPlayer)
      ..writeByte(4)
      ..write(obj.nonce)
      ..writeByte(5)
      ..write(obj.color)
      ..writeByte(6)
      ..write(obj.playAmount)
      ..writeByte(7)
      ..write(obj.playToken)
      ..writeByte(9)
      ..write(obj.nextPlayerId)
      ..writeByte(10)
      ..write(obj.creator)
      ..writeByte(11)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.sessionUserStatus)
      ..writeByte(12)
      ..write(obj.v)
      ..writeByte(13)
      ..write(obj.r)
      ..writeByte(14)
      ..write(obj.s)
      ..writeByte(15)
      ..write(obj.randomNumbers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LudoSessionDataImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LudoSessionUserStatusImplAdapter
    extends TypeAdapter<_$LudoSessionUserStatusImpl> {
  @override
  final int typeId = 3;

  @override
  _$LudoSessionUserStatusImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LudoSessionUserStatusImpl(
      playerId: fields[0] as int,
      playerTokensPosition: (fields[1] as List).cast<String>(),
      playerWinningTokens: (fields[2] as List).cast<bool>(),
      userId: fields[3] as int,
      email: fields[4] as String,
      role: fields[5] as String,
      status: fields[6] as String,
      profileImageUrl: fields[7] as String?,
      points: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$LudoSessionUserStatusImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.playerId)
      ..writeByte(3)
      ..write(obj.userId)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.role)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.profileImageUrl)
      ..writeByte(8)
      ..write(obj.points)
      ..writeByte(1)
      ..write(obj.playerTokensPosition)
      ..writeByte(2)
      ..write(obj.playerWinningTokens);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LudoSessionUserStatusImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LudoSessionDataImpl _$$LudoSessionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LudoSessionDataImpl(
      id: json['id'] as String,
      playerCount: (json['playerCount'] as num).toInt(),
      status: json['status'] as String,
      nextPlayer: json['nextPlayer'] as String,
      nonce: json['nonce'] as String,
      color: json['color'] as String,
      playAmount: json['playAmount'] as String,
      playToken: json['playToken'] as String,
      sessionUserStatus: (json['sessionUserStatus'] as List<dynamic>)
          .map((e) => LudoSessionUserStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPlayerId: (json['nextPlayerId'] as num).toInt(),
      creator: json['creator'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      v: (json['v'] as List<dynamic>).map((e) => e as String).toList(),
      r: (json['r'] as List<dynamic>).map((e) => e as String).toList(),
      s: (json['s'] as List<dynamic>).map((e) => e as String).toList(),
      randomNumbers: (json['randomNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LudoSessionDataImplToJson(
        _$LudoSessionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'playerCount': instance.playerCount,
      'status': instance.status,
      'nextPlayer': instance.nextPlayer,
      'nonce': instance.nonce,
      'color': instance.color,
      'playAmount': instance.playAmount,
      'playToken': instance.playToken,
      'sessionUserStatus': instance.sessionUserStatus,
      'nextPlayerId': instance.nextPlayerId,
      'creator': instance.creator,
      'createdAt': instance.createdAt.toIso8601String(),
      'v': instance.v,
      'r': instance.r,
      's': instance.s,
      'randomNumbers': instance.randomNumbers,
    };

_$LudoSessionUserStatusImpl _$$LudoSessionUserStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$LudoSessionUserStatusImpl(
      playerId: (json['playerId'] as num).toInt(),
      playerTokensPosition: (json['playerTokensPosition'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      playerWinningTokens: (json['playerWinningTokens'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
      userId: (json['userId'] as num).toInt(),
      email: json['email'] as String,
      role: json['role'] as String,
      status: json['status'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      points: (json['points'] as num).toInt(),
    );

Map<String, dynamic> _$$LudoSessionUserStatusImplToJson(
        _$LudoSessionUserStatusImpl instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'playerTokensPosition': instance.playerTokensPosition,
      'playerWinningTokens': instance.playerWinningTokens,
      'userId': instance.userId,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'profileImageUrl': instance.profileImageUrl,
      'points': instance.points,
    };