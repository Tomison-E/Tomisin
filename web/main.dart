// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:flutter_web_landingpage/main.dart' as app;
import 'package:firebase/firebase.dart';

main() async {
  await ui.webOnlyInitializePlatform();
  initializeApp(
      apiKey: "AIzaSyBFuePojxG8ixS1Drk8rciN44lc_jOEoTk",
      authDomain: "tomisin-edc61.firebaseapp.com",
      databaseURL: "https://tomisin-edc61.firebaseio.com",
      storageBucket: "tomisin-edc61.appspot.com",
      messagingSenderId: "1018450484935",
      projectId: "tomisin-edc61");
  app.main();
}
