// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v5.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:path_provider_foundation/messages.g.dart';

abstract class TestPathProviderApi {
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  String? getDirectoryPath(DirectoryType type);
  String? getContainerPath(String appGroupId);

  static void setup(TestPathProviderApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> directoryChannel =
          BasicMessageChannel<Object?>(
              'dev.flutter.pigeon.PathProviderApi.getDirectoryPath', codec,
              binaryMessenger: binaryMessenger);
      if (api == null) {
        directoryChannel.setMockMessageHandler(null);
      } else {
        directoryChannel.setMockMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PathProviderApi.getDirectoryPath was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final DirectoryType? arg_type =
              args[0] == null ? null : DirectoryType.values[args[0] as int];
          assert(arg_type != null,
              'Argument for dev.flutter.pigeon.PathProviderApi.getDirectoryPath was null, expected non-null DirectoryType.');
          final String? output = api.getDirectoryPath(arg_type!);
          return <Object?>[output];
        });
      }

      final BasicMessageChannel<Object?> containerChannel =
          BasicMessageChannel<Object?>(
              'dev.flutter.pigeon.PathProviderApi.getContainerPath', codec,
              binaryMessenger: binaryMessenger);
      if (api == null) {
        containerChannel.setMockMessageHandler(null);
      } else {
        containerChannel.setMockMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PathProviderApi.getContainerPath was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appGroupId =
              args[0] == null ? null : args[0] as String;
          assert(arg_appGroupId != null,
              'Argument for dev.flutter.pigeon.PathProviderApi.getContainerPath was null, expected non-null DirectoryType.');
          final String? output = api.getContainerPath(arg_appGroupId!);
          return <Object?>[output];
        });
      }
    }
  }
}
