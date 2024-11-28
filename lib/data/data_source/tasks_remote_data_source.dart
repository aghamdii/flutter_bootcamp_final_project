import 'package:dio/dio.dart';

// Respoinsible to communicate with the network (HTTP)
class TasksRemoteDataSource {
  // Dio client -> Communicate with the network
  final Dio _dio = Dio();
  final String _tasksUrl = 'https://dummyjson.com/todos';

  Future<Map<String, dynamic>> getTasks() async {
    final response = await _dio.get(_tasksUrl);
    // 200 -> Success
    if (response.statusCode == 200) {
      return response.data as Map<String, dynamic>;
    }
    throw Exception('Error in fetchTasks function');
  }
}
