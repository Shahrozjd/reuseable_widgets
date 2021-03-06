// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

abstract class MaasAppPage extends StatelessWidget {
  const MaasAppPage(this.leading, this.title);

  final Widget leading;
  final String title;
}
