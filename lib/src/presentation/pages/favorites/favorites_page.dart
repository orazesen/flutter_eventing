import 'package:auto_route/auto_route.dart';
import 'package:eventing/app/router/app_router.gr.dart';
import 'package:eventing/src/domain/entities/file_system/file_system.dart';
import 'package:eventing/src/presentation/common_cubits/file_system/file_system_cubit.dart';
import 'package:eventing/src/presentation/pages/favorites/widgets/content.dart';
import 'package:eventing/src/presentation/shared/folders_list.dart';
import 'package:eventing/src/presentation/shared/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late final FileSystemCubit _fileSystemCubit = context.read<FileSystemCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () async {
              final name =
                  await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => ModalBottomSheet(
                          title: "Creating folder...",
                          content: Content(),
                        ),
                        enableDrag: false,
                        isDismissible: true,
                        useSafeArea: true,
                        useRootNavigator: true,
                      )
                      as String?;

              if (name != null && name.isNotEmpty) {
                _fileSystemCubit.addFolder(
                  FileSystem(
                    id: Uuid().v4(),
                    name: name,
                    events: [],
                    size: 0,
                    createdAt: DateTime.now(),
                    modifiedAt: DateTime.now(),
                  ),
                );
              }
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder<FileSystemCubit, FileSystemState>(
        bloc: _fileSystemCubit,
        builder: (context, state) => state.when(
          loading: () => Center(child: CircularProgressIndicator()),
          loaded: (files) => FoldersList(
            files: files,
            onTap: (file) {
              context.pushRoute(FavoriteEventsRoute(file: file));
            },
          ),
          empty: () => Center(child: Text('Empty')),
        ),
      ),
    );
  }
}
