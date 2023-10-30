import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function? touched;
  final bool active;

  const NavBarItem({
    Key? key,
    required this.icon,
    required this.active,
    this.touched,
  }) : super(key: key);

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // Material state 작업 : Clipping, Elevation, Ink effects
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.touched!();
        },
        // splashColor: Colors.white12,
        // hoverColor: Colors.white12,
        splashColor: const Color.fromARGB(180, 245, 241, 207), // 선택 시 잠시 보이는 색상
        hoverColor: Colors.white12,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              SizedBox(
                height: 60.0,
                width: 80.0,
                child: Row(
                  children: [
                    // item 의 왼쪽 bar 모양의 선택 표시
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 475),
                      height: 35.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                        color:
                            // widget.active ? Colors.white : Colors.transparent,
                            widget.active
                                ? const Color.fromARGB(240, 245, 241, 207)
                                : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                    // item 의 icon
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(
                        widget.icon,
                        color: widget.active ? Colors.white : Colors.white54,
                        size: 19.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
