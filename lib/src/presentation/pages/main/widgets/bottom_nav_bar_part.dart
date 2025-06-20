part of '../main_page.dart';

class _BottomNavBarPart extends StatelessWidget {
  _BottomNavBarPart(this.router);

  final TabsRouter router;

  final _icons = [Icons.list, Icons.favorite];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomNavigationBar(
        currentIndex: router.activeIndex,
        onTap: (value) {
          router.setActiveIndex(value);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 4,
        items: _icons
            .map((e) => BottomNavigationBarItem(icon: Icon(e), label: ''))
            .toList(),
      ),
    );
  }
}
