#!/usr/bin/env bash
####### Variables you can edit to change build config, or set same environment variables before script execution #######
SKIA_VERSION="${SKIA_VERSION:="m116-47d3027-1"}" # Version of Skia m###-commit-sha-#. This commit sha will be cloned from repository https://github.com/JetBrains/skia
SKIA_DEBUG_MODE="${SKIA_DEBUG_MODE:="false"}" # in debug mode Skiko will be published with postix "+debug", for example "0.0.0-SNAPSHOT+debug"
SKIA_TARGET="${SKIA_TARGET:="iosSim"}" # possible values: "ios", "iosSim", "macos", "windows", "linux", "wasm", "android", "tvos", "tvosSim"
# For M1 Mac use "iosSim" to build for simulator, and ios to build for device.
# For Intel Mac - use "ios" target to build for iOS x64 simulator.
# For Desktop JVM use "macos", "windows", "linux"

########################################################################################################################
SKIKO_PACK_URL="https://github.com/JetBrains/skia-pack.git"
SKIKO_PACK_BRANCH="main"
########################################################################################################################
./build-with-local-skia-runtime.sh \
  "$SKIA_VERSION" \
  "$SKIA_DEBUG_MODE" \
  "$SKIA_TARGET" \
  "$SKIKO_PACK_URL" \
  "$SKIKO_PACK_BRANCH"