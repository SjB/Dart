// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DeviceOrientationEvent extends Event {

  num get alpha();

  num get beta();

  num get gamma();

  void initDeviceOrientationEvent(String type = null, bool bubbles = null, bool cancelable = null, num alpha = null, num beta = null, num gamma = null);
}
