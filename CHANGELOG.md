# Change Log

## [1.3.2](https://github.com/nicklockwood/GZIP/releases/tag/1.3.2) (2024-03-25)

- Minimum deployment target for macOS is now 10.13
- Minimum deployment target for tvOS is now 11.0
- Updated podspec to reflect MIT license

## [1.3.1](https://github.com/nicklockwood/GZIP/releases/tag/1.3.1) (2023-09-19)

- Minimum deployment target for iOS is now 11.0.

## [1.3.0](https://github.com/nicklockwood/GZIP/releases/tag/1.3.0) (2020-04-26)

- Added support for Swift Package Manager
- Fixed watchOS and tvOS targets
- Combined platform-specific targets into one

## [1.2.3](https://github.com/nicklockwood/GZIP/releases/tag/1.2.3) (2018-11-19)

- Fixed Xcode 10.1 warnings
- Added compatibility regression tests
- Switched to more-conventional MIT license

## [1.2.2](https://github.com/nicklockwood/GZIP/releases/tag/1.2.2) (2018-09-18)

- Fixed Xcode 10 warnings

## [1.2.1](https://github.com/nicklockwood/GZIP/releases/tag/1.2.1) (2017-07-03)

- Fixed incorrect case in header import

## [1.2](https://github.com/nicklockwood/GZIP/releases/tag/1.2) (2017-05-18)

- Removed dlopen, as Apple have begun rejecting apps that use it.
- Minimum deployment target is now iOS 8.0.
- Added watchOS / tvOS support.
- Added Carthage support.

## [1.1.1](https://github.com/nicklockwood/GZIP/releases/tag/1.1.1) (2015-07-24)

- Fixed crash on iOS 9.
- Added performance tests.

## [1.1](https://github.com/nicklockwood/GZIP/releases/tag/1.1) (2015-07-17)

- Added `isGzippedData` method.
- GZIP will no longer re-encode already-gzipped data, nor try  (and fail) to decode ungzipped data.
- GZIP now uses dlopen to load the libz.dylib at runtime, so there's no need to include it manually in your project.
- Fixed warnings and errors on Xcode 7

## [1.0.3](https://github.com/nicklockwood/GZIP/releases/tag/1.0.3) (2014-07-02)

- Fixed new warnings in Xcode 6
- Added Travis CI support

## [1.0.2](https://github.com/nicklockwood/GZIP/releases/tag/1.0.2) (2013-12-24)

- Now complies with -Weverything warning level

## [1.0.1](https://github.com/nicklockwood/GZIP/releases/tag/1.0.1) (2013-09-25)

- Added podspec
- Renamed source files
- Verified compliance with iOS 7 / Mac OS 10.8
- Verified compliance with -Wextra warning level


## [1.0](https://github.com/nicklockwood/GZIP/releases/tag/1.0) (2012-04-06)

- First release
