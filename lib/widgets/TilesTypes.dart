import 'package:flutter/material.dart';

class SettingNormalTile extends StatelessWidget {
  const SettingNormalTile(
      {Key? key,
      required this.text,
      required this.subtext,
      required this.icon,
      this.onTap})
      : super(key: key);
  final text;
  final subtext;
  final icon;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          this.text,
        ),
        subtitle: Text(this.subtext),
        leading: CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: Icon(
              this.icon,
              color: Colors.grey.shade500,
            )),
        onTap: onTap,
      ),
    );
  }
}

class SettingToggleTile extends StatelessWidget {
  SettingToggleTile({
    Key? key,
    required this.text,
    required this.subtext,
    required this.icon,
    required this.onToggle,
    required this.currentTogglevalue,
  }) : super(key: key);
  final text;
  final subtext;
  final icon;
  final onToggle;
  final currentTogglevalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(this.text),
        subtitle: Text(this.subtext),
        leading: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Icon(
            this.icon,
            color: Colors.grey.shade500,
          ),
        ),
        trailing: Switch(
          onChanged: onToggle,
          value: currentTogglevalue,
          activeColor: Colors.deepPurpleAccent.shade200,
        ),
      ),
    );
  }
}

class TitleIconTile extends StatelessWidget {
  TitleIconTile({
    Key? key,
    required this.text,
    required this.onToggle,
    required this.currentTogglevalue,
  }) : super(key: key);
  final text;
  final onToggle;
  final currentTogglevalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(this.text),
        trailing: Switch(
          onChanged: onToggle,
          value: currentTogglevalue,
          activeColor: Colors.deepPurpleAccent.shade200,
        ),
      ),
    );
  }
}

class TitleLeadingIconTile extends StatelessWidget {
  TitleLeadingIconTile({
    Key? key,
    required this.text,
    required this.onToggle,
    required this.currentTogglevalue,
  }) : super(key: key);
  final text;
  final onToggle;
  final currentTogglevalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          this.text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Switch(
          onChanged: onToggle,
          value: currentTogglevalue,
          activeColor: Colors.deepPurpleAccent.shade200,
        ),
      ),
    );
  }
}
