Subject: qtwebkit - riscv doubleconversion issue qt5.12 webkit version
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (223.226.35.208)
X-Originating-Platform: Linux Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Dec 2020 06:03:10 -0800
Message-ID: <iLAW.1607004190267957062.OYGn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UCBEMPXa7M0HJMAogqN9"

--UCBEMPXa7M0HJMAogqN9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

ERROR: qtwebkit-5.15.0+gitAUTOINC+10cd6a106e-r0 do_compile: Execution of '/=
home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-o=
e-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/temp/run.do_compile.2404' =
failed with exit code 1:

[0/1] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/r=
iscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-nat=
ive/usr/bin/cmake --regenerate-during-build -S/home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/git -B/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/build

Re-run cmake no build system arguments

CMake Warning at Source/cmake/OptionsCommon.cmake:135 (message):

GNU gold linker isn't available, using the default system linker.

Call Stack (most recent call first):

Source/cmake/WebKitCommon.cmake:50 (include)

CMakeLists.txt:139 (include)

-- Disabling ENABLE_LEGACY_WEB_AUDIO since USE_GSTREAMER is disabled.

-- Disabling ENABLE_MEDIA_SOURCE since USE_GSTREAMER is disabled.

-- Disabling ENABLE_WEB_AUDIO since USE_GSTREAMER is disabled.

-- Found ICU header files in /home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/recipe-sysroot/usr/include

-- Found ICU libraries: /home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
recipe-sysroot/usr/lib/libicuuc.so

-- Could NOT find Dwz (missing: DWZ_EXECUTABLE) (Required is at least vers=
ion "0.13")

-- Qt OpenGL implementation: GLESv2

-- Qt OpenGL libraries: Qt5::Gui_GLESv2

-- Qt EGL libraries: Qt5::Gui_EGL

-- Checking for module 'libwoff2dec'

-- No package 'libwoff2dec' found

-- Could NOT find WOFF2Dec: Found unsuitable version "", but required is a=
t least "1.0.1" (found WOFF2DEC_INCLUDE_DIRS-NOTFOUND)

-- WOFF2Dec not found, using the bundled library.

-- The following OPTIONAL packages have been found:

* JPEG

* WebP

* Qt5OpenGL (required version >=3D 5.2.0)

* PkgConfig

-- The following REQUIRED packages have been found:

* BISON (required version >=3D 2.1)

* Gperf (required version >=3D 3.0.1)

* Perl (required version >=3D 5.10.0)

* PythonInterp (required version >=3D 2.7.0)

* Ruby (required version >=3D 1.9)

* Sqlite

* Threads

* PNG

* ZLIB

* ICU

* LibXml2 (required version >=3D 2.8.0)

* LibXslt (required version >=3D 1.1.7)

* Qt5Core

* Qt5Gui

* Qt5Network

* Qt5Widgets

* Qt5Test

* Qt5QuickTest

* Qt5Positioning

* Qt5Sensors

* Qt5PrintSupport

Required for ENABLE_PRINT_SUPPORT=3DON

* Qt5Qml (required version >=3D 5.15.0)

* Qt5QmlModels (required version >=3D 5.15.0)

* Qt5Quick

* Qt5WebChannel

* Qt5 (required version >=3D 5.2.0)

* X11

* Qt5Multimedia (required version >=3D 5.2.0)

* Qt5MultimediaWidgets (required version >=3D 5.2.0)

-- The following OPTIONAL packages have not been found:

* Dwz (required version >=3D 0.13)

* WOFF2Dec (required version >=3D 1.0.1)

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Source/WTF/wtf/PlatformQt.cmake

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Source/JavaScriptCore/PlatformQt.cmake

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Source/JavaScriptCore/shell/PlatformQt.cmake

-- All-in-One build is enabled.

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Source/WebCore/PlatformQt.cmake

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Source/WebKit2/PlatformQt.cmake

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Source/WebKit/PlatformQt.cmake

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Source/PlatformQt.cmake

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Tools/PlatformQt.cmake

-- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/git/Tools/TestWebKitAPI/PlatformQt.cmake

-- Enabled features:

-- ENABLE_ACCELERATED_2D_CANVAS ............ ON

-- ENABLE_ALLINONE_BUILD ON

-- ENABLE_API_TESTS ........................ ON

-- ENABLE_CSS_GRID_LAYOUT ON

-- ENABLE_DATABASE_PROCESS ................. ON

-- ENABLE_DATALIST_ELEMENT ON

-- ENABLE_DEVICE_ORIENTATION ............... ON

-- ENABLE_DRAG_SUPPORT ON

-- ENABLE_FULLSCREEN_API ................... ON

-- ENABLE_GAMEPAD_DEPRECATED ON

-- ENABLE_GEOLOCATION ...................... ON

-- ENABLE_ICONDATABASE ON

-- ENABLE_INDEXED_DATABASE ................. ON

-- ENABLE_INSPECTOR_UI ON

-- ENABLE_JIT .............................. ON

-- ENABLE_LEGACY_WEB_AUDIO OFF

-- ENABLE_LINK_PREFETCH .................... ON

-- ENABLE_MEDIA_SOURCE OFF

-- ENABLE_NETSCAPE_PLUGIN_API .............. ON

-- ENABLE_OPENGL ON

-- ENABLE_PRINT_SUPPORT .................... ON

-- ENABLE_QT_GESTURE_EVENTS ON

-- ENABLE_QT_WEBCHANNEL .................... ON

-- ENABLE_SAMPLING_PROFILER ON

-- ENABLE_SPELLCHECK ....................... ON

-- ENABLE_TOUCH_EVENTS ON

-- ENABLE_VIDEO ............................ ON

-- ENABLE_WEBKIT2 ON

-- ENABLE_WEB_AUDIO ........................ OFF

-- ENABLE_X11_TARGET ON

-- ENABLE_XSLT ............................. ON

-- USE_GSTREAMER OFF

-- USE_LIBHYPHEN ........................... OFF

-- USE_LIBJPEG ON

-- USE_MEDIA_FOUNDATION .................... OFF

-- USE_QT_MULTIMEDIA ON

-- USE_SYSTEM_MALLOC ....................... OFF

-- USE_WOFF2 ON

-- Configuring done

-- Generating done

-- Build files have been written to: /home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/build

[1/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/FunctionDispatcher.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF=
.dir/FunctionDispatcher.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Functi=
onDispatcher.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/FunctionDispatcher.cpp

[2/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/FastBitVector.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/=
FastBitVector.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/FastBitVector.cp=
p.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/r=
iscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf=
/FastBitVector.cpp

[3/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/FilePrintStream.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.di=
r/FilePrintStream.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/FilePrintStr=
eam.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/FilePrintStream.cpp

[4/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/RandomNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/R=
andomNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RandomNumber.cpp.o=
 -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/risc=
v64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Ra=
ndomNumber.cpp

[5/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/=
DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cp=
p.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/r=
iscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf=
/DecimalNumber.cpp

FAILED: Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-native/us=
r/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -DBUILDING_=
WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_WARNINGS =
-DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEFORE=3D0x0=
50000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQT_NO_EXCE=
PTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBUILDER -IS=
ource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gli=
bc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sourc=
e/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/bm=
alloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF -I=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/dtoa -=
I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text =
-I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/thre=
ads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/=
unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/Thir=
dParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openembedded-cor=
e/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10=
cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sateesh/qtimag=
e/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.=
15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux-oe-g++ -=
fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -feliminate=
-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/openembedded=
-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOIN=
C+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -=
fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/us=
r/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/=
home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-o=
e-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D -fdebug-=
prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysro=
ot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-exceptions -fn=
o-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined -Wall -W=
extra -Wcast-align -Wformat-security -Wmissing-format-attribute -Wpointer-a=
rith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CMakeFiles/=
WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNu=
mber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -c /h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/DecimalN=
umber.cpp

In file included from /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/dtoa/double-conversion.h:31,

from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/=
dtoa.h:26,

from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/=
DecimalNumber.h:30,

from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/=
DecimalNumber.cpp:27:

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/dtoa/=
utils.h:62:2: error: #error Target architecture was not detected as support=
ed by Double-Conversion.

62 | #error Target architecture was not detected as supported by Double-Co=
nversion.

| ^~~~~

In file included from /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/FastMalloc.h:26,

from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/conf=
ig.h:51,

from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/=
DecimalNumber.cpp:26:

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [with =
T =3D char16_t]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:211:39: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to '=
char16_t*' increases required alignment of target type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) + t=
ailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer() =
const [with T =3D WTF::SymbolRegistry*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:763:47: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigned =
char*'} to 'WTF::SymbolRegistry* const*' increases required alignment of ta=
rget type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8_t=
*>(this) + tailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [with =
T =3D WTF::SymbolRegistry*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:769:47: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to '=
WTF::SymbolRegistry**' increases required alignment of target type [-Wcast-=
align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) + t=
ailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer() =
const [with T =3D char16_t]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:794:47: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigned =
char*'} to 'const char16_t*' increases required alignment of target type [-=
Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8_t=
*>(this) + tailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer() =
const [with T =3D WTF::StringImpl*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:830:42: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigned =
char*'} to 'WTF::StringImpl* const*' increases required alignment of target=
 type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8_t=
*>(this) + tailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [with =
T =3D WTF::StringImpl*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:837:42: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to '=
WTF::StringImpl**' increases required alignment of target type [-Wcast-alig=
n]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) + t=
ailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(const=
 CharacterType*, size_t) [with CharacterType =3D unsigned char; size_t =3D =
long unsigned int]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
WTFString.h:629:69: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const unsigned char*' to 'const Machi=
neWord*' {aka 'const long unsigned int*'} increases required alignment of t=
arget type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(character=
s));

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(const=
 CharacterType*, size_t) [with CharacterType =3D char16_t; size_t =3D long =
unsigned int]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
WTFString.h:631:66: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const char16_t*' to 'const MachineWor=
d*' {aka 'const long unsigned int*'} increases required alignment of target=
 type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(character=
s));

| ^~~~~~~~~~~~~~~~~~~~

[6/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/RunLoop.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/RunLoo=
p.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -c /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/RunLoop.cpp

[7/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/HashTable.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/Hash=
Table.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/HashTable.cpp.o -c /home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/HashTable.c=
pp

[8/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-=
native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -D=
BUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_=
WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEF=
ORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQ=
T_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBU=
ILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/w=
tf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/=
wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/satee=
sh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qt=
webkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux=
-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home=
/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-li=
nux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -f=
eliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefi=
x-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/rec=
ipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh=
/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwe=
bkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-excep=
tions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined=
 -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -W=
pointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CM=
akeFiles/WTF.dir/GregorianDateTime.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/GregorianDateTime.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Gregoria=
nDateTime.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/GregorianDateTime.cpp

In file included from /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/FastMalloc.h:26,

from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/conf=
ig.h:51,

from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/=
GregorianDateTime.cpp:25:

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [with =
T =3D char16_t]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:211:39: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to '=
char16_t*' increases required alignment of target type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) + t=
ailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer() =
const [with T =3D WTF::SymbolRegistry*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:763:47: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigned =
char*'} to 'WTF::SymbolRegistry* const*' increases required alignment of ta=
rget type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8_t=
*>(this) + tailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [with =
T =3D WTF::SymbolRegistry*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:769:47: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to '=
WTF::SymbolRegistry**' increases required alignment of target type [-Wcast-=
align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) + t=
ailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer() =
const [with T =3D char16_t]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:794:47: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigned =
char*'} to 'const char16_t*' increases required alignment of target type [-=
Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8_t=
*>(this) + tailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer() =
const [with T =3D WTF::StringImpl*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:830:42: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigned =
char*'} to 'WTF::StringImpl* const*' increases required alignment of target=
 type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8_t=
*>(this) + tailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [with =
T =3D WTF::StringImpl*]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:837:42: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to '=
WTF::StringImpl**' increases required alignment of target type [-Wcast-alig=
n]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) + t=
ailOffset<T>());

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(const=
 CharacterType*, size_t) [with CharacterType =3D unsigned char; size_t =3D =
long unsigned int]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
WTFString.h:629:69: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const unsigned char*' to 'const Machi=
neWord*' {aka 'const long unsigned int*'} increases required alignment of t=
arget type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(character=
s));

| ^~~~~~~~~~~~~~~~~~~~

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(const=
 CharacterType*, size_t) [with CharacterType =3D char16_t; size_t =3D long =
unsigned int]':

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
WTFString.h:631:66: required from here

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/StdLi=
bExtras.h:109:30: warning: cast from 'const char16_t*' to 'const MachineWor=
d*' {aka 'const long unsigned int*'} increases required alignment of target=
 type [-Wcast-align]

109 | #define reinterpret_cast_ptr reinterpret_cast

/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64=
-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/text/=
ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(character=
s));

| ^~~~~~~~~~~~~~~~~~~~

ninja: build stopped: subcommand failed.

WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/temp/log.do_compile.2404

Log data follows:

| DEBUG: Executing shell function do_compile

| NOTE: VERBOSE=3D1 cmake --build /home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/build --target all --

| [0/1] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-n=
ative/usr/bin/cmake --regenerate-during-build -S/home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/git -B/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0/build

| Re-run cmake no build system arguments

| CMake Warning at Source/cmake/OptionsCommon.cmake:135 (message):

| GNU gold linker isn't available, using the default system linker.

| Call Stack (most recent call first):

| Source/cmake/WebKitCommon.cmake:50 (include)

| CMakeLists.txt:139 (include)

|

|

| -- Disabling ENABLE_LEGACY_WEB_AUDIO since USE_GSTREAMER is disabled.

| -- Disabling ENABLE_MEDIA_SOURCE since USE_GSTREAMER is disabled.

| -- Disabling ENABLE_WEB_AUDIO since USE_GSTREAMER is disabled.

| -- Found ICU header files in /home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/recipe-sysroot/usr/include

| -- Found ICU libraries: /home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/recipe-sysroot/usr/lib/libicuuc.so

| -- Could NOT find Dwz (missing: DWZ_EXECUTABLE) (Required is at least ve=
rsion "0.13")

| -- Qt OpenGL implementation: GLESv2

| -- Qt OpenGL libraries: Qt5::Gui_GLESv2

| -- Qt EGL libraries: Qt5::Gui_EGL

| -- Checking for module 'libwoff2dec'

| -- No package 'libwoff2dec' found

| -- Could NOT find WOFF2Dec: Found unsuitable version "", but required is=
 at least "1.0.1" (found WOFF2DEC_INCLUDE_DIRS-NOTFOUND)

| -- WOFF2Dec not found, using the bundled library.

| -- The following OPTIONAL packages have been found:

|

| * JPEG

| * WebP

| * Qt5OpenGL (required version >=3D 5.2.0)

| * PkgConfig

|

| -- The following REQUIRED packages have been found:

|

| * BISON (required version >=3D 2.1)

| * Gperf (required version >=3D 3.0.1)

| * Perl (required version >=3D 5.10.0)

| * PythonInterp (required version >=3D 2.7.0)

| * Ruby (required version >=3D 1.9)

| * Sqlite

| * Threads

| * PNG

| * ZLIB

| * ICU

| * LibXml2 (required version >=3D 2.8.0)

| * LibXslt (required version >=3D 1.1.7)

| * Qt5Core

| * Qt5Gui

| * Qt5Network

| * Qt5Widgets

| * Qt5Test

| * Qt5QuickTest

| * Qt5Positioning

| * Qt5Sensors

| * Qt5PrintSupport

| Required for ENABLE_PRINT_SUPPORT=3DON

| * Qt5Qml (required version >=3D 5.15.0)

| * Qt5QmlModels (required version >=3D 5.15.0)

| * Qt5Quick

| * Qt5WebChannel

| * Qt5 (required version >=3D 5.2.0)

| * X11

| * Qt5Multimedia (required version >=3D 5.2.0)

| * Qt5MultimediaWidgets (required version >=3D 5.2.0)

|

| -- The following OPTIONAL packages have not been found:

|

| * Dwz (required version >=3D 0.13)

| * WOFF2Dec (required version >=3D 1.0.1)

|

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WTF/wtf/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/JavaScriptCore/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/JavaScriptCore/shell/PlatformQt.cmake

| -- All-in-One build is enabled.

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WebCore/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WebKit2/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WebKit/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Tools/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Tools/TestWebKitAPI/PlatformQt.cmake

| -- Enabled features:

| -- ENABLE_ACCELERATED_2D_CANVAS ............ ON

| -- ENABLE_ALLINONE_BUILD ON

| -- ENABLE_API_TESTS ........................ ON

| -- ENABLE_CSS_GRID_LAYOUT ON

| -- ENABLE_DATABASE_PROCESS ................. ON

| -- ENABLE_DATALIST_ELEMENT ON

| -- ENABLE_DEVICE_ORIENTATION ............... ON

| -- ENABLE_DRAG_SUPPORT ON

| -- ENABLE_FULLSCREEN_API ................... ON

| -- ENABLE_GAMEPAD_DEPRECATED ON

| -- ENABLE_GEOLOCATION ...................... ON

| -- ENABLE_ICONDATABASE ON

| -- ENABLE_INDEXED_DATABASE ................. ON

| -- ENABLE_INSPECTOR_UI ON

| -- ENABLE_JIT .............................. ON

| -- ENABLE_LEGACY_WEB_AUDIO OFF

| -- ENABLE_LINK_PREFETCH .................... ON

| -- ENABLE_MEDIA_SOURCE OFF

| -- ENABLE_NETSCAPE_PLUGIN_API .............. ON

| -- ENABLE_OPENGL ON

| -- ENABLE_PRINT_SUPPORT .................... ON

| -- ENABLE_QT_GESTURE_EVENTS ON

| -- ENABLE_QT_WEBCHANNEL .................... ON

| -- ENABLE_SAMPLING_PROFILER ON

| -- ENABLE_SPELLCHECK ....................... ON

| -- ENABLE_TOUCH_EVENTS ON

| -- ENABLE_VIDEO ............................ ON

| -- ENABLE_WEBKIT2 ON

| -- ENABLE_WEB_AUDIO ........................ OFF

| -- ENABLE_X11_TARGET ON

| -- ENABLE_XSLT ............................. ON

| -- USE_GSTREAMER OFF

| -- USE_LIBHYPHEN ........................... OFF

| -- USE_LIBJPEG ON

| -- USE_MEDIA_FOUNDATION .................... OFF

| -- USE_QT_MULTIMEDIA ON

| -- USE_SYSTEM_MALLOC ....................... OFF

| -- USE_WOFF2 ON

| -- Configuring done

| -- Generating done

| -- Build files have been written to: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/build

| [1/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/FunctionDispatcher.cpp.o -MF Source/WTF/wtf/CMakeFiles=
/WTF.dir/FunctionDispatcher.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Fu=
nctionDispatcher.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/FunctionDispatcher.cpp

| [2/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/FastBitVector.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/FastBitVector.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/FastBitVecto=
r.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/FastBitVector.cpp

| [3/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/FilePrintStream.cpp.o -MF Source/WTF/wtf/CMakeFiles/WT=
F.dir/FilePrintStream.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/FilePrin=
tStream.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/FilePrintStream.cpp

| [4/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/RandomNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.d=
ir/RandomNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RandomNumber.c=
pp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/RandomNumber.cpp

| [5/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumbe=
r.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/DecimalNumber.cpp

| FAILED: Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-native/=
usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -DBUILDIN=
G_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_WARNING=
S -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEFORE=3D0=
x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQT_NO_EX=
CEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBUILDER -=
ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-g=
libc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sou=
rce/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF =
-I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/dtoa=
 -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/risc=
v64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/th=
reads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/Th=
irdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openembedded-c=
ore/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+=
10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux-oe-g++=
 -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -felimina=
te-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/openembedd=
ed-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTO=
INC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/=
usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefix-map=
=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/risc=
v64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D -fd=
ebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-g=
libc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-=
sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh/qti=
mage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit=
/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-exception=
s -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined -Wa=
ll -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -Wpoin=
ter-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CMakeF=
iles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/Deci=
malNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o =
-c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Dec=
imalNumber.cpp

| In file included from /home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf/dtoa/double-conversion.h:31,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/dtoa.h:26,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/DecimalNumber.h:30,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/DecimalNumber.cpp:27:

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/dto=
a/utils.h:62:2: error: #error Target architecture was not detected as suppo=
rted by Double-Conversion.

| 62 | #error Target architecture was not detected as supported by Double-=
Conversion.

| | ^~~~~

| In file included from /home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf/FastMalloc.h:26,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/co=
nfig.h:51,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/DecimalNumber.cpp:26:

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:211:39: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'char16_t*' increases required alignment of target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:763:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::SymbolRegistry* const*' increases required alignment of =
target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:769:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::SymbolRegistry**' increases required alignment of target type [-Wcas=
t-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:794:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'const char16_t*' increases required alignment of target type =
[-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:830:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::StringImpl* const*' increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:837:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::StringImpl**' increases required alignment of target type [-Wcast-al=
ign]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D unsigned char; size_t =
=3D long unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:629:69: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const unsigned char*' to 'const Mac=
hineWord*' {aka 'const long unsigned int*'} increases required alignment of=
 target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D char16_t; size_t =3D lon=
g unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:631:66: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const char16_t*' to 'const MachineW=
ord*' {aka 'const long unsigned int*'} increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| [6/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/RunLoop.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/Ru=
nLoop.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -c /home/s=
ateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linu=
x/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/RunLoop.cpp

| [7/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/HashTable.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/=
HashTable.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/HashTable.cpp.o -c /=
home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-o=
e-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/HashTab=
le.cpp

| [8/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/GregorianDateTime.cpp.o -MF Source/WTF/wtf/CMakeFiles/=
WTF.dir/GregorianDateTime.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Greg=
orianDateTime.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/GregorianDateTime.cpp

| In file included from /home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf/FastMalloc.h:26,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/co=
nfig.h:51,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/GregorianDateTime.cpp:25:

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:211:39: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'char16_t*' increases required alignment of target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:763:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::SymbolRegistry* const*' increases required alignment of =
target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:769:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::SymbolRegistry**' increases required alignment of target type [-Wcas=
t-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:794:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'const char16_t*' increases required alignment of target type =
[-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:830:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::StringImpl* const*' increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:837:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::StringImpl**' increases required alignment of target type [-Wcast-al=
ign]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D unsigned char; size_t =
=3D long unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:629:69: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const unsigned char*' to 'const Mac=
hineWord*' {aka 'const long unsigned int*'} increases required alignment of=
 target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D char16_t; size_t =3D lon=
g unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:631:66: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const char16_t*' to 'const MachineW=
ord*' {aka 'const long unsigned int*'} increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| ninja: build stopped: subcommand failed.

| WARNING: exit code 1 from a shell command.

| ERROR: Execution of '/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/t=
emp/run.do_compile.2404' failed with exit code 1:

| [0/1] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work=
/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-n=
ative/usr/bin/cmake --regenerate-during-build -S/home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/git -B/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0/build

| Re-run cmake no build system arguments

| CMake Warning at Source/cmake/OptionsCommon.cmake:135 (message):

| GNU gold linker isn't available, using the default system linker.

| Call Stack (most recent call first):

| Source/cmake/WebKitCommon.cmake:50 (include)

| CMakeLists.txt:139 (include)

|

|

| -- Disabling ENABLE_LEGACY_WEB_AUDIO since USE_GSTREAMER is disabled.

| -- Disabling ENABLE_MEDIA_SOURCE since USE_GSTREAMER is disabled.

| -- Disabling ENABLE_WEB_AUDIO since USE_GSTREAMER is disabled.

| -- Found ICU header files in /home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/recipe-sysroot/usr/include

| -- Found ICU libraries: /home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/recipe-sysroot/usr/lib/libicuuc.so

| -- Could NOT find Dwz (missing: DWZ_EXECUTABLE) (Required is at least ve=
rsion "0.13")

| -- Qt OpenGL implementation: GLESv2

| -- Qt OpenGL libraries: Qt5::Gui_GLESv2

| -- Qt EGL libraries: Qt5::Gui_EGL

| -- Checking for module 'libwoff2dec'

| -- No package 'libwoff2dec' found

| -- Could NOT find WOFF2Dec: Found unsuitable version "", but required is=
 at least "1.0.1" (found WOFF2DEC_INCLUDE_DIRS-NOTFOUND)

| -- WOFF2Dec not found, using the bundled library.

| -- The following OPTIONAL packages have been found:

|

| * JPEG

| * WebP

| * Qt5OpenGL (required version >=3D 5.2.0)

| * PkgConfig

|

| -- The following REQUIRED packages have been found:

|

| * BISON (required version >=3D 2.1)

| * Gperf (required version >=3D 3.0.1)

| * Perl (required version >=3D 5.10.0)

| * PythonInterp (required version >=3D 2.7.0)

| * Ruby (required version >=3D 1.9)

| * Sqlite

| * Threads

| * PNG

| * ZLIB

| * ICU

| * LibXml2 (required version >=3D 2.8.0)

| * LibXslt (required version >=3D 1.1.7)

| * Qt5Core

| * Qt5Gui

| * Qt5Network

| * Qt5Widgets

| * Qt5Test

| * Qt5QuickTest

| * Qt5Positioning

| * Qt5Sensors

| * Qt5PrintSupport

| Required for ENABLE_PRINT_SUPPORT=3DON

| * Qt5Qml (required version >=3D 5.15.0)

| * Qt5QmlModels (required version >=3D 5.15.0)

| * Qt5Quick

| * Qt5WebChannel

| * Qt5 (required version >=3D 5.2.0)

| * X11

| * Qt5Multimedia (required version >=3D 5.2.0)

| * Qt5MultimediaWidgets (required version >=3D 5.2.0)

|

| -- The following OPTIONAL packages have not been found:

|

| * Dwz (required version >=3D 0.13)

| * WOFF2Dec (required version >=3D 1.0.1)

|

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WTF/wtf/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/JavaScriptCore/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/JavaScriptCore/shell/PlatformQt.cmake

| -- All-in-One build is enabled.

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WebCore/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WebKit2/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/WebKit/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Source/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Tools/PlatformQt.cmake

| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0/git/Tools/TestWebKitAPI/PlatformQt.cmake

| -- Enabled features:

| -- ENABLE_ACCELERATED_2D_CANVAS ............ ON

| -- ENABLE_ALLINONE_BUILD ON

| -- ENABLE_API_TESTS ........................ ON

| -- ENABLE_CSS_GRID_LAYOUT ON

| -- ENABLE_DATABASE_PROCESS ................. ON

| -- ENABLE_DATALIST_ELEMENT ON

| -- ENABLE_DEVICE_ORIENTATION ............... ON

| -- ENABLE_DRAG_SUPPORT ON

| -- ENABLE_FULLSCREEN_API ................... ON

| -- ENABLE_GAMEPAD_DEPRECATED ON

| -- ENABLE_GEOLOCATION ...................... ON

| -- ENABLE_ICONDATABASE ON

| -- ENABLE_INDEXED_DATABASE ................. ON

| -- ENABLE_INSPECTOR_UI ON

| -- ENABLE_JIT .............................. ON

| -- ENABLE_LEGACY_WEB_AUDIO OFF

| -- ENABLE_LINK_PREFETCH .................... ON

| -- ENABLE_MEDIA_SOURCE OFF

| -- ENABLE_NETSCAPE_PLUGIN_API .............. ON

| -- ENABLE_OPENGL ON

| -- ENABLE_PRINT_SUPPORT .................... ON

| -- ENABLE_QT_GESTURE_EVENTS ON

| -- ENABLE_QT_WEBCHANNEL .................... ON

| -- ENABLE_SAMPLING_PROFILER ON

| -- ENABLE_SPELLCHECK ....................... ON

| -- ENABLE_TOUCH_EVENTS ON

| -- ENABLE_VIDEO ............................ ON

| -- ENABLE_WEBKIT2 ON

| -- ENABLE_WEB_AUDIO ........................ OFF

| -- ENABLE_X11_TARGET ON

| -- ENABLE_XSLT ............................. ON

| -- USE_GSTREAMER OFF

| -- USE_LIBHYPHEN ........................... OFF

| -- USE_LIBJPEG ON

| -- USE_MEDIA_FOUNDATION .................... OFF

| -- USE_QT_MULTIMEDIA ON

| -- USE_SYSTEM_MALLOC ....................... OFF

| -- USE_WOFF2 ON

| -- Configuring done

| -- Generating done

| -- Build files have been written to: /home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/build

| [1/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/FunctionDispatcher.cpp.o -MF Source/WTF/wtf/CMakeFiles=
/WTF.dir/FunctionDispatcher.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Fu=
nctionDispatcher.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/FunctionDispatcher.cpp

| [2/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/FastBitVector.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/FastBitVector.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/FastBitVecto=
r.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/FastBitVector.cpp

| [3/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/FilePrintStream.cpp.o -MF Source/WTF/wtf/CMakeFiles/WT=
F.dir/FilePrintStream.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/FilePrin=
tStream.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/FilePrintStream.cpp

| [4/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/RandomNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.d=
ir/RandomNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RandomNumber.c=
pp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/RandomNumber.cpp

| [5/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumbe=
r.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/DecimalNumber.cpp

| FAILED: Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot-native/=
usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 -DBUILDIN=
G_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAST_WARNING=
S -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_BEFORE=3D0=
x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -DQT_NO_EX=
CEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRINGBUILDER -=
ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-g=
libc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sou=
rce/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF =
-I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/dtoa=
 -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/risc=
v64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/th=
reads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/Th=
irdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/openembedded-c=
ore/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+=
10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/linux-oe-g++=
 -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g -felimina=
te-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/openembedd=
ed-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTO=
INC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/=
usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-prefix-map=
=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/risc=
v64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=3D -fd=
ebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-g=
libc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-=
sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sateesh/qti=
mage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit=
/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-exception=
s -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-defined -Wa=
ll -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribute -Wpoin=
ter-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wtf/CMakeF=
iles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/Deci=
malNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o =
-c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Dec=
imalNumber.cpp

| In file included from /home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf/dtoa/double-conversion.h:31,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/dtoa.h:26,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/DecimalNumber.h:30,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/DecimalNumber.cpp:27:

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/dto=
a/utils.h:62:2: error: #error Target architecture was not detected as suppo=
rted by Double-Conversion.

| 62 | #error Target architecture was not detected as supported by Double-=
Conversion.

| | ^~~~~

| In file included from /home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf/FastMalloc.h:26,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/co=
nfig.h:51,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/DecimalNumber.cpp:26:

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:211:39: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'char16_t*' increases required alignment of target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:763:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::SymbolRegistry* const*' increases required alignment of =
target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:769:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::SymbolRegistry**' increases required alignment of target type [-Wcas=
t-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:794:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'const char16_t*' increases required alignment of target type =
[-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:830:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::StringImpl* const*' increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:837:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::StringImpl**' increases required alignment of target type [-Wcast-al=
ign]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D unsigned char; size_t =
=3D long unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:629:69: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const unsigned char*' to 'const Mac=
hineWord*' {aka 'const long unsigned int*'} increases required alignment of=
 target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D char16_t; size_t =3D lon=
g unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:631:66: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const char16_t*' to 'const MachineW=
ord*' {aka 'const long unsigned int*'} increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| [6/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/RunLoop.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/Ru=
nLoop.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -c /home/s=
ateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linu=
x/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/RunLoop.cpp

| [7/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/HashTable.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.dir/=
HashTable.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/HashTable.cpp.o -c /=
home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-o=
e-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/HashTab=
le.cpp

| [8/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/GregorianDateTime.cpp.o -MF Source/WTF/wtf/CMakeFiles/=
WTF.dir/GregorianDateTime.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Greg=
orianDateTime.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/GregorianDateTime.cpp

| In file included from /home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/WTF/wtf/FastMalloc.h:26,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/co=
nfig.h:51,

| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/GregorianDateTime.cpp:25:

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:211:39: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'char16_t*' increases required alignment of target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:763:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::SymbolRegistry* const*' increases required alignment of =
target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::SymbolRegistry*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:769:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::SymbolRegistry**' increases required alignment of target type [-Wcas=
t-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D char16_t]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:794:47: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'const char16_t*' increases required alignment of target type =
[-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tailPointer(=
) const [with T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:830:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'const unsigne=
d char*'} to 'WTF::StringImpl* const*' increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 817 | return reinterpret_cast_ptr<const T*>(reinterpret_cast<const uint8=
_t*>(this) + tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPointer() [wit=
h T =3D WTF::StringImpl*]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:837:42: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned char*'} to=
 'WTF::StringImpl**' increases required alignment of target type [-Wcast-al=
ign]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_cast_ptr'

| 823 | return reinterpret_cast_ptr<T*>(reinterpret_cast<uint8_t*>(this) +=
 tailOffset<T>());

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D unsigned char; size_t =
=3D long unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:629:69: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const unsigned char*' to 'const Mac=
hineWord*' {aka 'const long unsigned int*'} increases required alignment of=
 target type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAllASCII(con=
st CharacterType*, size_t) [with CharacterType =3D char16_t; size_t =3D lon=
g unsigned int]':

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/WTFString.h:631:66: required from here

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/Std=
LibExtras.h:109:30: warning: cast from 'const char16_t*' to 'const MachineW=
ord*' {aka 'const long unsigned int*'} increases required alignment of targ=
et type [-Wcast-align]

| 109 | #define reinterpret_cast_ptr reinterpret_cast

| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv=
64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/tex=
t/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_cast_ptr'

| 96 | allCharBits |=3D *(reinterpret_cast_ptr<const MachineWord*>(charact=
ers));

| | ^~~~~~~~~~~~~~~~~~~~

| ninja: build stopped: subcommand failed.

| WARNING: exit code 1 from a shell command.

|

ERROR: Task (/home/sateesh/qtimage/openembedded-core/meta-qt5/recipes-qt/q=
t5/qtwebkit_git.bb:do_compile) failed with exit code '1'

NOTE: Tasks Summary: Attempted 2916 tasks of which 2915 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:

/home/sateesh/qtimage/openembedded-core/meta-qt5/recipes-qt/qt5/qtwebkit_g=
it.bb:do_compile

Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--UCBEMPXa7M0HJMAogqN9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">ERROR: qtwebkit-5.15.0+gitAUTOINC+10cd6a106e-r0 do_compile: Exec=
ution of '/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/temp/run.do_com=
pile.2404' failed with exit code 1:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[0/1] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-g=
libc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-=
sysroot-native/usr/bin/cmake --regenerate-during-build -S/home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/git -B/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/build</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">Re-run cmake no build system arguments</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">CMake Warning at Source/cmake/OptionsCommon.cmake:135 (message)=
:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">GNU gold linker isn't available, using the default system linke=
r.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">Call Stack (most recent call first):</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">Source/cmake/WebKitCommon.cmake:50 (include)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">CMakeLists.txt:139 (include)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Disabling ENABLE_LEGACY_WEB_AUDIO since USE_GSTREAMER is dis=
abled.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Disabling ENABLE_MEDIA_SOURCE since USE_GSTREAMER is disable=
d.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Disabling ENABLE_WEB_AUDIO since USE_GSTREAMER is disabled.<=
/p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Found ICU header files in /home/sateesh/qtimage/openembedded=
-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOIN=
C+10cd6a106e-r0/recipe-sysroot/usr/include</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Found ICU libraries: /home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/recipe-sysroot/usr/lib/libicuuc.so</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Could NOT find Dwz (missing: DWZ_EXECUTABLE) (Required is at=
 least version "0.13")</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Qt OpenGL implementation: GLESv2</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Qt OpenGL libraries: Qt5::Gui_GLESv2</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Qt EGL libraries: Qt5::Gui_EGL</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Checking for module 'libwoff2dec'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- No package 'libwoff2dec' found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Could NOT find WOFF2Dec: Found unsuitable version "", but re=
quired is at least "1.0.1" (found WOFF2DEC_INCLUDE_DIRS-NOTFOUND)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- WOFF2Dec not found, using the bundled library.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- The following OPTIONAL packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* JPEG</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* WebP</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5OpenGL (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* PkgConfig</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- The following REQUIRED packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* BISON (required version &gt;=3D 2.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Gperf (required version &gt;=3D 3.0.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Perl (required version &gt;=3D 5.10.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* PythonInterp (required version &gt;=3D 2.7.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Ruby (required version &gt;=3D 1.9)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Sqlite</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Threads</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* PNG</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* ZLIB</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* ICU</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* LibXml2 (required version &gt;=3D 2.8.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* LibXslt (required version &gt;=3D 1.1.7)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Core</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Gui</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Network</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Widgets</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Test</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5QuickTest</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Positioning</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Sensors</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5PrintSupport</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">Required for ENABLE_PRINT_SUPPORT=3DON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Qml (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5QmlModels (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Quick</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5WebChannel</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5 (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* X11</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5Multimedia (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Qt5MultimediaWidgets (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- The following OPTIONAL packages have not been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* Dwz (required version &gt;=3D 0.13)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">* WOFF2Dec (required version &gt;=3D 1.0.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Source/JavaScriptCore/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Source/JavaScriptCore/shell/PlatformQt.cmake<=
/p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- All-in-One build is enabled.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Source/WebCore/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Source/WebKit2/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Source/WebKit/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Source/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Tools/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Using platform-specific CMakeLists: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/git/Tools/TestWebKitAPI/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Enabled features:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_ACCELERATED_2D_CANVAS ............ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_ALLINONE_BUILD ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_API_TESTS ........................ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_CSS_GRID_LAYOUT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_DATABASE_PROCESS ................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_DATALIST_ELEMENT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_DEVICE_ORIENTATION ............... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_DRAG_SUPPORT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_FULLSCREEN_API ................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_GAMEPAD_DEPRECATED ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_GEOLOCATION ...................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_ICONDATABASE ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_INDEXED_DATABASE ................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_INSPECTOR_UI ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_JIT .............................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_LEGACY_WEB_AUDIO OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_LINK_PREFETCH .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_MEDIA_SOURCE OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_NETSCAPE_PLUGIN_API .............. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_OPENGL ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_PRINT_SUPPORT .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_QT_GESTURE_EVENTS ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_QT_WEBCHANNEL .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_SAMPLING_PROFILER ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_SPELLCHECK ....................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_TOUCH_EVENTS ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_VIDEO ............................ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_WEBKIT2 ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_WEB_AUDIO ........................ OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_X11_TARGET ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- ENABLE_XSLT ............................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- USE_GSTREAMER OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- USE_LIBHYPHEN ........................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- USE_LIBJPEG ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- USE_MEDIA_FOUNDATION .................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- USE_QT_MULTIMEDIA ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- USE_SYSTEM_MALLOC ....................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- USE_WOFF2 ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Configuring done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Generating done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">-- Build files have been written to: /home/sateesh/qtimage/open=
embedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+g=
itAUTOINC+10cd6a106e-r0/build</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[1/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/FunctionDispatcher.cpp.o -MF Source/WTF/wtf/CMa=
keFiles/WTF.dir/FunctionDispatcher.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF=
.dir/FunctionDispatcher.cpp.o -c /home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/git/Source/WTF/wtf/FunctionDispatcher.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[2/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/FastBitVector.cpp.o -MF Source/WTF/wtf/CMakeFil=
es/WTF.dir/FastBitVector.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/FastB=
itVector.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-g=
libc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sou=
rce/WTF/wtf/FastBitVector.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[3/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/FilePrintStream.cpp.o -MF Source/WTF/wtf/CMakeF=
iles/WTF.dir/FilePrintStream.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/F=
ilePrintStream.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/FilePrintStream.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[4/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/RandomNumber.cpp.o -MF Source/WTF/wtf/CMakeFile=
s/WTF.dir/RandomNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RandomN=
umber.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/RandomNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[5/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFil=
es/WTF.dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Decim=
alNumber.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-g=
libc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sou=
rce/WTF/wtf/DecimalNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">FAILED: Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o</=
p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D1 =
-DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_CAS=
T_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_B=
EFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST -=
DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRING=
BUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-bu=
ild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r=
0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/opene=
mbedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gi=
tAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/lin=
ux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/ho=
me/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-=
linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -g =
-feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage/o=
penembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.=
0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/risc=
v-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a10=
6e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-pre=
fix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wor=
k/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumbe=
r.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/DecimalNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">In file included from /home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/WTF/wtf/dtoa/double-conversion.h:31,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/dtoa.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/DecimalNumber.h:30,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/DecimalNumber.cpp:27:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/dtoa/utils.h:62:2: error: #error Target architecture was not detected=
 as supported by Double-Conversion.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">62 | #error Target architecture was not detected as supported b=
y Double-Conversion.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">In file included from /home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/WTF/wtf/FastMalloc.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/config.h:51,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/DecimalNumber.cpp:26:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoint=
er() [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:211:39: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned c=
har*'} to 'char16_t*' increases required alignment of target type [-Wcast-a=
lign]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&lt=
;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tai=
lPointer() const [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:763:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'cons=
t unsigned char*'} to 'WTF::SymbolRegistry* const*' increases required alig=
nment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret_c=
ast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoint=
er() [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:769:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned c=
har*'} to 'WTF::SymbolRegistry**' increases required alignment of target ty=
pe [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&lt=
;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tai=
lPointer() const [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:794:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'cons=
t unsigned char*'} to 'const char16_t*' increases required alignment of tar=
get type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret_c=
ast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tai=
lPointer() const [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:830:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'cons=
t unsigned char*'} to 'WTF::StringImpl* const*' increases required alignmen=
t of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret_c=
ast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoint=
er() [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:837:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned c=
har*'} to 'WTF::StringImpl**' increases required alignment of target type [=
-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&lt=
;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAll=
ASCII(const CharacterType*, size_t) [with CharacterType =3D unsigned char; =
size_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/WTFString.h:629:69: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const unsigned char*' to '=
const MachineWord*' {aka 'const long unsigned int*'} increases required ali=
gnment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const MachineWo=
rd*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAll=
ASCII(const CharacterType*, size_t) [with CharacterType =3D char16_t; size_=
t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/WTFString.h:631:66: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const char16_t*' to 'const=
 MachineWord*' {aka 'const long unsigned int*'} increases required alignmen=
t of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const MachineWo=
rd*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[6/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF=
.dir/RunLoop.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -c =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/RunLoo=
p.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[7/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/HashTable.cpp.o -MF Source/WTF/wtf/CMakeFiles/W=
TF.dir/HashTable.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/HashTable.cpp=
.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/=
HashTable.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">[8/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_=
QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_=
ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEP=
RECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAM=
IC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_US=
E_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtim=
age/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/=
5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem =
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mk=
specs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysr=
oot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/ri=
scv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 =
-pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/=
qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtweb=
kit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUT=
OINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -f=
debug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe=
-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/h=
ome/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe=
-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive=
 -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion=
-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-a=
ttribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source=
/WTF/wtf/CMakeFiles/WTF.dir/GregorianDateTime.cpp.o -MF Source/WTF/wtf/CMak=
eFiles/WTF.dir/GregorianDateTime.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.d=
ir/GregorianDateTime.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF/wtf/GregorianDateTime.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">In file included from /home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/WTF/wtf/FastMalloc.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/config.h:51,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/GregorianDateTime.cpp:25:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoint=
er() [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:211:39: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned c=
har*'} to 'char16_t*' increases required alignment of target type [-Wcast-a=
lign]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&lt=
;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tai=
lPointer() const [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:763:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'cons=
t unsigned char*'} to 'WTF::SymbolRegistry* const*' increases required alig=
nment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret_c=
ast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoint=
er() [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:769:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned c=
har*'} to 'WTF::SymbolRegistry**' increases required alignment of target ty=
pe [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&lt=
;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tai=
lPointer() const [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:794:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'cons=
t unsigned char*'} to 'const char16_t*' increases required alignment of tar=
get type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret_c=
ast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::tai=
lPointer() const [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:830:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'cons=
t unsigned char*'} to 'WTF::StringImpl* const*' increases required alignmen=
t of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret_c=
ast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoint=
er() [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:837:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned c=
har*'} to 'WTF::StringImpl**' increases required alignment of target type [=
-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_ca=
st_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&lt=
;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAll=
ASCII(const CharacterType*, size_t) [with CharacterType =3D unsigned char; =
size_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/WTFString.h:629:69: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const unsigned char*' to '=
const MachineWord*' {aka 'const long unsigned int*'} increases required ali=
gnment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const MachineWo=
rd*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreAll=
ASCII(const CharacterType*, size_t) [with CharacterType =3D char16_t; size_=
t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/WTFString.h:631:66: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/StdLibExtras.h:109:30: warning: cast from 'const char16_t*' to 'const=
 MachineWord*' {aka 'const long unsigned int*'} increases required alignmen=
t of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WT=
F/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const MachineWo=
rd*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">ninja: build stopped: subcommand failed.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">WARNING: exit code 1 from a shell command.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">ERROR: Logfile of failure stored in: /home/sateesh/qtimage/open=
embedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+g=
itAUTOINC+10cd6a106e-r0/temp/log.do_compile.2404</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">Log data follows:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| DEBUG: Executing shell function do_compile</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| NOTE: VERBOSE=3D1 cmake --build /home/sateesh/qtimage/openemb=
edded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0/build --target all --</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [0/1] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recip=
e-sysroot-native/usr/bin/cmake --regenerate-during-build -S/home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/git -B/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/build</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Re-run cmake no build system arguments</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| CMake Warning at Source/cmake/OptionsCommon.cmake:135 (messag=
e):</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| GNU gold linker isn't available, using the default system lin=
ker.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Call Stack (most recent call first):</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Source/cmake/WebKitCommon.cmake:50 (include)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| CMakeLists.txt:139 (include)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Disabling ENABLE_LEGACY_WEB_AUDIO since USE_GSTREAMER is d=
isabled.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Disabling ENABLE_MEDIA_SOURCE since USE_GSTREAMER is disab=
led.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Disabling ENABLE_WEB_AUDIO since USE_GSTREAMER is disabled=
.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Found ICU header files in /home/sateesh/qtimage/openembedd=
ed-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTO=
INC+10cd6a106e-r0/recipe-sysroot/usr/include</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Found ICU libraries: /home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/recipe-sysroot/usr/lib/libicuuc.so</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Could NOT find Dwz (missing: DWZ_EXECUTABLE) (Required is =
at least version "0.13")</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Qt OpenGL implementation: GLESv2</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Qt OpenGL libraries: Qt5::Gui_GLESv2</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Qt EGL libraries: Qt5::Gui_EGL</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Checking for module 'libwoff2dec'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- No package 'libwoff2dec' found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Could NOT find WOFF2Dec: Found unsuitable version "", but =
required is at least "1.0.1" (found WOFF2DEC_INCLUDE_DIRS-NOTFOUND)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- WOFF2Dec not found, using the bundled library.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- The following OPTIONAL packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * JPEG</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * WebP</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5OpenGL (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * PkgConfig</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- The following REQUIRED packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * BISON (required version &gt;=3D 2.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Gperf (required version &gt;=3D 3.0.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Perl (required version &gt;=3D 5.10.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * PythonInterp (required version &gt;=3D 2.7.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Ruby (required version &gt;=3D 1.9)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Sqlite</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Threads</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * PNG</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * ZLIB</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * ICU</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * LibXml2 (required version &gt;=3D 2.8.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * LibXslt (required version &gt;=3D 1.1.7)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Core</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Gui</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Network</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Widgets</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Test</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5QuickTest</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Positioning</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Sensors</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5PrintSupport</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Required for ENABLE_PRINT_SUPPORT=3DON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Qml (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5QmlModels (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Quick</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5WebChannel</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5 (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * X11</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Multimedia (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5MultimediaWidgets (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- The following OPTIONAL packages have not been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Dwz (required version &gt;=3D 0.13)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * WOFF2Dec (required version &gt;=3D 1.0.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/JavaScriptCore/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/JavaScriptCore/shell/PlatformQt.cmak=
e</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- All-in-One build is enabled.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WebCore/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WebKit2/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WebKit/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Tools/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Tools/TestWebKitAPI/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Enabled features:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_ACCELERATED_2D_CANVAS ............ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_ALLINONE_BUILD ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_API_TESTS ........................ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_CSS_GRID_LAYOUT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DATABASE_PROCESS ................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DATALIST_ELEMENT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DEVICE_ORIENTATION ............... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DRAG_SUPPORT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_FULLSCREEN_API ................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_GAMEPAD_DEPRECATED ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_GEOLOCATION ...................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_ICONDATABASE ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_INDEXED_DATABASE ................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_INSPECTOR_UI ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_JIT .............................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_LEGACY_WEB_AUDIO OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_LINK_PREFETCH .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_MEDIA_SOURCE OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_NETSCAPE_PLUGIN_API .............. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_OPENGL ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_PRINT_SUPPORT .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_QT_GESTURE_EVENTS ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_QT_WEBCHANNEL .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_SAMPLING_PROFILER ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_SPELLCHECK ....................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_TOUCH_EVENTS ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_VIDEO ............................ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_WEBKIT2 ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_WEB_AUDIO ........................ OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_X11_TARGET ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_XSLT ............................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_GSTREAMER OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_LIBHYPHEN ........................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_LIBJPEG ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_MEDIA_FOUNDATION .................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_QT_MULTIMEDIA ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_SYSTEM_MALLOC ....................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_WOFF2 ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Configuring done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Generating done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Build files have been written to: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/build</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [1/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/FunctionDispatcher.cpp.o -MF Source/WTF/wtf/C=
MakeFiles/WTF.dir/FunctionDispatcher.cpp.o.d -o Source/WTF/wtf/CMakeFiles/W=
TF.dir/FunctionDispatcher.cpp.o -c /home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/git/Source/WTF/wtf/FunctionDispatcher.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [2/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/FastBitVector.cpp.o -MF Source/WTF/wtf/CMakeF=
iles/WTF.dir/FastBitVector.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Fas=
tBitVector.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/FastBitVector.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [3/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/FilePrintStream.cpp.o -MF Source/WTF/wtf/CMak=
eFiles/WTF.dir/FilePrintStream.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir=
/FilePrintStream.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/FilePrintStream.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [4/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/RandomNumber.cpp.o -MF Source/WTF/wtf/CMakeFi=
les/WTF.dir/RandomNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Rando=
mNumber.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/RandomNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [5/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeF=
iles/WTF.dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Dec=
imalNumber.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/DecimalNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| FAILED: Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o=
</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysr=
oot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D=
1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_C=
AST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED=
_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST=
 -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRI=
NGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/s=
ateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linu=
x/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/l=
inux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/=
home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-o=
e-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -=
g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage=
/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.1=
5.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10=
cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-p=
refix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumbe=
r.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/DecimalNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| In file included from /home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf/dtoa/double-conversion.h:31,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/dtoa.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/DecimalNumber.h:30,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/DecimalNumber.cpp:27:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/dtoa/utils.h:62:2: error: #error Target architecture was not detect=
ed as supported by Double-Conversion.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 62 | #error Target architecture was not detected as supported=
 by Double-Conversion.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| In file included from /home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf/FastMalloc.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/config.h:51,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/DecimalNumber.cpp:26:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:211:39: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'char16_t*' increases required alignment of target type [-Wcast=
-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:763:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::SymbolRegistry* const*' increases required al=
ignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:769:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::SymbolRegistry**' increases required alignment of target =
type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:794:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'const char16_t*' increases required alignment of t=
arget type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:830:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::StringImpl* const*' increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:837:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::StringImpl**' increases required alignment of target type=
 [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D unsigned char=
; size_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:629:69: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const unsigned char*' to=
 'const MachineWord*' {aka 'const long unsigned int*'} increases required a=
lignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D char16_t; siz=
e_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:631:66: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const char16_t*' to 'con=
st MachineWord*' {aka 'const long unsigned int*'} increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [6/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -MF Source/WTF/wtf/CMakeFiles/W=
TF.dir/RunLoop.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -=
c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/RunL=
oop.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [7/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/HashTable.cpp.o -MF Source/WTF/wtf/CMakeFiles=
/WTF.dir/HashTable.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/HashTable.c=
pp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/HashTable.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [8/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/GregorianDateTime.cpp.o -MF Source/WTF/wtf/CM=
akeFiles/WTF.dir/GregorianDateTime.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF=
.dir/GregorianDateTime.cpp.o -c /home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/WTF/wtf/GregorianDateTime.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| In file included from /home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf/FastMalloc.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/config.h:51,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/GregorianDateTime.cpp:25:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:211:39: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'char16_t*' increases required alignment of target type [-Wcast=
-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:763:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::SymbolRegistry* const*' increases required al=
ignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:769:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::SymbolRegistry**' increases required alignment of target =
type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:794:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'const char16_t*' increases required alignment of t=
arget type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:830:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::StringImpl* const*' increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:837:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::StringImpl**' increases required alignment of target type=
 [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D unsigned char=
; size_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:629:69: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const unsigned char*' to=
 'const MachineWord*' {aka 'const long unsigned int*'} increases required a=
lignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D char16_t; siz=
e_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:631:66: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const char16_t*' to 'con=
st MachineWord*' {aka 'const long unsigned int*'} increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ninja: build stopped: subcommand failed.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| WARNING: exit code 1 from a shell command.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ERROR: Execution of '/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/temp/run.do_compile.2404' failed with exit code 1:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [0/1] /home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recip=
e-sysroot-native/usr/bin/cmake --regenerate-during-build -S/home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/git -B/home/sateesh/qtimage/openembedded-=
core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC=
+10cd6a106e-r0/build</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Re-run cmake no build system arguments</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| CMake Warning at Source/cmake/OptionsCommon.cmake:135 (messag=
e):</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| GNU gold linker isn't available, using the default system lin=
ker.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Call Stack (most recent call first):</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Source/cmake/WebKitCommon.cmake:50 (include)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| CMakeLists.txt:139 (include)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Disabling ENABLE_LEGACY_WEB_AUDIO since USE_GSTREAMER is d=
isabled.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Disabling ENABLE_MEDIA_SOURCE since USE_GSTREAMER is disab=
led.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Disabling ENABLE_WEB_AUDIO since USE_GSTREAMER is disabled=
.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Found ICU header files in /home/sateesh/qtimage/openembedd=
ed-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTO=
INC+10cd6a106e-r0/recipe-sysroot/usr/include</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Found ICU libraries: /home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/recipe-sysroot/usr/lib/libicuuc.so</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Could NOT find Dwz (missing: DWZ_EXECUTABLE) (Required is =
at least version "0.13")</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Qt OpenGL implementation: GLESv2</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Qt OpenGL libraries: Qt5::Gui_GLESv2</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Qt EGL libraries: Qt5::Gui_EGL</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Checking for module 'libwoff2dec'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- No package 'libwoff2dec' found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Could NOT find WOFF2Dec: Found unsuitable version "", but =
required is at least "1.0.1" (found WOFF2DEC_INCLUDE_DIRS-NOTFOUND)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- WOFF2Dec not found, using the bundled library.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- The following OPTIONAL packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * JPEG</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * WebP</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5OpenGL (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * PkgConfig</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- The following REQUIRED packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * BISON (required version &gt;=3D 2.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Gperf (required version &gt;=3D 3.0.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Perl (required version &gt;=3D 5.10.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * PythonInterp (required version &gt;=3D 2.7.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Ruby (required version &gt;=3D 1.9)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Sqlite</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Threads</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * PNG</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * ZLIB</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * ICU</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * LibXml2 (required version &gt;=3D 2.8.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * LibXslt (required version &gt;=3D 1.1.7)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Core</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Gui</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Network</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Widgets</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Test</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5QuickTest</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Positioning</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Sensors</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5PrintSupport</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| Required for ENABLE_PRINT_SUPPORT=3DON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Qml (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5QmlModels (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Quick</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5WebChannel</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5 (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * X11</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5Multimedia (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Qt5MultimediaWidgets (required version &gt;=3D 5.2.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- The following OPTIONAL packages have not been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * Dwz (required version &gt;=3D 0.13)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| * WOFF2Dec (required version &gt;=3D 1.0.1)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/JavaScriptCore/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/JavaScriptCore/shell/PlatformQt.cmak=
e</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- All-in-One build is enabled.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WebCore/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WebKit2/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/WebKit/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Source/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Tools/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Using platform-specific CMakeLists: /home/sateesh/qtimage/=
openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15=
.0+gitAUTOINC+10cd6a106e-r0/git/Tools/TestWebKitAPI/PlatformQt.cmake</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Enabled features:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_ACCELERATED_2D_CANVAS ............ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_ALLINONE_BUILD ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_API_TESTS ........................ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_CSS_GRID_LAYOUT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DATABASE_PROCESS ................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DATALIST_ELEMENT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DEVICE_ORIENTATION ............... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_DRAG_SUPPORT ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_FULLSCREEN_API ................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_GAMEPAD_DEPRECATED ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_GEOLOCATION ...................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_ICONDATABASE ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_INDEXED_DATABASE ................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_INSPECTOR_UI ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_JIT .............................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_LEGACY_WEB_AUDIO OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_LINK_PREFETCH .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_MEDIA_SOURCE OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_NETSCAPE_PLUGIN_API .............. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_OPENGL ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_PRINT_SUPPORT .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_QT_GESTURE_EVENTS ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_QT_WEBCHANNEL .................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_SAMPLING_PROFILER ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_SPELLCHECK ....................... ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_TOUCH_EVENTS ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_VIDEO ............................ ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_WEBKIT2 ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_WEB_AUDIO ........................ OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_X11_TARGET ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- ENABLE_XSLT ............................. ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_GSTREAMER OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_LIBHYPHEN ........................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_LIBJPEG ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_MEDIA_FOUNDATION .................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_QT_MULTIMEDIA ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_SYSTEM_MALLOC ....................... OFF</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- USE_WOFF2 ON</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Configuring done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Generating done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| -- Build files have been written to: /home/sateesh/qtimage/op=
enembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0=
+gitAUTOINC+10cd6a106e-r0/build</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [1/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/FunctionDispatcher.cpp.o -MF Source/WTF/wtf/C=
MakeFiles/WTF.dir/FunctionDispatcher.cpp.o.d -o Source/WTF/wtf/CMakeFiles/W=
TF.dir/FunctionDispatcher.cpp.o -c /home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/git/Source/WTF/wtf/FunctionDispatcher.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [2/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/FastBitVector.cpp.o -MF Source/WTF/wtf/CMakeF=
iles/WTF.dir/FastBitVector.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Fas=
tBitVector.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/FastBitVector.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [3/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/FilePrintStream.cpp.o -MF Source/WTF/wtf/CMak=
eFiles/WTF.dir/FilePrintStream.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir=
/FilePrintStream.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/git/Source/WTF/wtf/FilePrintStream.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [4/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/RandomNumber.cpp.o -MF Source/WTF/wtf/CMakeFi=
les/WTF.dir/RandomNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Rando=
mNumber.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-gl=
ibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Sour=
ce/WTF/wtf/RandomNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [5/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeF=
iles/WTF.dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/Dec=
imalNumber.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp=
-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/S=
ource/WTF/wtf/DecimalNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| FAILED: Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumber.cpp.o=
</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysr=
oot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDING_QT__=3D=
1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQT_ASCII_C=
AST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED=
_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYNAMIC_CAST=
 -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_USE_QSTRI=
NGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-=
build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e=
-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/riscv-buil=
d/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/=
git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/=
Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/=
work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/W=
TF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glib=
c/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source=
/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qtimage/ope=
nembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+=
gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isystem /home/s=
ateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linu=
x/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/mkspecs/l=
inux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sysroot=3D/=
home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-o=
e-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O2 -pipe -=
g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/sateesh/qtimage=
/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.1=
5.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10=
cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/ri=
scv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a=
106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 -fdebug-p=
refix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/w=
ork/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroo=
t=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-bui=
ld/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=
/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D/home/sat=
eesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/=
qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissive -fno-e=
xceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansion-to-def=
ined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format-attribut=
e -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Source/WTF/wt=
f/CMakeFiles/WTF.dir/DecimalNumber.cpp.o -MF Source/WTF/wtf/CMakeFiles/WTF.=
dir/DecimalNumber.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/DecimalNumbe=
r.cpp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/wo=
rk/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF=
/wtf/DecimalNumber.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| In file included from /home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf/dtoa/double-conversion.h:31,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/dtoa.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/DecimalNumber.h:30,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/DecimalNumber.cpp:27:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/dtoa/utils.h:62:2: error: #error Target architecture was not detect=
ed as supported by Double-Conversion.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 62 | #error Target architecture was not detected as supported=
 by Double-Conversion.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| In file included from /home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf/FastMalloc.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/config.h:51,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/DecimalNumber.cpp:26:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:211:39: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'char16_t*' increases required alignment of target type [-Wcast=
-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:763:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::SymbolRegistry* const*' increases required al=
ignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:769:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::SymbolRegistry**' increases required alignment of target =
type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:794:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'const char16_t*' increases required alignment of t=
arget type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:830:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::StringImpl* const*' increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:837:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::StringImpl**' increases required alignment of target type=
 [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D unsigned char=
; size_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:629:69: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const unsigned char*' to=
 'const MachineWord*' {aka 'const long unsigned int*'} increases required a=
lignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D char16_t; siz=
e_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:631:66: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const char16_t*' to 'con=
st MachineWord*' {aka 'const long unsigned int*'} increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [6/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -MF Source/WTF/wtf/CMakeFiles/W=
TF.dir/RunLoop.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/RunLoop.cpp.o -=
c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wtf/RunL=
oop.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [7/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/HashTable.cpp.o -MF Source/WTF/wtf/CMakeFiles=
/WTF.dir/HashTable.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF.dir/HashTable.c=
pp.o -c /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/WTF/wt=
f/HashTable.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| [8/4410] /home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/re=
cipe-sysroot-native/usr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ -DBUILDIN=
G_QT__=3D1 -DBUILDING_WITH_CMAKE=3D1 -DBUILDING_WTF -DHAVE_CONFIG_H=3D1 -DQ=
T_ASCII_CAST_WARNINGS -DQT_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_D=
EPRECATED_BEFORE=3D0x050000 -DQT_NO_CAST_TO_ASCII -DQT_NO_DEBUG -DQT_NO_DYN=
AMIC_CAST -DQT_NO_EXCEPTIONS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_=
USE_QSTRINGBUILDER -ISource/WTF/wtf -I/home/sateesh/qtimage/openembedded-co=
re/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+1=
0cd6a106e-r0/git/Source/WTF/wtf -I/home/sateesh/qtimage/openembedded-core/r=
iscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6=
a106e-r0/git/Source/bmalloc -I/home/sateesh/qtimage/openembedded-core/riscv=
-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106=
e-r0/git/Source/WTF -I/home/sateesh/qtimage/openembedded-core/riscv-build/t=
mp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git=
/Source/WTF/wtf/dtoa -I/home/sateesh/qtimage/openembedded-core/riscv-build/=
tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/gi=
t/Source/WTF/wtf/text -I/home/sateesh/qtimage/openembedded-core/riscv-build=
/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/g=
it/Source/WTF/wtf/threads -I/home/sateesh/qtimage/openembedded-core/riscv-b=
uild/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-=
r0/git/Source/WTF/wtf/unicode -I/home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/ThirdParty -I. -IDerivedSources -isystem /home/sateesh/qt=
image/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebki=
t/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/include/QtCore -isyste=
m /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv6=
4-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot/usr/lib/=
mkspecs/linux-oe-g++ -fvisibility=3Dhidden -fvisibility-inlines-hidden --sy=
sroot=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/=
riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/home/satees=
h/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtw=
ebkit/5.15.0+gitAUTOINC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitA=
UTOINC+10cd6a106e-r0 -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedde=
d-core/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOI=
NC+10cd6a106e-r0=3D/usr/src/debug/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0 =
-fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/riscv-build/tm=
p-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/sateesh/qtimage/openembedded-core/=
riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd=
6a106e-r0/recipe-sysroot-native=3D -fvisibility-inlines-hidden --sysroot=3D=
/home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc/work/riscv64-=
oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/recipe-sysroot -fpermissi=
ve -fno-exceptions -fno-strict-aliasing -fno-rtti -std=3Dc++11 -Wno-expansi=
on-to-defined -Wall -Wextra -Wcast-align -Wformat-security -Wmissing-format=
-attribute -Wpointer-arith -Wundef -Wwrite-strings -fPIC -fPIC -MD -MT Sour=
ce/WTF/wtf/CMakeFiles/WTF.dir/GregorianDateTime.cpp.o -MF Source/WTF/wtf/CM=
akeFiles/WTF.dir/GregorianDateTime.cpp.o.d -o Source/WTF/wtf/CMakeFiles/WTF=
.dir/GregorianDateTime.cpp.o -c /home/sateesh/qtimage/openembedded-core/ris=
cv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a1=
06e-r0/git/Source/WTF/wtf/GregorianDateTime.cpp</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| In file included from /home/sateesh/qtimage/openembedded-core=
/riscv-build/tmp-glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10c=
d6a106e-r0/git/Source/WTF/wtf/FastMalloc.h:26,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/config.h:51,</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| from /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-=
glibc/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/So=
urce/WTF/wtf/GregorianDateTime.cpp:25:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:211:39: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'char16_t*' increases required alignment of target type [-Wcast=
-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:763:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::SymbolRegistry* const*' increases required al=
ignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::SymbolRegistry*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:769:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::SymbolRegistry**' increases required alignment of target =
type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D char16_t]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:794:47: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'const char16_t*' increases required alignment of t=
arget type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'const T* WTF::StringImpl::t=
ailPointer() const [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:830:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const uint8_t*' {aka 'co=
nst unsigned char*'} to 'WTF::StringImpl* const*' increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:817:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 817 | return reinterpret_cast_ptr&lt;const T*&gt;(reinterpret=
_cast&lt;const uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h: In instantiation of 'T* WTF::StringImpl::tailPoi=
nter() [with T =3D WTF::StringImpl*]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:837:42: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'uint8_t*' {aka 'unsigned=
 char*'} to 'WTF::StringImpl**' increases required alignment of target type=
 [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/StringImpl.h:823:16: note: in expansion of macro 'reinterpret_=
cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 823 | return reinterpret_cast_ptr&lt;T*&gt;(reinterpret_cast&=
lt;uint8_t*&gt;(this) + tailOffset&lt;T&gt;());</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D unsigned char=
; size_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:629:69: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const unsigned char*' to=
 'const MachineWord*' {aka 'const long unsigned int*'} increases required a=
lignment of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h: In instantiation of 'bool WTF::charactersAreA=
llASCII(const CharacterType*, size_t) [with CharacterType =3D char16_t; siz=
e_t =3D long unsigned int]':</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/WTFString.h:631:66: required from here</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/StdLibExtras.h:109:30: warning: cast from 'const char16_t*' to 'con=
st MachineWord*' {aka 'const long unsigned int*'} increases required alignm=
ent of target type [-Wcast-align]</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 109 | #define reinterpret_cast_ptr reinterpret_cast</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| /home/sateesh/qtimage/openembedded-core/riscv-build/tmp-glibc=
/work/riscv64-oe-linux/qtwebkit/5.15.0+gitAUTOINC+10cd6a106e-r0/git/Source/=
WTF/wtf/text/ASCIIFastPath.h:96:26: note: in expansion of macro 'reinterpre=
t_cast_ptr'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| 96 | allCharBits |=3D *(reinterpret_cast_ptr&lt;const Machine=
Word*&gt;(characters));</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| | ^~~~~~~~~~~~~~~~~~~~</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| ninja: build stopped: subcommand failed.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">| WARNING: exit code 1 from a shell command.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">|</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">ERROR: Task (/home/sateesh/qtimage/openembedded-core/meta-qt5/r=
ecipes-qt/qt5/qtwebkit_git.bb:do_compile) failed with exit code '1'</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">NOTE: Tasks Summary: Attempted 2916 tasks of which 2915 didn't =
need to be rerun and 1 failed.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">Summary: 1 task failed:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">/home/sateesh/qtimage/openembedded-core/meta-qt5/recipes-qt/qt5=
/qtwebkit_git.bb:do_compile</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-siz=
e: medium;">Summary: There was 1 ERROR message shown, returning a non-zero =
exit code.</p>

--UCBEMPXa7M0HJMAogqN9--
