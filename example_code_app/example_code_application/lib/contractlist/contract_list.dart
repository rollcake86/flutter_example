import 'package:flutter/material.dart';
import 'contact_list_item.dart';
import 'model/contact.dart';

class ContractsList extends StatelessWidget {

  final List<ContactModal> _contractModel;

  ContractsList(this._contractModel);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContractsList(),
    );
  }

  List<ContractListItem> _buildContractsList(){
    return _contractModel.map((contract) => new ContractListItem(contract)).toList();
  }

}