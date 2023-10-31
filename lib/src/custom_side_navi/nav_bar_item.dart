import 'package:flutter/material.dart';

import '../cutom_side_navi/curve_painter.dart';

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final bool selected;
  final Function? onTap;
  final Color? forwardColor;
  final Color? backwardColor;

  const NavBarItem({
    Key? key,
    required this.icon,
    this.selected = false,
    this.onTap,

    /// 선택 시 색상
    this.forwardColor,

    /// 선택 안했을 때 색상
    this.backwardColor,
  }) : super(key: key);

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;

  late Animation<double> _anim1;
  late Animation<double> _anim2;
  late Animation<double> _anim3;
  late Animation<Color?> _color;

  bool hovered = false;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 275),
    );

    _anim1 = Tween(begin: 101.0, end: 75.0).animate(_controller1); // 입구의 곡선 정도
    _anim2 = Tween(begin: 101.0, end: 25.0).animate(_controller2); // 선택 시의 깊이
    _anim3 = Tween(begin: 101.0, end: 50.0).animate(_controller2); // 선택 시의 뾰족함
    /// 선택 시 아이콘 색상
    _color = ColorTween(end: widget.backwardColor, begin: widget.forwardColor)
        .animate(_controller2);
    // _color = ColorTween(end: const Color(0xff332A7C), begin: Colors.white)
    //     .animate(_controller2);

    _controller1.addListener(() {
      setState(() {});
    });
    _controller2.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(NavBarItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.selected) {
      Future.delayed(const Duration(milliseconds: 10), () {
        //_controller1.reverse();
      });
      _controller1.reverse();
      _controller2.reverse();
    } else {
      Future.delayed(const Duration(milliseconds: 10), () {
        _controller1.forward();
        _controller2.forward();
        //_controller2.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) widget.onTap!();
      },
      //
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            hovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            hovered = false;
          });
        },
        child: Container(
          width: 101.0,
          color:
              hovered && !widget.selected ? Colors.white12 : Colors.transparent,
          child: Stack(
            children: [
              Positioned(
                child: CustomPaint(
                  painter: CurvePainter(
                    value1: 0,
                    animValue1: _anim3.value,
                    animValue2: _anim2.value,
                    animValue3: _anim1.value,

                    /// 선택 시 배경 색상
                    color: widget.forwardColor,
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
                width: 101.0,
                child: Center(
                  child: Icon(
                    widget.icon,

                    /// 선택 시 아이콘 색상
                    color: _color.value ?? Colors.white,
                    size: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
