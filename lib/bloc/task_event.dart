part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();
}

class CreateTaskEvent extends TaskEvent {
  final Task task;

  CreateTaskEvent(this.task);

  @override
  List<Object> get props => [task];
}

class DeleteTaskEvent extends TaskEvent {
  final String taskId;

  DeleteTaskEvent(this.taskId);

  @override
  List<Object> get props => [taskId];
}
