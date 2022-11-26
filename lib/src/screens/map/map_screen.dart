import 'package:test_app/src/common/widgets/search_bar_widget.dart';
import 'package:test_app/src/common/constants/color_constants.dart';
import 'package:test_app/src/common/constants/padding_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'widgets/rounded_icon_button.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(43.229789, 76.901491),
              zoom: 10,
            ),
            zoomControlsEnabled: false,
            markers: markers,
            mapToolbarEnabled: false,
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
          ),
          const Positioned(
            bottom: 90,
            right: 16,
            child: RoundedIconButton(
              icon: Icon(
                CupertinoIcons.compass,
                color: CupertinoColors.black,
                size: 30,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: AppPaddings.horizontal.copyWith(top: 10),
              child: const SearchBarWidget(
                backgroundColor: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
