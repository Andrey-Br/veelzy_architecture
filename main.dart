import 'package:architecture/app.dart';
import 'package:architecture/repositories/local_repository/local_storage_repository.dart';
import 'package:architecture/repositories/local_repository/local_storage_repository_interface.dart';
import 'package:flutter/material.dart';

void main() {
  LocalStorageRepositoryInterface localStorageRepository = LocalStorageRepository();
  // LocalStorageRepositoryInterface localStorageRepository = LocalStorageRepository();

  // final GetIt g;

  runApp(const MyApp());
}
