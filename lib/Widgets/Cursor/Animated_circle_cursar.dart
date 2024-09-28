import 'package:cv/Widgets/Cursor/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatdedCursorState {
  final BoxDecoration? decoration;
  final Offset offset1; // this show Circle postion
  final Offset offset2; //this show Dot postion
  final Size size1;
  final Size size2;
  AnimatdedCursorState(
      {this.decoration,
      this.offset1 = Offset.zero,
      this.offset2 = Offset.zero,
      this.size1 = Circle1size,
      this.size2 = Circle2size});

  // ignore: constant_identifier_names
  static const Size Circle1size = Size(30, 30);
  // ignore: constant_identifier_names
  static const Size Circle2size = Size(5, 5);
}

class AnimatedCursorProvider extends ChangeNotifier {
  AnimatedCursorProvider();
  AnimatdedCursorState state = AnimatdedCursorState();
  void changecursor(
      {required GlobalKey key, required BoxDecoration boxDecoration}) {
    final renderBox = key.currentContext?.findRenderObject() as RenderBox;
    if (renderBox == null) {
      return;
    } else {
      state = AnimatdedCursorState(
          size1: const Size(60, 60),
          offset1: state.offset1,
          decoration: CursorConstants.boxDecorationHorvered);
      notifyListeners();
    }
  }

  void resetCursor() {
    state = AnimatdedCursorState();
    notifyListeners();
  }

  void updatedCursorPosition(Offset position) {
    state = AnimatdedCursorState(offset1: position, offset2: position);
    notifyListeners();
  }
}

class AnimatedCircleCursor extends StatelessWidget {
  const AnimatedCircleCursor({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnimatedCursorProvider(),
      child: Consumer<AnimatedCursorProvider>(
        builder: (context, value, child) {
          final state = value.state;
          return Stack(
            children: [
              if (child != null) child,
              Positioned.fill(
                child: MouseRegion(
                  opaque: false,
                  // cursor: SystemMouseCursors.click,
                  onHover: (event) => context
                      .read<AnimatedCursorProvider>()
                      .updatedCursorPosition(event.position),
                ),
              ),
              Visibility(
                visible: state.offset1 != Offset.zero,
                child: AnimatedPositioned(
                  top: state.offset1.dy - state.size1.height / 2,
                  left: state.offset1.dx - state.size1.width / 2,
                  width: state.size1.width,
                  height: state.size1.height,
                  duration: const Duration(milliseconds: 100),
                  child: IgnorePointer(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutExpo,
                      decoration:
                          state.decoration ?? CursorConstants.boxDecorationOne,
                      width: state.size1.width,
                      height: state.size1.height,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: state.offset2 != Offset.zero,
                child: AnimatedPositioned(
                  top: state.offset2.dy - state.size2.height / 2,
                  left: state.offset2.dx - state.size2.width / 2,
                  width: state.size2.width,
                  height: state.size2.height,
                  duration: const Duration(milliseconds: 50),
                  child: IgnorePointer(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutExpo,
                      decoration:
                          state.decoration ?? CursorConstants.boxDecorationTwo,
                      width: state.size2.width,
                      height: state.size2.height,
                    ),
                  ),
                ),
              )
            ],
          );
        },
        child: child,
      ),
    );
  }
}

class AnimatdedCircleCursorMouseRegion extends StatefulWidget {
  final Widget? child;
  const AnimatdedCircleCursorMouseRegion({super.key, this.child});

  @override
  State<AnimatdedCircleCursorMouseRegion> createState() =>
      _AnimatdedCircleCursorMouseRegionState();
}

class _AnimatdedCircleCursorMouseRegionState
    extends State<AnimatdedCircleCursorMouseRegion> {
  final GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AnimatedCursorProvider>();

    return MouseRegion(
      key: _key,
      cursor: SystemMouseCursors.click,
      onExit: (_) => cubit.resetCursor(),
      opaque: false,
      onHover: (_) => cubit.changecursor(
          key: _key, boxDecoration: CursorConstants.boxDecorationHorvered),
      child: widget.child,
    );
  }
}
