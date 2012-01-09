// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// Dart test to check that catch clause specifies a type.

main() {
  try {
    throw "Hello";
  } catch (e) {  // Need final, var or type.
    Expect.equals(true, false);
  }
}
