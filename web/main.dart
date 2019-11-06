// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:flutter_web_landingpage/main.dart' as app;
import 'package:firebase/firebase.dart';

main() async {
  await ui.webOnlyInitializePlatform();
  // Supply your values here for firebase to be active
  initializeApp(
      apiKey: "",
      authDomain: "",
      databaseURL: "",
      storageBucket: "",
      messagingSenderId: "",
      projectId: "");
  app.main();
}
