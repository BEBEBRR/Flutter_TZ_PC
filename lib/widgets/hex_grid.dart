import 'dart:async';
import 'package:flutter/material.dart';
import '../models/service_item.dart';
import 'hexagon_service_card.dart';
import 'service_popup.dart';
import 'package:google_fonts/google_fonts.dart';

class HexGrid extends StatefulWidget {
  final List<ServiceItem> services;

  const HexGrid({Key? key, required this.services}) : super(key: key);

  @override
  State<HexGrid> createState() => _HexGridState();
}

class _HexGridState extends State<HexGrid> {
  int? activeIndex;
  Timer? _closeTimer;

  static const List<Offset> _coords = [
    Offset(-128, -222), // 0: верх-лево
    Offset(128, -222), // 1: верх-право
    Offset(256, 0), // 2: право
    Offset(128, 222), // 3: низ-право
    Offset(-128, 222), // 4: низ-лево
    Offset(-256, 0), // 5: лево
  ];

  //попупгап  для карточки
  static const double _popupGap = 330;
  static const double _popupVerticalOffset = -60;

  void _open(int index) {
    _closeTimer?.cancel();
    if (activeIndex != index) {
      setState(() => activeIndex = index);
    }
  }

  void _scheduleClose(int index) {
    _closeTimer?.cancel();
    _closeTimer = Timer(const Duration(milliseconds: 300), () {
      if (mounted && activeIndex == index) {
        setState(() => activeIndex = null);
      }
    });
  }

  @override
  void dispose() {
    _closeTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1500,
      height: 750,
      child: Transform.translate(
        offset: const Offset(0, 40),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'НАШИ\nУСЛУГИ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    height: 1.1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            for (int i = 0; i < 6; i++)
              Transform.translate(
                offset: _coords[i],
                child: _buildCard(i),
              ),
            if (activeIndex != null) _buildPopup(activeIndex!),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(int index) {
    if (index >= widget.services.length) return const SizedBox();
    return HexagonServiceCard(
      iconPath: widget.services[index].iconPath,
      title: widget.services[index].title,
      onTap: () {
        print('Кликнули на: ${widget.services[index].title}');
      },
      onHover: (isHovered) {
        if (isHovered) {
          _open(index);
        } else {
          _scheduleClose(index);
        }
      },
    );
  }

  Widget _buildPopup(int index) {
    final hexPos = _coords[index];
    final isLeftSide = hexPos.dx < 0;
    final popupOffset = Offset(
      hexPos.dx + (isLeftSide ? -_popupGap : _popupGap),
      hexPos.dy + _popupVerticalOffset,
    );

    return Transform.translate(
      offset: popupOffset,
      child: MouseRegion(
        onEnter: (_) => _open(index),
        onExit: (_) => _scheduleClose(index),
        child: ServicePopup(service: widget.services[index]),
      ),
    );
  }
}
