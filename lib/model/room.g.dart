// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
      type: json['type'] as String,
      image: json['image'] as String,
      adults: (json['adults'] as num).toDouble(),
      mq: (json['mq'] as num).toDouble(),
      price_for_night: (json['price_for_night'] as num).toDouble(),
    );

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'image': instance.image,
      'adults': instance.adults,
      'mq': instance.mq,
      'price_for_night': instance.price_for_night,
    };
