Subject: kcrash package compile issue
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (106.208.117.10)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 29 Aug 2021 21:10:07 -0700
Message-ID: <SB2h.1630296607398460920.bP2t@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RvHkb16aBTt3Z8hcECSG"

--RvHkb16aBTt3Z8hcECSG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am trying to build kcrash package. I got below error.Can anybody know how=
 to fix this please guide me.

ERROR: kcrash-5.85.0-r0 do_configure: Execution of '/home/yocto/sources/fu5=
40-build/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/run.do_confi=
gure.12650' failed with exit code 1:

-- The C compiler identification is GNU 10.2.0

-- The CXX compiler identification is GNU 10.2.0

-- Detecting C compiler ABI info

-- Detecting C compiler ABI info - done

-- Check for working C compiler: /home/yocto/sources/fu540-build/tmp-glibc/=
work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bin/riscv6=
4-oe-linux/riscv64-oe-linux-gcc - skipped

-- Detecting C compile features

-- Detecting C compile features - done

-- Detecting CXX compiler ABI info

-- Detecting CXX compiler ABI info - done

-- Check for working CXX compiler: /home/yocto/sources/fu540-build/tmp-glib=
c/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bin/risc=
v64-oe-linux/riscv64-oe-linux-g++ - skipped

-- Detecting CXX compile features

-- Detecting CXX compile features - done

--

Installing in /usr. Run /home/yocto/sources/fu540-build/tmp-glibc/work/risc=
v64-oe-linux/kcrash/5.85.0-r0/build/prefix.sh to set the environment for KC=
rash.

-- Looking for __GLIBC__

-- Looking for __GLIBC__ - found

-- Performing Test _OFFT_IS_64BIT

-- Performing Test _OFFT_IS_64BIT - Success

-- Performing Test HAVE_DATE_TIME

-- Performing Test HAVE_DATE_TIME - Success

-- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE

-- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE - Success

fatal: not a git repository (or any of the parent directories): .git

-- Found X11: /home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-lin=
ux/kcrash/5.85.0-r0/recipe-sysroot/usr/include

-- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-glibc/wo=
rk/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so;/home=
/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcrash/5=
.85.0-r0/recipe-sysroot/usr/lib/libXext.so

-- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-glibc/wo=
rk/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so;/home=
/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcrash/5=
.85.0-r0/recipe-sysroot/usr/lib/libXext.so - found

-- Looking for gethostbyname

-- Looking for gethostbyname - found

-- Looking for connect

-- Looking for connect - found

-- Looking for remove

-- Looking for remove - found

-- Looking for shmat

-- Looking for shmat - found

-- Looking for IceConnectionNumber in ICE

-- Looking for IceConnectionNumber in ICE - found

-- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY

-- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY - Success

-- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY

-- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY - Success

-- Performing Test COMPILER_HAS_DEPRECATED_ATTR

-- Performing Test COMPILER_HAS_DEPRECATED_ATTR - Success

-- The following features have been enabled:

* Core Pattern Raising, Raising signals to kernel core patterns (iff the pa=
ttern is a process). You may wish to not install drkonqi if this can cause =
a UI conflict.

-- The following OPTIONAL packages have been found:

* X11

-- The following REQUIRED packages have been found:

* ECM (required version >=3D 5.85.0), Extra CMake Modules., <https://commit=
s.kde.org/extra-cmake-modules>

* Qt5 (required version >=3D 5.15.0)

* Qt5Core (required version >=3D 5.15.0)

* KF5CoreAddons (required version >=3D 5.85.0)

* Qt5Gui (required version >=3D 5.15.0)

* KF5WindowSystem (required version >=3D 5.85.0)

* Qt5X11Extras (required version >=3D 5.15.0)

-- The following features have been disabled:

* QCH, API documentation in QCH format (for e.g. Qt Assistant, Qt Creator &=
 KDevelop)

-- Configuring done

CMake Error in src/CMakeLists.txt:

Imported target "KF5::WindowSystem" includes non-existent path

"/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindowsys=
tem/5.85.0-r0/recipe-sysroot/usr/include"

in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:

* The path was deleted, renamed, or moved to another location.

* An install or uninstall procedure did not complete successfully.

* The installation package was faulty and references files it does not

provide.

CMake Error in src/CMakeLists.txt:

Imported target "KF5::WindowSystem" includes non-existent path

"/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindowsys=
tem/5.85.0-r0/recipe-sysroot/usr/include"

in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:

* The path was deleted, renamed, or moved to another location.

* An install or uninstall procedure did not complete successfully.

* The installation package was faulty and references files it does not

provide.

-- Generating done

CMake Warning:

Manually-specified variables were not used by the project:

BUILD_DESIGNERPLUGIN

LIB_SUFFIX

OE_KF5_PATH_HOST_ROOT

OE_QMAKE_PATH_ARCHDATA

OE_QMAKE_PATH_BINS

OE_QMAKE_PATH_DATA

OE_QMAKE_PATH_DOCS

OE_QMAKE_PATH_EXAMPLES

OE_QMAKE_PATH_HEADERS

OE_QMAKE_PATH_HOST_BINS

OE_QMAKE_PATH_HOST_DATA

OE_QMAKE_PATH_HOST_LIBS

OE_QMAKE_PATH_HOST_PREFIX

OE_QMAKE_PATH_LIBEXECS

OE_QMAKE_PATH_LIBS

OE_QMAKE_PATH_PLUGINS

OE_QMAKE_PATH_PREFIX

OE_QMAKE_PATH_QML

OE_QMAKE_PATH_QT_ARCHDATA

OE_QMAKE_PATH_QT_BINS

OE_QMAKE_PATH_QT_DATA

OE_QMAKE_PATH_QT_DOCS

OE_QMAKE_PATH_QT_EXAMPLES

OE_QMAKE_PATH_QT_HEADERS

OE_QMAKE_PATH_QT_SETTINGS

OE_QMAKE_PATH_QT_TESTS

OE_QMAKE_PATH_QT_TRANSLATIONS

OE_QMAKE_PATH_SETTINGS

OE_QMAKE_PATH_TESTS

OE_QMAKE_PATH_TRANSLATIONS

PYTHON_EXECUTABLE

Python3_EXECUTABLE

Python_EXECUTABLE

CMake Generate step failed. Build files cannot be regenerated correctly.

WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/yocto/sources/fu540-build/tmp-gl=
ibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/log.do_configure.12650

--
Regards,
Sateesh

--RvHkb16aBTt3Z8hcECSG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;I am tr=
ying to build kcrash package. I got below error.Can anybody know how to fix=
 this please guide me.<br /><br />
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">ERROR: kcrash-5.85.0-r0 do_configure: Execution of '/home/yocto/=
sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/r=
un.do_configure.12650' failed with exit code 1:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- The C compiler identification is GNU 10.2.0</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- The CXX compiler identification is GNU 10.2.0</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting C compiler ABI info</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting C compiler ABI info - done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Check for working C compiler: /home/yocto/sources/fu540-build=
/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr=
/bin/riscv64-oe-linux/riscv64-oe-linux-gcc - skipped</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting C compile features</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting C compile features - done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting CXX compiler ABI info</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting CXX compiler ABI info - done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Check for working CXX compiler: /home/yocto/sources/fu540-bui=
ld/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/u=
sr/bin/riscv64-oe-linux/riscv64-oe-linux-g++ - skipped</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting CXX compile features</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Detecting CXX compile features - done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">--</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">Installing in /usr. Run /home/yocto/sources/fu540-build/tmp-glib=
c/work/riscv64-oe-linux/kcrash/5.85.0-r0/build/prefix.sh to set the environ=
ment for KCrash.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for __GLIBC__</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for __GLIBC__ - found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test _OFFT_IS_64BIT</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test _OFFT_IS_64BIT - Success</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test HAVE_DATE_TIME</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test HAVE_DATE_TIME - Success</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE - Success</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">fatal: not a git repository (or any of the parent directories): =
.git</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Found X11: /home/yocto/sources/fu540-build/tmp-glibc/work/ris=
cv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/include</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/t=
mp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX=
11.so;/home/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-lin=
ux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/t=
mp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX=
11.so;/home/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-lin=
ux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so - found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for gethostbyname</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for gethostbyname - found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for connect</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for connect - found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for remove</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for remove - found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for shmat</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for shmat - found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for IceConnectionNumber in ICE</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Looking for IceConnectionNumber in ICE - found</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY - Success</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY - Succe=
ss</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test COMPILER_HAS_DEPRECATED_ATTR</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Performing Test COMPILER_HAS_DEPRECATED_ATTR - Success</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- The following features have been enabled:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* Core Pattern Raising, Raising signals to kernel core patterns =
(iff the pattern is a process). You may wish to not install drkonqi if this=
 can cause a UI conflict.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- The following OPTIONAL packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* X11</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- The following REQUIRED packages have been found:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* ECM (required version &gt;=3D 5.85.0), Extra CMake Modules., &=
lt;https://commits.kde.org/extra-cmake-modules&gt;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* Qt5 (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* Qt5Core (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* KF5CoreAddons (required version &gt;=3D 5.85.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* Qt5Gui (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* KF5WindowSystem (required version &gt;=3D 5.85.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* Qt5X11Extras (required version &gt;=3D 5.15.0)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- The following features have been disabled:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* QCH, API documentation in QCH format (for e.g. Qt Assistant, Q=
t Creator &amp; KDevelop)</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Configuring done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">CMake Error in src/CMakeLists.txt:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">Imported target "KF5::WindowSystem" includes non-existent path</=
p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">"/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux=
/kwindowsystem/5.85.0-r0/recipe-sysroot/usr/include"</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:<=
/p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* The path was deleted, renamed, or moved to another location.</=
p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* An install or uninstall procedure did not complete successfull=
y.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* The installation package was faulty and references files it do=
es not</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">provide.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">CMake Error in src/CMakeLists.txt:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">Imported target "KF5::WindowSystem" includes non-existent path</=
p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">"/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux=
/kwindowsystem/5.85.0-r0/recipe-sysroot/usr/include"</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:<=
/p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* The path was deleted, renamed, or moved to another location.</=
p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* An install or uninstall procedure did not complete successfull=
y.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">* The installation package was faulty and references files it do=
es not</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">provide.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">-- Generating done</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">CMake Warning:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">Manually-specified variables were not used by the project:</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">BUILD_DESIGNERPLUGIN</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">LIB_SUFFIX</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_KF5_PATH_HOST_ROOT</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_ARCHDATA</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_BINS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_DATA</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_DOCS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_EXAMPLES</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_HEADERS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_HOST_BINS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_HOST_DATA</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_HOST_LIBS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_HOST_PREFIX</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_LIBEXECS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_LIBS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_PLUGINS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_PREFIX</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QML</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_ARCHDATA</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_BINS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_DATA</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_DOCS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_EXAMPLES</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_HEADERS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_SETTINGS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_TESTS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_QT_TRANSLATIONS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_SETTINGS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_TESTS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">OE_QMAKE_PATH_TRANSLATIONS</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">PYTHON_EXECUTABLE</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">Python3_EXECUTABLE</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">Python_EXECUTABLE</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">CMake Generate step failed. Build files cannot be regenerated co=
rrectly.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">WARNING: exit code 1 from a shell command.</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">&nbsp;</p>
<p style=3D"margin-bottom: 0cm; line-height: 1px; color: #000000; font-size=
: medium;">ERROR: Logfile of failure stored in: /home/yocto/sources/fu540-b=
uild/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/log.do_configure=
.12650</p>
-- <br />Regards,<br />Sateesh

--RvHkb16aBTt3Z8hcECSG--
