import 'package:Giuseppe_Barbagallo_exam/common/widgets/hotel_image.dart';
import 'package:Giuseppe_Barbagallo_exam/pages/hotel_detail_page/widgets/info_row.dart';
import 'package:Giuseppe_Barbagallo_exam/pages/hotels_page/hotels_cubit/hotels_cubit.dart';
import 'package:flutter/material.dart';
import 'package:Giuseppe_Barbagallo_exam/model/hotel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HotelItem extends StatelessWidget {
  final Hotel hotel;

  const HotelItem({
    super.key,
    required this.hotel,
  });
/*
  foto principale (main_photo)
  nome (name)
  descrizione (description)
  valutazione media (vote_average)
*/
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        ListTile(
            leading: HotelImage(
              imageUrl: hotel.main_photo,
              size: 50,
            ),
            title: Text(hotel.name.toString()),
            onTap: () => context.go('/details/${hotel.id}')
            //title: Text(hotel.description.toString(),
            ),
        const SizedBox(height: 16),
        InfoRow(
          label: 'Descrizione',
          value: hotel.description.toString(),
        ),
        const Divider(),
        InfoRow(
          label: 'Valutazione Media',
          value: 'Valutazione media: ${hotel.vote_average}',
        ),
        const Divider(),
      ],
    );
/*
    return ListTile(
        leading: HotelImage(
          imageUrl: hotel.main_photo,
          size: 50,
        ),
        title: Text(hotel.name.toString()),
        onTap: () => context.go('/details/${hotel.id}')
        //title: Text(hotel.description.toString(),
        );
  }*/
  }
}
