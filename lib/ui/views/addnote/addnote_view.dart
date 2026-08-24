import 'package:flutter/material.dart';
import 'package:my_stacked_notes/app/app.dart';
import 'package:my_stacked_notes/ui/common/ui_helpers.dart';
import 'package:my_stacked_notes/ui/views/addnote/addnote_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'addnote_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: "title"),
  FormTextField(name: "description"),
])
class AddnoteView extends StackedView<AddnoteViewModel> with $AddnoteView {
  const AddnoteView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddnoteViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                    hint: Text("title"), enabledBorder: OutlineInputBorder()),
              ),
              verticalSpace(20),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                    hint: Text("description"),
                    enabledBorder: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await viewModel.addNote();
                  },
                  child: Text("AddNote"))
            ],
          )),
    );
  }

  @override
  AddnoteViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddnoteViewModel();
}
