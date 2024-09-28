import 'package:flutter/material.dart';
import 'package:put_api/Model/update_model.dart';

class UpdateDisplayScreen extends StatelessWidget {
  final String? name, job, updatedAT;
  final UpdateModel updateModel;

  const UpdateDisplayScreen(
      {super.key,
      this.name,
      this.job,
      this.updatedAT,
      required this.updateModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Update Api"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : {$name}"),
            Text("Job : {$job}"),
            Text("Date : {$updatedAT}"),
          ],
        ),
      ),
    );
  }
}
