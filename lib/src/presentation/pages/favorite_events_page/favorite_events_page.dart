import 'package:auto_route/auto_route.dart';
import 'package:eventing/src/domain/entities/file_system/file_system.dart';
import 'package:eventing/src/presentation/common_cubits/file_system/file_system_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class FavoriteEventsPage extends StatefulWidget {
  const FavoriteEventsPage({super.key, required this.file});
  final FileSystem file;

  @override
  State<FavoriteEventsPage> createState() => _FavoriteEventsPageState();
}

class _FavoriteEventsPageState extends State<FavoriteEventsPage> {
  late final FileSystemCubit _fileSystemCubit = context.read<FileSystemCubit>();
  final DateFormat formatter = DateFormat('dd.MM.yyyy');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.file.name), centerTitle: false),
      body: ListView.separated(
        itemBuilder: (context, index) => Dismissible(
          key: Key(
            widget.file.events[index].id.toString(),
          ), // Unique key is required
          direction: DismissDirection.endToStart, // Or any other direction
          onDismissed: (direction) {
            _fileSystemCubit.removeFavorite(
              file: widget.file,
              event: widget.file.events[index],
            );
            context.maybePop();
          },
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.delete, color: Colors.white),
          ),
          child: ListTile(
            leading: AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.asset(
                'assets/events/${widget.file.events[index].imageUrl.url}',
                fit: BoxFit.cover,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.file.events[index].title.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  formatter.format(widget.file.events[index].date.dateTime),
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
        itemCount: widget.file.events.length,
        separatorBuilder: (context, index) => SizedBox(height: 8),
      ),
    );
  }
}
