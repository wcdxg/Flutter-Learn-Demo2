import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<int> mList;
  List<ExpandStateBean> expandStateList;

//  _ExpansionPanelListDemoState() {
//    mList = List();
//    expandStateList = List();
//    for (int i = 0; i < 10; i++) {
//      mList.add(i);
//      expandStateList.add(ExpandStateBean(false, i));
//    }
//  }

  @override
  void initState() {
    super.initState();
    mList = List();
    expandStateList = List();
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(false, i));
    }
  }

  _setCurrentIndex(int index, isExpanded) {
    setState(() {
      expandStateList[index].isOpen = !isExpanded;
//      expandStateList.forEach((item) {
//        if (item.index == index) {
//          item.isOpen = !isExpanded;
//        }
//      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel List'),
      ),
      body: SingleChildScrollView(
        //ExpansionPanelList必须放到可以滚动的View里面
        child: ExpansionPanelList(
          expansionCallback: (index, bol) {
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index) {
            return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(title: Text('This is No.$index'));
                },
                body: ListTile(
                  subtitle: Text('Hahaha'),
                  title: Text('展开了第$index个'),
                ),
                isExpanded: expandStateList[index].isOpen);
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  var index;

  ExpandStateBean(this.isOpen, this.index);
}
