import 'package:eventing/src/domain/entities/file_system/file_system.dart';
import 'package:flutter/material.dart';

class FoldersList extends StatelessWidget {
  const FoldersList({super.key, required this.files, required this.onTap});

  final List<FileSystem> files;
  final void Function(FileSystem file) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final file = files[index];
        final events = file.events;
        return ListTile(
          leading: Icon(Icons.folder_outlined),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(file.name),
              if (events.isNotEmpty)
                Text(
                  'Lastly added: ${file.events.last.title.title}',
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                ),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            onTap(file);
          },
        );
      },
      itemCount: files.length,
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
