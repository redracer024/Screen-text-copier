#!/usr/bin/env sh

Copyright 2017 the original author or authors.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
##############################################################################

Gradle wrapper start up script for UN*X
##############################################################################

Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS.
DEFAULT_JVM_OPTS=""
APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")

Use the trap command to catch signals and clean up temporary files.
Define a cleanup function
cleanup() {
rm -f "$TMP_FILE"
}

Trap signals and call the cleanup function
trap cleanup INT QUIT TERM

Determine the directory of the script
APP_HOME=$(dirname "$0")

OS specific support (less or more)
On Windows, this script is expected to run with a POSIX compatible shell, like Cygwin or Msys.
cygwin=false
msys=false
case "uname" in
CYGWIN*) cygwin=true;;
MSYS*|MINGW*) msys=true;;
esac

For Cygwin and Msys, adapt the path to avoid issues with spaces and other special characters
if $cygwin || $msys; then
APP_HOME=cygpath --path --mixed "$APP_HOME"
if [ "$PWD" != "/" ]; then
PWD=cygpath --path --mixed "$PWD"
fi
if [ "$TMPDIR" != "" ]; then
TMPDIR=cygpath --path --mixed "$TMPDIR"
fi
fi

Resolve symlinks to avoid issues with relative paths
while [ -h "$APP_HOME/$APP_BASE_NAME" ]; do
ls=ls -ld "$APP_HOME/$APP_BASE_NAME"
link=expr "$ls" : '.*-> \(.*\)$'
if expr "$link" : '/.*' > /dev/null; then
APP_HOME=expr "$link" : '\(.*\)/[^/]*$'
else
APP_HOME="$APP_HOME/expr "$link" : '\(.*\)/[^/]*$'"
fi
done

Read gradle-wrapper.properties to find the Gradle version
if [ ! -f "$APP_HOME/gradle/wrapper/gradle-wrapper.properties" ]; then
echo "Error: Cannot find '$APP_HOME/gradle/wrapper/gradle-wrapper.properties'"
exit 1
fi
source "$APP_HOME/gradle/wrapper/gradle-wrapper.properties"

Ensure the Gradle distribution URL is set
if [ -z "$distributionUrl" ]; then
echo "Error: 'distributionUrl' not found in '$APP_HOME/gradle/wrapper/gradle-wrapper.properties'"
exit 1
fi

The wrapper uses its own cache, so we don't need to manually download the distribution.
The Wrapper.java class handles all the downloading logic.
Ensure Wrapper.java exists
if [ ! -f "$APP_HOME/gradle/wrapper/GradleWrapperMain.java" ]; then
echo "Error: Cannot find '$APP_HOME/gradle/wrapper/GradleWrapperMain.java'"
exit 1
fi

Use java to execute the wrapper.
Pass the original arguments to the wrapper.
exec "APP 
H
​
 OME/gradle/wrapper/gradlew""@"
