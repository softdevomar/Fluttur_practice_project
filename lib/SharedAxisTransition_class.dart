


// class SharedAxisTransition_class extends StatefulWidget {
//   const SharedAxisTransition_class({Key? key}) : super(key: key);
//
//   @override
//   State<SharedAxisTransition_class> createState() => _SharedAxisTransition_classState();
// }
//
// class _SharedAxisTransition_classState extends State<SharedAxisTransition_class> {
//   int _selectedIndex = 0;
//
//   final List<Color> _colors = [Colors.white, Colors.red, Colors.yellow];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Page Transition Example'),
//       ),
//       body: PageTransitionSwitcher(
//         // reverse: true, // uncomment to see transition in reverse
//         transitionBuilder: (
//             Widget child,
//             Animation<double> primaryAnimation,
//             Animation<double> secondaryAnimation,
//             ) {
//           return SharedAxisTransition(
//             animation: primaryAnimation,
//             secondaryAnimation: secondaryAnimation,
//             transitionType: SharedAxisTransitionType.horizontal,
//             child: child,
//           );
//         },
//         child: Container(
//             key: ValueKey<int>(_selectedIndex),
//             color: _colors[_selectedIndex],
//             child: Center(
//               child: FlutterLogo(size: 300),
//             )
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "White",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Red',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label:"Yellow",
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: (int index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
