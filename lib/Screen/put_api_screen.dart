import 'package:flutter/material.dart';
import 'package:put_api/Model/update_model.dart';
import 'package:put_api/Service/put_api_service.dart';

class PutApiScreen extends StatefulWidget {
  const PutApiScreen({super.key});

  @override
  State<PutApiScreen> createState() => _PutApiScreenState();
}

class _PutApiScreenState extends State<PutApiScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  UpdateModel updateData = UpdateModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Put Api"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: jobController,
              decoration: InputDecoration(
                hintText: "Job",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                ),
                onPressed: () {
                  PutApiService()
                      .updateData(nameController.text.toString(),
                          jobController.text.toString())
                      .then((value) {
                    setState(() {
                      updateData = value!;
                    });
                  });
                },
                child: const Text(
                  "Update",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
