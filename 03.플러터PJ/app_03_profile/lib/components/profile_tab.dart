import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
            icon: Icon(
          Icons.photo_camera,
        )),
        Tab(
            icon: Icon(
          Icons.photo,
        )),
      ],
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
          ),
          itemCount: 42,
          itemBuilder: (context, index) {
            // debugPrint('순번:$index/컨텍스트:$context');
            return Image.network(
                "https://picsum.photos/id/${index + 1}/200/200");
          },
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
          ),
          itemCount: 42,
          itemBuilder: (context, index) {
            return Image.network(
                "https://picsum.photos/id/${index + 43}/200/200");
          },
        ),
        // Container(color: Colors.blue),
        // Container(color: Colors.red),
      ],
    );
  }
}
