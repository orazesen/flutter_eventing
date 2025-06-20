part of '../events_page.dart';

class EventsList extends StatelessWidget {
  EventsList({super.key, required this.fileSystemCubit, required this.events});

  final DateFormat formatter = DateFormat('dd.MM.yyyy');
  final FileSystemCubit fileSystemCubit;
  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
        leading: AspectRatio(
          aspectRatio: 3 / 2,
          child: Image.asset(
            'assets/events/${events[index].imageUrl.url}',
            fit: BoxFit.cover,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              events[index].title.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              formatter.format(events[index].date.dateTime),
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () async {
            if (fileSystemCubit.files.length > 1) {
              await showModalBottomSheet(
                context: context,
                isScrollControlled: false,
                useRootNavigator: true,
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.8,
                ),
                builder: (context) => ModalBottomSheet(
                  title: "Save to...",
                  content: Expanded(
                    child: FoldersList(
                      files: fileSystemCubit.files,
                      onTap: (file) {
                        fileSystemCubit.addFavorite(
                          event: events[index],
                          file: file,
                        );
                        context.router.maybePop();
                      },
                    ),
                  ),
                ),
                enableDrag: false,
                isDismissible: true,
                useSafeArea: true,
              );
            } else {
              fileSystemCubit.addFavorite(event: events[index]);
            }
          },
          icon: Icon(Icons.favorite_outline),
        ),
      ),
      itemCount: events.length,
      separatorBuilder: (context, index) => SizedBox(height: 8),
    );
  }
}
