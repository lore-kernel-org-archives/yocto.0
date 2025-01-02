Return-Path: <rajesh.d@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4DB8E77188
	for <webhook@archiver.kernel.org>; Thu,  2 Jan 2025 04:43:55 +0000 (UTC)
Subject: spinnaker error (ExecutionError) while yocto build 
To: yocto@lists.yoctoproject.org
From: rajesh.d@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jan 2025 20:43:54 -0800
Message-ID: <wz8P.1735793034909370389.aNE5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="129Ploc5rAYngwETQKlZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jan 2025 04:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64488

--129Ploc5rAYngwETQKlZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build$=
 bitbake core-image-sato
Loading cache: 100% | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| ETA: =C2=A0--:--:--
Loaded 0 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
######################################| Time: 0:00:57
Parsing of 4257 .bb files complete (0 cached, 4257 parsed). 6094 targets, 2=
64 skipped, 1 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
Build Configuration:
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "2.0.0"
BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-poky-linux"
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "genericx86-64"
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "4.0.23"
TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 core2"
TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""
DISTRO_NAME =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "Poky (Yocto Project Refe=
rence Distro)"
ROS_DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "rolling"
ROS_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "2"
ROS_PYTHON_VERSION =C2=A0 =3D "3"
meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "kirkstone=
:13b13b81b91f618c13cf972067c47bd810de852f"
meta-poky
meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:0bffb5eed1e8c9469b9c6e0d77f95=
9dc9ade9c6a"
meta-intel =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:8514c60ac1a9a17ba20=
b17fa176119728a91dcf9"
meta-oe
meta-python
meta-multimedia
meta-networking
meta-filesystems =C2=A0 =C2=A0 =3D "kirkstone:4ad41baed6236d499804cbfc4f174=
042d84fce97"
meta-qt5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:644ebf220245bd=
c06e7696ccc90acc97a0dd2566"
meta-freescale =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:c525e0c19bdc46d45f71873b5f286=
f49abb69418"
meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253"
meta-ros2
meta-ros-common
meta-ros2-rolling =C2=A0 =C2=A0=3D "HEAD:72f70f7c1147197bd1e447c03187628b4b=
62a738"
meta-pylon =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "<unknown>:<unknown>"
Initialising tasks: 100% |#################################################=
###########################################################################=
######################################| Time: 0:00:05
Sstate summary: Wanted 822 Local 815 Mirrors 0 Missed 7 Current 3468 (99% m=
atch, 99% complete)
NOTE: Executing Tasks
ERROR: spinnaker-camera-driver-2.0.20-1-r0 do_configure: ExecutionError('/h=
ome/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/c=
ore2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/temp/run.do_configur=
e.74923', 1, None, None)
ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-=
driver/2.0.20-1-r0/temp/log.do_configure.74923
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/sources/meta-openembedded/meta-python/recipes-devtools/=
python/python3-distro_1.7.0.bb:do_populate_sysroot', '/home/user/Mindteck_P=
rojects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros-common/re=
cipes-devtools/yaml-cpp/yaml-cpp_0.6.2.bb:do_populate_sysroot', '/home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ro=
s2-rolling/generated-recipes/common-interfaces/sensor-msgs_5.4.1-1.bb:do_po=
pulate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB2=
88E/sources/meta-ros/meta-ros2-rolling/generated-recipes/common-interfaces/=
std-msgs_5.4.1-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Iri=
lic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-r=
ecipes/flir-camera-driver/flir-camera-msgs_2.0.20-1.bb:do_populate_sysroot'=
, '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/met=
a-ros/meta-ros2-rolling/generated-recipes/image-common/camera-info-manager_=
5.3.2-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/im=
age-common/image-transport_5.3.2-1.bb:do_populate_sysroot', '/home/user/Min=
dteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-r=
olling/generated-recipes/rclcpp/rclcpp-components_28.3.3-1.bb:do_populate_s=
ysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sour=
ces/meta-ros/meta-ros2-rolling/generated-recipes/rclcpp/rclcpp_28.3.3-1.bb:=
do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_=
AIMB288E/sources/openembedded-core/meta/recipes-core/glibc/glibc_2.35.bb:do=
_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AI=
MB288E/sources/openembedded-core/meta/recipes-devtools/cmake/cmake-native_3=
.22.3.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirksto=
ne_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/dpkg/dpkg=
_1.21.4.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/gcc/gcc=
-cross_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/gcc=
/gcc-runtime_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Ir=
ilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtoo=
ls/quilt/quilt-native_0.67.bb:do_populate_sysroot', '/home/user/Mindteck_Pr=
ojects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recip=
es-extended/lsb/lsb-release_1.4.bb:do_populate_sysroot', '/home/user/Mindte=
ck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/=
recipes-multimedia/ffmpeg/ffmpeg_5.0.1.bb:do_populate_sysroot', '/home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-cor=
e/meta/recipes-support/curl/curl_7.82.0.bb:do_populate_sysroot', '/home/use=
r/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-co=
re/meta/recipes-support/libusb/libusb1_1.0.26.bb:do_populate_sysroot', 'vir=
tual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/so=
urces/meta-ros/meta-ros2-rolling/generated-recipes/ament-cmake-ros/ament-cm=
ake-ros_0.13.0-1.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindte=
ck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-roll=
ing/generated-recipes/ament-cmake/ament-cmake_2.7.0-1.bb:do_populate_sysroo=
t', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/sources/openembedded-core/meta/recipes-devtools/ninja/ninja_1.10.2.bb=
:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/pa=
tch/patch_2.7.6.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindtec=
k_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/r=
ecipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:=
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openem=
bedded-core/meta/recipes-devtools/python/python3_3.10.15.bb:do_populate_sys=
root']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['python3-distro', 'yaml-cpp=
', 'sensor-msgs', 'std-msgs', 'flir-camera-msgs', 'camera-info-manager', 'i=
mage-transport', 'rclcpp-components', 'rclcpp', 'glibc', 'cmake-native', 'd=
pkg', 'gcc-cross-x86_64', 'gcc-runtime', 'quilt-native', 'lsb-release', 'ff=
mpeg', 'curl', 'libusb1', 'ament-cmake-ros-native', 'ament-cmake-native', '=
ninja-native', 'patch-native', 'pseudo-native', 'python3-native', 'linux-li=
bc-headers', 'libtirpc-native', 'sqlite3-native', 'util-linux-libuuid-nativ=
e', 'bzip2-native', 'readline-native', 'xz-native', 'libnsl2-native', 'zlib=
-native', 'openssl-native', 'libtool-native', 'libffi-native', 'ncurses-nat=
ive', 'gdbm-native', 'ncurses', 'xz', 'perl', 'zlib', 'bzip2', 'libstatisti=
cs-collector', 'rcl-interfaces', 'statistics-msgs', 'rcutils', 'builtin-int=
erfaces', 'rosgraph-msgs', 'ament-index-cpp', 'rcpputils', 'tracetools', 'r=
mw', 'rcl-yaml-param-parser', 'rcl', 'rosidl-runtime-c', 'rosidl-dynamic-ty=
pesupport', 'rcl-logging-interface', 'rosidl-typesupport-cpp', 'rosidl-type=
support-c', 'rosidl-runtime-cpp', 'camera-calibration-parsers', 'rclcpp-lif=
ecycle', 'pluginlib', 'message-filters', 'zstd-native', 'texinfo-dummy-nati=
ve', 'mpfr-native', 'libmpc-native', 'gnu-config-native', 'binutils-cross-x=
86_64', 'gmp-native', 'flex-native', 'libogg', 'libxcb', 'libxv', 'alsa-lib=
', 'libtheora', 'opkg-utils', 'libidn2', 'openssl', 'attr-native', 'rosidl-=
default-runtime', 'rosidl-default-generators', 'systemd', 'ament-cmake-gmoc=
k-native', 'ament-cmake-pytest-native', 'ament-cmake-gtest-native', 'domain=
-coordinator-native', 're2c-native', 'curl-native', 'geometry-msgs', 'servi=
ce-msgs', 'libgcc', 'ament-cmake-core-native', 'ament-cmake-export-interfac=
es-native', 'ament-cmake-export-targets-native', 'ament-cmake-gen-version-h=
-native', 'ament-cmake-python-native', 'ament-cmake-export-link-flags-nativ=
e', 'ament-cmake-libraries-native', 'ament-cmake-export-include-directories=
-native', 'ament-cmake-export-definitions-native', 'ament-cmake-export-libr=
aries-native', 'ament-cmake-export-dependencies-native', 'ament-cmake-test-=
native', 'ament-cmake-version-native', 'ament-cmake-target-dependencies-nat=
ive', 'class-loader', 'composition-interfaces', 'python3', 'gettext-minimal=
-native', 'perl-native', 'gdbm', 'libxcrypt', 'rmw-fastrtps-shared-cpp', 'r=
osidl-typesupport-fastrtps-c', 'rmw-implementation', 'rosidl-generator-cpp'=
, 'rmw-implementation-cmake', 'rosidl-typesupport-fastrtps-cpp', 'rmw-fastr=
tps-cpp', 'fastrtps-cmake-module', 'python-cmake-module', 'fastcdr', 'rosid=
l-core-runtime', 'lttng-ust', 'libyaml-vendor', 'libyaml', 'type-descriptio=
n-interfaces', 'rcl-logging-spdlog', 'rosidl-typesupport-interface', 'rosid=
l-cmake', 'rosidl-typesupport-introspection-cpp', 'rosidl-typesupport-intro=
spection-c', 'yaml-cpp-vendor', 'lifecycle-msgs', 'rcl-lifecycle', 'tinyxml=
2-vendor', 'm4-native', 'libxau', 'libpthread-stubs', 'xcb-proto', 'xorgpro=
to', 'libxdmcp', 'util-macros', 'libxext', 'libunistring', 'zstd', 'libsecc=
omp', 'kmod', 'initscripts', 'libcap', 'shadow-native', 'base-files', 'shad=
ow-sysroot', 'util-linux', 'shadow', 'libxkbcommon', 'update-rc.d', 'bash-c=
ompletion', 'acl', 'base-passwd', 'googletest-native', 'gmock-vendor-native=
', 'python3-pytest-native', 'gtest-vendor-native', 'python3-setuptools-nati=
ve', 'python3-catkin-pkg-native', 'ament-package-native', 'ament-cmake-incl=
ude-directories-native', 'console-bridge', 'console-bridge-vendor', 'sqlite=
3', 'libtirpc', 'util-linux-libuuid', 'libffi', 'libnsl2', 'readline', 'mak=
e-native', 'fastrtps', 'rmw-dds-common', 'rosidl-cli', 'ament-index-python'=
, 'rmw-fastrtps-dynamic-cpp', 'rmw-cyclonedds-cpp', 'rosidl-generator-c', '=
rosidl-dynamic-typesupport-fastrtps', 'rosidl-generator-py', 'liburcu', 'sp=
dlog-vendor', 'spdlog', 'libtinyxml2', 'libx11', 'libcap-ng', 'attr', 'xkey=
board-config', 'libxml2', 'wayland', 'wayland-protocols', 'python3-setuptoo=
ls-scm-native', 'python3-wheel-native', 'python3-installer-native', 'python=
3-pyparsing-native', 'python3-importlib-metadata-native', 'boost', 'asio', =
'foonathan-memory-vendor', 'cyclonedds', 'iceoryx-binding-c', 'rosidl-gener=
ator-type-description', 'python3-numpy', 'fmt', 'autoconf-archive', 'xtrans=
', 'expat', 'python3-tomli-native', 'python3-packaging-native', 'python3-fl=
it-core-native', 'unzip-native', 'python3-pathlib2-native', 'python3-zipp-n=
ative', 'python3-toml-native', 'icu', 'foonathan-memory', 'iceoryx-posh', '=
iceoryx-hoofs', 'python3-six-native', 'python3-more-itertools-native', 'cpp=
toml']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_configure
| -- The C compiler identification is GNU 11.5.0
| -- The CXX compiler identification is GNU 11.5.0
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Check for working C compiler: /home/user/Mindteck_Projects/Irilic/kirk=
stone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-dr=
iver/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-pok=
y-linux-gcc - skipped
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - done
| -- Check for working CXX compiler: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-=
driver/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-p=
oky-linux-g++ - skipped
| -- Detecting CXX compile features
| -- Detecting CXX compile features - done
| -- Found inc dir: SPINNAKER_INCLUDE_DIRS-NOTFOUND
| -- Found variable: FALSE at SPINNAKER_LIBRARIES-NOTFOUND and SPINNAKER_IN=
CLUDE_DIRS-NOTFOUND
| -- spinnaker not found
| -- libSpinnaker not found in system library path
| -- Configuring incomplete, errors occurred!
| See also "/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bu=
ild/tmp/work/core2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/build/=
CMakeFiles/CMakeOutput.log".
| CMake Error at cmake/DownloadSpinnaker.cmake:20 (find_program):
| =C2=A0 Could not find LSB_RELEASE_EXEC using the following names: lsb_rel=
ease
| Call Stack (most recent call first):
| =C2=A0 CMakeLists.txt:57 (download_spinnaker)
|
|
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/s=
ources/meta-ros/meta-ros2-rolling/generated-recipes/flir-camera-driver/spin=
naker-camera-driver_2.0.20-1.bb:do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 8784 tasks of which 8783 didn't need to be r=
erun and 1 failed.
Summary: 1 task failed:
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-r=
os/meta-ros2-rolling/generated-recipes/flir-camera-driver/spinnaker-camera-=
driver_2.0.20-1.bb:do_configure
Summary: There was 1 ERROR message, returning a non-zero exit code.

--129Ploc5rAYngwETQKlZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/b=
uild$ bitbake core-image-sato<br />Loading cache: 100% | &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| ETA: &nbsp;--:--:--<br />Loaded 0 en=
tries from dependency cache.<br />Parsing recipes: 100% |##################=
###########################################################################=
########################################################################| T=
ime: 0:00:57<br />Parsing of 4257 .bb files complete (0 cached, 4257 parsed=
). 6094 targets, 264 skipped, 1 masked, 0 errors.<br />NOTE: Resolving any =
missing task queue dependencies</div>
<div>Build Configuration:<br />BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; =3D "2.0.0"<br />BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "=
x86_64-linux"<br />NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D "universal"<br /=
>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-poky-linux"<br /=
>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "genericx86-64=
"<br />DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "poky"<b=
r />DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D "4.0.23"<br />TUNE_FEATURES &nb=
sp; &nbsp; &nbsp; &nbsp;=3D "m64 core2"<br />TARGET_FPU &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; =3D ""<br />DISTRO_NAME &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
=3D "Poky (Yocto Project Reference Distro)"<br />ROS_DISTRO &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; =3D "rolling"<br />ROS_VERSION &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;=3D "2"<br />ROS_PYTHON_VERSION &nbsp; =3D "3"<br />meta &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "kirkstone:13b13b81b91f=
618c13cf972067c47bd810de852f"<br />meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;<br />meta-yocto-bsp &nbsp; &nbsp; &nbsp; =3D "HEAD:0bffb5eed1e8=
c9469b9c6e0d77f959dc9ade9c6a"<br />meta-intel &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; =3D "HEAD:8514c60ac1a9a17ba20b17fa176119728a91dcf9"<br />meta-oe &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />meta-python &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;<br />meta-multimedia &nbsp; &nbsp; &nbsp;<br />meta-n=
etworking &nbsp; &nbsp; &nbsp;<br />meta-filesystems &nbsp; &nbsp; =3D "kir=
kstone:4ad41baed6236d499804cbfc4f174042d84fce97"<br />meta-qt5 &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0d=
d2566"<br />meta-freescale &nbsp; &nbsp; &nbsp; =3D "HEAD:c525e0c19bdc46d45=
f71873b5f286f49abb69418"<br />meta-freescale-distro =3D "HEAD:d5bbb487b2816=
dfc74984a78b67f7361ce404253"<br />meta-ros2 &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;<br />meta-ros-common &nbsp; &nbsp; &nbsp;<br />meta-ros2-rolling=
 &nbsp; &nbsp;=3D "HEAD:72f70f7c1147197bd1e447c03187628b4b62a738"<br />meta=
-pylon &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "&lt;unknown&gt;:&lt;unknown&=
gt;"</div>
<div>Initialising tasks: 100% |############################################=
###########################################################################=
###########################################| Time: 0:00:05<br />Sstate summ=
ary: Wanted 822 Local 815 Mirrors 0 Missed 7 Current 3468 (99% match, 99% c=
omplete)<br />NOTE: Executing Tasks<br />ERROR: spinnaker-camera-driver-2.0=
.20-1-r0 do_configure: ExecutionError('/home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camer=
a-driver/2.0.20-1-r0/temp/run.do_configure.74923', 1, None, None)<br />ERRO=
R: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/kirkst=
one_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-driv=
er/2.0.20-1-r0/temp/log.do_configure.74923<br />Log data follows:<br />| DE=
BUG: Executing python function extend_recipe_sysroot<br />| NOTE: Direct de=
pendencies are ['/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB28=
8E/sources/meta-openembedded/meta-python/recipes-devtools/python/python3-di=
stro_1.7.0.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/sources/meta-ros/meta-ros-common/recipes-devtools/ya=
ml-cpp/yaml-cpp_0.6.2.bb:do_populate_sysroot', '/home/user/Mindteck_Project=
s/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/genera=
ted-recipes/common-interfaces/sensor-msgs_5.4.1-1.bb:do_populate_sysroot', =
'/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-=
ros/meta-ros2-rolling/generated-recipes/common-interfaces/std-msgs_5.4.1-1.=
bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yoc=
to_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/flir-camer=
a-driver/flir-camera-msgs_2.0.20-1.bb:do_populate_sysroot', '/home/user/Min=
dteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-r=
olling/generated-recipes/image-common/camera-info-manager_5.3.2-1.bb:do_pop=
ulate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB28=
8E/sources/meta-ros/meta-ros2-rolling/generated-recipes/image-common/image-=
transport_5.3.2-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Ir=
ilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-=
recipes/rclcpp/rclcpp-components_28.3.3-1.bb:do_populate_sysroot', '/home/u=
ser/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta=
-ros2-rolling/generated-recipes/rclcpp/rclcpp_28.3.3-1.bb:do_populate_sysro=
ot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/=
openembedded-core/meta/recipes-core/glibc/glibc_2.35.bb:do_populate_sysroot=
', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/op=
enembedded-core/meta/recipes-devtools/cmake/cmake-native_3.22.3.bb:do_popul=
ate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E=
/sources/openembedded-core/meta/recipes-devtools/dpkg/dpkg_1.21.4.bb:do_pop=
ulate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB28=
8E/sources/openembedded-core/meta/recipes-devtools/gcc/gcc-cross_11.5.bb:do=
_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AI=
MB288E/sources/openembedded-core/meta/recipes-devtools/gcc/gcc-runtime_11.5=
.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yo=
cto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/quilt/quilt-na=
tive_0.67.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-extended/lsb/l=
sb-release_1.4.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-multimedi=
a/ffmpeg/ffmpeg_5.0.1.bb:do_populate_sysroot', '/home/user/Mindteck_Project=
s/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-su=
pport/curl/curl_7.82.0.bb:do_populate_sysroot', '/home/user/Mindteck_Projec=
ts/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-s=
upport/libusb/libusb1_1.0.26.bb:do_populate_sysroot', 'virtual:native:/home=
/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/me=
ta-ros2-rolling/generated-recipes/ament-cmake-ros/ament-cmake-ros_0.13.0-1.=
bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-rec=
ipes/ament-cmake/ament-cmake_2.7.0-1.bb:do_populate_sysroot', 'virtual:nati=
ve:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/ope=
nembedded-core/meta/recipes-devtools/ninja/ninja_1.10.2.bb:do_populate_sysr=
oot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_A=
IMB288E/sources/openembedded-core/meta/recipes-devtools/patch/patch_2.7.6.b=
b:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/p=
seudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindte=
ck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/=
recipes-devtools/python/python3_3.10.15.bb:do_populate_sysroot']<br />| NOT=
E: Installed into sysroot: []<br />| NOTE: Skipping as already exists in sy=
sroot: ['python3-distro', 'yaml-cpp', 'sensor-msgs', 'std-msgs', 'flir-came=
ra-msgs', 'camera-info-manager', 'image-transport', 'rclcpp-components', 'r=
clcpp', 'glibc', 'cmake-native', 'dpkg', 'gcc-cross-x86_64', 'gcc-runtime',=
 'quilt-native', 'lsb-release', 'ffmpeg', 'curl', 'libusb1', 'ament-cmake-r=
os-native', 'ament-cmake-native', 'ninja-native', 'patch-native', 'pseudo-n=
ative', 'python3-native', 'linux-libc-headers', 'libtirpc-native', 'sqlite3=
-native', 'util-linux-libuuid-native', 'bzip2-native', 'readline-native', '=
xz-native', 'libnsl2-native', 'zlib-native', 'openssl-native', 'libtool-nat=
ive', 'libffi-native', 'ncurses-native', 'gdbm-native', 'ncurses', 'xz', 'p=
erl', 'zlib', 'bzip2', 'libstatistics-collector', 'rcl-interfaces', 'statis=
tics-msgs', 'rcutils', 'builtin-interfaces', 'rosgraph-msgs', 'ament-index-=
cpp', 'rcpputils', 'tracetools', 'rmw', 'rcl-yaml-param-parser', 'rcl', 'ro=
sidl-runtime-c', 'rosidl-dynamic-typesupport', 'rcl-logging-interface', 'ro=
sidl-typesupport-cpp', 'rosidl-typesupport-c', 'rosidl-runtime-cpp', 'camer=
a-calibration-parsers', 'rclcpp-lifecycle', 'pluginlib', 'message-filters',=
 'zstd-native', 'texinfo-dummy-native', 'mpfr-native', 'libmpc-native', 'gn=
u-config-native', 'binutils-cross-x86_64', 'gmp-native', 'flex-native', 'li=
bogg', 'libxcb', 'libxv', 'alsa-lib', 'libtheora', 'opkg-utils', 'libidn2',=
 'openssl', 'attr-native', 'rosidl-default-runtime', 'rosidl-default-genera=
tors', 'systemd', 'ament-cmake-gmock-native', 'ament-cmake-pytest-native', =
'ament-cmake-gtest-native', 'domain-coordinator-native', 're2c-native', 'cu=
rl-native', 'geometry-msgs', 'service-msgs', 'libgcc', 'ament-cmake-core-na=
tive', 'ament-cmake-export-interfaces-native', 'ament-cmake-export-targets-=
native', 'ament-cmake-gen-version-h-native', 'ament-cmake-python-native', '=
ament-cmake-export-link-flags-native', 'ament-cmake-libraries-native', 'ame=
nt-cmake-export-include-directories-native', 'ament-cmake-export-definition=
s-native', 'ament-cmake-export-libraries-native', 'ament-cmake-export-depen=
dencies-native', 'ament-cmake-test-native', 'ament-cmake-version-native', '=
ament-cmake-target-dependencies-native', 'class-loader', 'composition-inter=
faces', 'python3', 'gettext-minimal-native', 'perl-native', 'gdbm', 'libxcr=
ypt', 'rmw-fastrtps-shared-cpp', 'rosidl-typesupport-fastrtps-c', 'rmw-impl=
ementation', 'rosidl-generator-cpp', 'rmw-implementation-cmake', 'rosidl-ty=
pesupport-fastrtps-cpp', 'rmw-fastrtps-cpp', 'fastrtps-cmake-module', 'pyth=
on-cmake-module', 'fastcdr', 'rosidl-core-runtime', 'lttng-ust', 'libyaml-v=
endor', 'libyaml', 'type-description-interfaces', 'rcl-logging-spdlog', 'ro=
sidl-typesupport-interface', 'rosidl-cmake', 'rosidl-typesupport-introspect=
ion-cpp', 'rosidl-typesupport-introspection-c', 'yaml-cpp-vendor', 'lifecyc=
le-msgs', 'rcl-lifecycle', 'tinyxml2-vendor', 'm4-native', 'libxau', 'libpt=
hread-stubs', 'xcb-proto', 'xorgproto', 'libxdmcp', 'util-macros', 'libxext=
', 'libunistring', 'zstd', 'libseccomp', 'kmod', 'initscripts', 'libcap', '=
shadow-native', 'base-files', 'shadow-sysroot', 'util-linux', 'shadow', 'li=
bxkbcommon', 'update-rc.d', 'bash-completion', 'acl', 'base-passwd', 'googl=
etest-native', 'gmock-vendor-native', 'python3-pytest-native', 'gtest-vendo=
r-native', 'python3-setuptools-native', 'python3-catkin-pkg-native', 'ament=
-package-native', 'ament-cmake-include-directories-native', 'console-bridge=
', 'console-bridge-vendor', 'sqlite3', 'libtirpc', 'util-linux-libuuid', 'l=
ibffi', 'libnsl2', 'readline', 'make-native', 'fastrtps', 'rmw-dds-common',=
 'rosidl-cli', 'ament-index-python', 'rmw-fastrtps-dynamic-cpp', 'rmw-cyclo=
nedds-cpp', 'rosidl-generator-c', 'rosidl-dynamic-typesupport-fastrtps', 'r=
osidl-generator-py', 'liburcu', 'spdlog-vendor', 'spdlog', 'libtinyxml2', '=
libx11', 'libcap-ng', 'attr', 'xkeyboard-config', 'libxml2', 'wayland', 'wa=
yland-protocols', 'python3-setuptools-scm-native', 'python3-wheel-native', =
'python3-installer-native', 'python3-pyparsing-native', 'python3-importlib-=
metadata-native', 'boost', 'asio', 'foonathan-memory-vendor', 'cyclonedds',=
 'iceoryx-binding-c', 'rosidl-generator-type-description', 'python3-numpy',=
 'fmt', 'autoconf-archive', 'xtrans', 'expat', 'python3-tomli-native', 'pyt=
hon3-packaging-native', 'python3-flit-core-native', 'unzip-native', 'python=
3-pathlib2-native', 'python3-zipp-native', 'python3-toml-native', 'icu', 'f=
oonathan-memory', 'iceoryx-posh', 'iceoryx-hoofs', 'python3-six-native', 'p=
ython3-more-itertools-native', 'cpptoml']<br />| DEBUG: Python function ext=
end_recipe_sysroot finished<br />| DEBUG: Executing shell function do_confi=
gure<br />| -- The C compiler identification is GNU 11.5.0<br />| -- The CX=
X compiler identification is GNU 11.5.0<br />| -- Detecting C compiler ABI =
info<br />| -- Detecting C compiler ABI info - done<br />| -- Check for wor=
king C compiler: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB28=
8E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/r=
ecipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc - skip=
ped<br />| -- Detecting C compile features<br />| -- Detecting C compile fe=
atures - done<br />| -- Detecting CXX compiler ABI info<br />| -- Detecting=
 CXX compiler ABI info - done<br />| -- Check for working CXX compiler: /ho=
me/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/co=
re2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/recipe-sysroot-native=
/usr/bin/x86_64-poky-linux/x86_64-poky-linux-g++ - skipped<br />| -- Detect=
ing CXX compile features<br />| -- Detecting CXX compile features - done<br=
 />| -- Found inc dir: SPINNAKER_INCLUDE_DIRS-NOTFOUND<br />| -- Found vari=
able: FALSE at SPINNAKER_LIBRARIES-NOTFOUND and SPINNAKER_INCLUDE_DIRS-NOTF=
OUND<br />| -- spinnaker not found<br />| -- libSpinnaker not found in syst=
em library path<br />| -- Configuring incomplete, errors occurred!<br />| S=
ee also "/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build=
/tmp/work/core2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/build/CMa=
keFiles/CMakeOutput.log".<br />| CMake Error at cmake/DownloadSpinnaker.cma=
ke:20 (find_program):<br />| &nbsp; Could not find LSB_RELEASE_EXEC using t=
he following names: lsb_release<br />| Call Stack (most recent call first):=
<br />| &nbsp; CMakeLists.txt:57 (download_spinnaker)<br />|&nbsp;<br />|&n=
bsp;<br />| WARNING: exit code 1 from a shell command.<br />ERROR: Task (/h=
ome/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros=
/meta-ros2-rolling/generated-recipes/flir-camera-driver/spinnaker-camera-dr=
iver_2.0.20-1.bb:do_configure) failed with exit code '1'<br />NOTE: Tasks S=
ummary: Attempted 8784 tasks of which 8783 didn't need to be rerun and 1 fa=
iled.</div>
<div>Summary: 1 task failed:<br />&nbsp; /home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-rec=
ipes/flir-camera-driver/spinnaker-camera-driver_2.0.20-1.bb:do_configure<br=
 />Summary: There was 1 ERROR message, returning a non-zero exit code.</div=
>
</div>

--129Ploc5rAYngwETQKlZ--

