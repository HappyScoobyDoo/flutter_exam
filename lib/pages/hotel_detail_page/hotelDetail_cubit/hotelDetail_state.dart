import 'package:exercise_5/model/hotelDetail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotelDetail_state.freezed.dart';

@freezed
class HotelDetailState with _$HotelDetailState {
  const factory HotelDetailState({
    HotelDetail? hotelDetails,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _HotelDetailState;
}
