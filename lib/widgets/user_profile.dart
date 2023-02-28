import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile();
  final List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  final List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфиденциальность'),
    MenuRowData(Icons.date_range, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Настройки'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserInfo(),
              SizedBox(height: 30),
              _MenuWidget(
                menuRow: firstMenuRow,
              ),
              SizedBox(height: 30),
              _MenuWidget(
                menuRow: secondMenuRow,
              ),
            ],
          ),
        ));
  }
}

class MenuRowData {
  MenuRowData(this.icon, this.text);
  final IconData icon;
  final String text;
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      // ignore: prefer_double_quotes
      '@kanidreamer',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({required this.menuRow});
  final List<MenuRowData> menuRow;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
        ));
  }
}

class _MenuWidgetRow extends StatelessWidget {
  const _MenuWidgetRow({required this.data});
  final MenuRowData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneNameWidget(),
          SizedBox(height: 10),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}

class _UserPhoneNameWidget extends StatelessWidget {
  const _UserPhoneNameWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      // ignore: prefer_double_quotes
      '+996 700 700 700',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      // ignore: prefer_single_quotes
      "Kanyshai",
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget();

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
