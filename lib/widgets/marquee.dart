import 'package:flutter/material.dart';

class MarqueeWidget extends StatefulWidget {
    final String text;
    final double velocity;
    final Color color;
    final double gap;
    final Axis direction;

    const MarqueeWidget({super.key,
        required this.text,
        required this.color,
        this.velocity = 50.0,
        this.gap = 50.0,
        this.direction = Axis.horizontal,
    });

    @override
    _MarqueeWidgetState createState() => _MarqueeWidgetState();
}

class _MarqueeWidgetState extends State<MarqueeWidget> {
    ScrollController? _controller;

    void _startScrolling() {
        Future.delayed(const Duration(milliseconds: 500)).then((_) {
            _controller?.animateTo(
                _controller?.position.maxScrollExtent ?? 0.0,
                duration: const Duration(seconds: 30),
                curve: Curves.linear,
            ).then((_) {
                _startScrolling();
            });
        });
    }

    @override
    void initState() {
        super.initState();
        _controller = ScrollController(initialScrollOffset: widget.direction == Axis.horizontal ? widget.gap : 0.0);
    }

    @override
    void didChangeDependencies() {
        super.didChangeDependencies();
        _startScrolling(); // Call _startScrolling here
    }

    @override
    void dispose() {
        _controller!.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(5)
            ),
            child: SingleChildScrollView(
                controller: _controller,
                scrollDirection: widget.direction,
                physics: const NeverScrollableScrollPhysics(),
                child: Padding(
                    padding: widget.direction == Axis.horizontal ? EdgeInsets.only(left: widget.gap) : EdgeInsets.only(top: widget.gap),
                    child: Text(
                        widget.text,
                        style: const TextStyle(fontSize: 14.0), // Adjust text style as needed
                    ),
                ),
            ),
        );
    }
}
