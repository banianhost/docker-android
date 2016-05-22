# Dockerfile for Android Projects

This is a Dockerfile to make minumum images for Android projects, including gradle.
No `ant`, `maven`, nor `android-ndk` are included.

## Included

* OpenJDK 8
* Android SDK
* Android Support Libraries
* Google Play Services
* Gradle build system

### Versions

* Android SDK: `24.4.1`
* Android components: 
 - platform-tools
 - build-tools-`25.1.6`
 -  android-`25`
* Google components: 
 - extra-android-m2repository
 - extra-google-m2repository
* Gradle: `2.13`

## Maintainance

* Just rebuild it for minor updates
* Update components for major updates
  * You can find component ids by `android list sdk --all --extended`

# Authors

Pooya Parsa <pooya@pi0.ir>
FUJI Goro (gfx) <g.psy.va+github@gmail.com>

# License

The MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION

