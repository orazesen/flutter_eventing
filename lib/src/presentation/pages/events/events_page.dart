import 'package:auto_route/auto_route.dart';
import 'package:eventing/src/domain/entities/event/event.dart';
import 'package:eventing/src/presentation/common_cubits/file_system/file_system_cubit.dart';
import 'package:eventing/src/presentation/pages/events/cubit/events_cubit.dart';
import 'package:eventing/src/presentation/shared/folders_list.dart';
import 'package:eventing/src/presentation/shared/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

part './widgets/events_list.dart';

@RoutePage()
class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  late final EventsCubit _eventsCubit = context.read<EventsCubit>()
    ..getEvents();
  late final FileSystemCubit _fileSystemCubit = context.read<FileSystemCubit>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events'), centerTitle: false),
      body: BlocBuilder<EventsCubit, EventsState>(
        bloc: _eventsCubit,
        builder: (context, state) => state.when(
          loading: () => Center(child: CircularProgressIndicator()),
          loaded: (events) =>
              EventsList(fileSystemCubit: _fileSystemCubit, events: events),
          empty: () => Center(child: Text('Empty')),
        ),
      ),
    );
  }
}
