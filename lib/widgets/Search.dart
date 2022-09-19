// import 'package:flutter/material.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
// import 'package:music_app/widgets/AppBottomBar.dart';
//
// Widget buildFloatingSearchBar(context) {
//   final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
//
//   return FloatingSearchBar(
//     hint: 'Search...',
//     scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
//     transitionDuration: const Duration(milliseconds: 800),
//     transitionCurve: Curves.easeInOut,
//     physics: const BouncingScrollPhysics(),
//     axisAlignment: isPortrait ? 0.0 : -1.0,
//     openAxisAlignment: 0.0,
//     width: isPortrait ? 600 : 500,
//     debounceDelay: const Duration(milliseconds: 500),
//     onQueryChanged: (query) {
//       // Call your model, bloc, controller here.
//     },
//     transition: CircularFloatingSearchBarTransition(),
//     actions: [
//       FloatingSearchBarAction(
//         showIfOpened: false,
//         child: CircularButton(
//           icon: const Icon(Icons.search),
//           onPressed: () {},
//         ),
//       ),
//       FloatingSearchBarAction.searchToClear(
//         showIfClosed: false,
//       ),
//     ],
//     builder: (context, transition) {
//       return ClipRRect(
//         borderRadius: BorderRadius.circular(8),
//         child: Material(
//           color: Colors.white,
//           elevation: 4.0,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: Colors.accents.map((color) {
//               return Container(height: 112, color: color);
//             }).toList(),
//           ),
//         ),
//       );
//     },
//   );
// }
