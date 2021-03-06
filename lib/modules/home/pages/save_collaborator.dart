import 'package:crud_getx/components/text_field_component.dart';
import 'package:crud_getx/models/collaborator_model.dart';
import 'package:crud_getx/modules/home/controllers/home_controller.dart';
import 'package:crud_getx/theme/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaveCollaborator extends GetView<HomeController> {
  const SaveCollaborator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salvar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimension.dm_16,
            horizontal: AppDimension.dm_24,
          ),
          child: Form(
            key: controller.form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFieldComponent(label: 'Nome', controller: controller.nameEC),
                const SizedBox(height: AppDimension.dm_16),
                TextFieldComponent(label: 'Cargo', controller: controller.jobEC),
                const SizedBox(height: AppDimension.dm_24),
                ElevatedButton(
                  child: const Text('Cadastrar'),
                  onPressed: () => controller.saveCollaborator(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
