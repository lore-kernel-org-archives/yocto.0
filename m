Return-Path: <rajesh.d@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A586BE7718D
	for <webhook@archiver.kernel.org>; Mon, 23 Dec 2024 13:50:34 +0000 (UTC)
Subject: =?UTF-8?B?Y29yZS1pbWFnZS1zYXRvIHlvY3RvIGJ1aWxkIGVycm9yIGZvciDCoG1hY2hpbmUgaW50ZWwtY29yZWk3LXg4Nl82NCAgI2JpdGJha2UgI2NtYWtlICNkaXN0cm8gI25hdGl2ZSAjcG9reSAjeW9jdG8=?=
To: yocto@lists.yoctoproject.org
From: rajesh.d@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 23 Dec 2024 05:50:24 -0800
Message-ID: <WyJ9.1734961824787251160.4XdU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VUlxaRRm2d1c3Oz1JJpl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2024 13:50:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64478

--VUlxaRRm2d1c3Oz1JJpl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am working on a project for the *intel-corei7-x86_64* hardware board, bui=
lding the Yocto image *core-image-sato*.
While trying to add the *spinnaker package* to the Yocto build, I encounter=
ed the following error during the build process for *core-image-sato:* im u=
sing meta-ros layer for including this spinnaker package.

user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build$=
 bitbake core-image-sato -k
Loading cache: 100% |######################################################=
###########################################################################=
######################################| Time: 0:00:00
Loaded 6093 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
Build Configuration:
BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "2.0.0"
BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-poky-linux"
MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "intel-corei7-6=
4"
DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "4.0.23"
TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 corei7"
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
Initialising tasks: 100% |#################################################=
###########################################################################=
######################################| Time: 0:00:05
Sstate summary: Wanted 1027 Local 542 Mirrors 0 Missed 485 Current 3372 (52=
% match, 88% complete)
NOTE: Executing Tasks
ERROR: flir-camera-msgs-2.0.20-1-r0 do_configure: ExecutionError('/home/use=
r/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-6=
4-poky-linux/flir-camera-msgs/2.0.20-1-r0/temp/run.do_configure.103139', 1,=
 None, None)
ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs=
/2.0.20-1-r0/temp/log.do_configure.103139
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/co=
mmon-interfaces/std-msgs_5.4.1-1.bb:do_populate_sysroot', '/home/user/Mindt=
eck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rol=
ling/generated-recipes/rcl-interfaces/builtin-interfaces_2.2.0-1.bb:do_popu=
late_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288=
E/sources/meta-ros/meta-ros2-rolling/generated-recipes/rosidl-defaults/rosi=
dl-default-generators_1.7.1-1.bb:do_populate_sysroot', '/home/user/Mindteck=
_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/re=
cipes-core/glibc/glibc_2.35.bb:do_populate_sysroot', '/home/user/Mindteck_P=
rojects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/reci=
pes-devtools/cmake/cmake-native_3.22.3.bb:do_populate_sysroot', '/home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-cor=
e/meta/recipes-devtools/gcc/gcc-cross_11.5.bb:do_populate_sysroot', '/home/=
user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded=
-core/meta/recipes-devtools/gcc/gcc-runtime_11.5.bb:do_populate_sysroot', '=
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openem=
bedded-core/meta/recipes-devtools/quilt/quilt-native_0.67.bb:do_populate_sy=
sroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto=
_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/ament-cmake/=
ament-cmake_2.7.0-1.bb:do_populate_sysroot', 'virtual:native:/home/user/Min=
dteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-r=
olling/generated-recipes/rosidl-defaults/rosidl-default-generators_1.7.1-1.=
bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/=
ninja/ninja_1.10.2.bb:do_populate_sysroot', 'virtual:native:/home/user/Mind=
teck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/met=
a/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot', 'virtual:nati=
ve:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/ope=
nembedded-core/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysro=
ot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AI=
MB288E/sources/openembedded-core/meta/recipes-devtools/python/python3_3.10.=
15.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['std-msgs', 'builtin-interf=
aces', 'rosidl-default-generators', 'glibc', 'cmake-native', 'gcc-cross-x86=
_64', 'gcc-runtime', 'quilt-native', 'ament-cmake-native', 'rosidl-default-=
generators-native', 'ninja-native', 'patch-native', 'pseudo-native', 'pytho=
n3-native', 'rosidl-runtime-cpp', 'rosidl-generator-cpp', 'rosidl-typesuppo=
rt-fastrtps-c', 'rosidl-typesupport-c', 'rosidl-runtime-c', 'python-cmake-m=
odule', 'fastcdr', 'rosidl-typesupport-cpp', 'rosidl-typesupport-fastrtps-c=
pp', 'rosidl-core-runtime', 'fastrtps-cmake-module', 'linux-libc-headers', =
'bzip2-native', 'xz-native', 'curl-native', 'zlib-native', 'zstd-native', '=
ncurses-native', 're2c-native', 'libmpc-native', 'gmp-native', 'binutils-cr=
oss-x86_64', 'texinfo-dummy-native', 'libtool-native', 'flex-native', 'mpfr=
-native', 'gnu-config-native', 'attr-native', 'rosidl-core-generators-nativ=
e', 'service-msgs-native', 'ament-cmake-core-native', 'action-msgs-native',=
 'libgcc', 'sqlite3-native', 'libffi-native', 'gdbm-native', 'openssl-nativ=
e', 'libnsl2-native', 'libtirpc-native', 'readline-native', 'util-linux-lib=
uuid-native', 'ament-cmake-export-targets-native', 'ament-cmake-export-libr=
aries-native', 'ament-cmake-test-native', 'ament-cmake-python-native', 'ame=
nt-cmake-export-dependencies-native', 'ament-cmake-export-link-flags-native=
', 'ament-cmake-target-dependencies-native', 'ament-cmake-export-definition=
s-native', 'ament-cmake-version-native', 'ament-cmake-libraries-native', 'a=
ment-cmake-export-include-directories-native', 'ament-cmake-gen-version-h-n=
ative', 'ament-cmake-export-interfaces-native', 'rosidl-cmake', 'rosidl-gen=
erator-c', 'ament-index-python', 'rmw', 'rosidl-typesupport-interface', 'ro=
sidl-cli', 'rcutils', 'rosidl-typesupport-introspection-c', 'rcpputils', 'r=
osidl-typesupport-introspection-cpp', 'rosidl-generator-py', 'gettext-minim=
al-native', 'm4-native', 'rosidl-typesupport-cpp-native', 'rosidl-generator=
-cpp-native', 'rosidl-typesupport-fastrtps-cpp-native', 'rosidl-cmake-nativ=
e', 'rosidl-typesupport-c-native', 'rosidl-typesupport-introspection-c-nati=
ve', 'rosidl-typesupport-fastrtps-c-native', 'rosidl-typesupport-introspect=
ion-cpp-native', 'rosidl-generator-c-native', 'rosidl-generator-py-native',=
 'rosidl-core-runtime-native', 'builtin-interfaces-native', 'python3-catkin=
-pkg-native', 'ament-package-native', 'unique-identifier-msgs-native', 'pyt=
hon3-numpy-native', 'rosidl-adapter-native', 'python3-lark-parser-native', =
'rosidl-parser-native', 'perl-native', 'ament-cmake-include-directories-nat=
ive', 'rosidl-generator-type-description', 'python3', 'rosidl-dynamic-types=
upport', 'python3-numpy', 'ament-cmake-ros-native', 'rosidl-runtime-cpp-nat=
ive', 'rcutils-native', 'ament-index-python-native', 'rosidl-runtime-c-nati=
ve', 'rosidl-typesupport-interface-native', 'rosidl-pycommon-native', 'rcpp=
utils-native', 'rosidl-generator-type-description-native', 'rosidl-cli-nati=
ve', 'rmw-native', 'fastcdr-native', 'fastrtps-cmake-module-native', 'pytho=
n3-empy-native', 'rpyutils-native', 'ament-cmake-flake8-native', 'ament-cma=
ke-cppcheck-native', 'ament-cmake-uncrustify-native', 'python-cmake-module-=
native', 'ament-cmake-pep257-native', 'ament-cmake-cpplint-native', 'python=
3-setuptools-native', 'python3-pyparsing-native', 'python3-installer-native=
', 'python3-wheel-native', 'python3-importlib-metadata-native', 'python3-cy=
thon-native', 'make-native', 'libffi', 'opkg-utils', 'xz', 'bzip2', 'sqlite=
3', 'gdbm', 'libtirpc', 'libnsl2', 'ncurses', 'readline', 'zlib', 'util-lin=
ux-libuuid', 'libxcrypt', 'openssl', 'ament-cmake-pytest-native', 'ament-cm=
ake-gmock-native', 'domain-coordinator-native', 'ament-cmake-gtest-native',=
 'python3-argcomplete-native', 'rosidl-dynamic-typesupport-native', 'ament-=
flake8-native', 'ament-cppcheck-native', 'ament-uncrustify-native', 'ament-=
pep257-native', 'ament-cpplint-native', 'unzip-native', 'python3-flit-core-=
native', 'python3-pathlib2-native', 'python3-zipp-native', 'python3-toml-na=
tive', 'python3-setuptools-scm-native', 'python3-pytest-native', 'googletes=
t-native', 'gmock-vendor-native', 'gtest-vendor-native', 'python3-flake8-co=
mprehensions-native', 'ament-lint-native', 'python3-flake8-docstrings-nativ=
e', 'python3-flake8-import-order-native', 'python3-flake8-native', 'python3=
-flake8-quotes-native', 'python3-flake8-builtins-native', 'cppcheck-native'=
, 'uncrustify-vendor-native', 'python3-pydocstyle-native', 'python3-six-nat=
ive', 'python3-more-itertools-native', 'python3-tomli-native', 'python3-pac=
kaging-native', 'python3-mccabe-native', 'python3-pep8-native', 'python3-py=
flakes-native', 'python3-cmd2-native', 'python3-prettytable-native', 'libpc=
re-native', 'boost-native', 'uncrustify-native', 'ament-cmake-vendor-packag=
e-native', 'python3-pyperclip-native', 'boost-build-native', 'icu-native', =
'python3-vcstool-native', 'python3-pyyaml-native', 'libyaml-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_configure
| -- The C compiler identification is GNU 11.5.0
| -- The CXX compiler identification is GNU 11.5.0
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Check for working C compiler: /home/user/Mindteck_Projects/Irilic/kirk=
stone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2=
.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linu=
x-gcc - skipped
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - done
| -- Check for working CXX compiler: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs=
/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-li=
nux-g++ - skipped
| -- Detecting CXX compile features
| -- Detecting CXX compile features - done
| -- Found ament_cmake: 2.7.0 (/home/user/Mindteck_Projects/Irilic/kirkston=
e_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.2=
0-1-r0/recipe-sysroot-native/opt/ros/rolling/share/ament_cmake/cmake)
| -- Found Python3: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/reci=
pe-sysroot-native/usr/bin/python3-native/python3 (found version "3.10.15") =
found components: Interpreter
| -- Found builtin_interfaces: 2.2.0 (/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msg=
s/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/builtin_interfaces/cmake=
)
| -- Found rosidl_generator_c: 4.8.1 (/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msg=
s/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_generator_c/cmake=
)
| -- Found rosidl_generator_cpp: 4.8.1 (/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-m=
sgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_generator_cpp/c=
make)
| -- Using all available rosidl_typesupport_c: rosidl_typesupport_introspec=
tion_c;rosidl_typesupport_fastrtps_c
| -- Using all available rosidl_typesupport_cpp: rosidl_typesupport_introsp=
ection_cpp;rosidl_typesupport_fastrtps_cpp
| -- Found rosidl_default_generators: 1.7.1 (/home/user/Mindteck_Projects/I=
rilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-cam=
era-msgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_default_ge=
nerators/cmake)
| -- Found rosidl_adapter: 4.8.1 (/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.=
0.20-1-r0/recipe-sysroot-native/opt/ros/rolling/share/rosidl_adapter/cmake)
| -- Found std_msgs: 5.4.1 (/home/user/Mindteck_Projects/Irilic/kirkstone_y=
octo_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1=
-r0/recipe-sysroot/opt/ros/rolling/share/std_msgs/cmake)
| CMake Error at /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB28=
8E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-=
sysroot/opt/ros/rolling/share/std_msgs/cmake/ament_cmake_export_dependencie=
s-extras.cmake:21 (find_package):
| =C2=A0 By not providing "Findrosidl_default_runtime.cmake" in CMAKE_MODUL=
E_PATH
| =C2=A0 this project has asked CMake to find a package configuration file =
provided
| =C2=A0 by "rosidl_default_runtime", but CMake did not find one.
|
| =C2=A0 Could not find a package configuration file provided by
| =C2=A0 "rosidl_default_runtime" with any of the following names:
|
| =C2=A0 =C2=A0 rosidl_default_runtimeConfig.cmake
| =C2=A0 =C2=A0 rosidl_default_runtime-config.cmake
|
| =C2=A0 Add the installation prefix of "rosidl_default_runtime" to
| =C2=A0 CMAKE_PREFIX_PATH or set "rosidl_default_runtime_DIR" to a directo=
ry
| =C2=A0 containing one of the above files. =C2=A0If "rosidl_default_runtim=
e" provides a
| =C2=A0 separate development package or SDK, be sure it has been installed=
.
| Call Stack (most recent call first):
| =C2=A0 /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build=
/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot/=
opt/ros/rolling/share/std_msgs/cmake/std_msgsConfig.cmake:41 (include)
| =C2=A0 CMakeLists.txt:24 (find_package)
|
|
| -- Configuring incomplete, errors occurred!
| See also "/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bu=
ild/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/build/CMakeF=
iles/CMakeOutput.log".
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/s=
ources/meta-ros/meta-ros2-rolling/generated-recipes/flir-camera-driver/flir=
-camera-msgs_2.0.20-1.bb:do_configure) failed with exit code '1'
WARNING: console-bridge-vendor-1.8.0-1-r0 do_populate_lic: QA Issue: consol=
e-bridge-vendor: No generic license file exists for: BSD in any provider [l=
icense-exists]
WARNING: message-filters-6.0.4-1-r0 do_populate_lic: QA Issue: message-filt=
ers: No generic license file exists for: BSD in any provider [license-exist=
s]
WARNING: pluginlib-5.5.1-1-r0 do_populate_lic: QA Issue: pluginlib: No gene=
ric license file exists for: BSD in any provider [license-exists]
WARNING: class-loader-2.8.0-1-r0 do_populate_lic: QA Issue: class-loader: N=
o generic license file exists for: BSD in any provider [license-exists]
WARNING: camera-calibration-parsers-5.3.2-1-r0 do_populate_lic: QA Issue: c=
amera-calibration-parsers: No generic license file exists for: BSD in any p=
rovider [license-exists]
WARNING: image-transport-5.3.2-1-r0 do_populate_lic: QA Issue: image-transp=
ort: No generic license file exists for: BSD in any provider [license-exist=
s]
WARNING: camera-info-manager-5.3.2-1-r0 do_populate_lic: QA Issue: camera-i=
nfo-manager: No generic license file exists for: BSD in any provider [licen=
se-exists]
WARNING: spinnaker-camera-driver-2.0.20-1-r0 do_populate_lic: QA Issue: spi=
nnaker-camera-driver: No generic license file exists for: BSD in any provid=
er [license-exists]
WARNING: pybind11-vendor-3.2.0-1-r0 do_populate_lic: QA Issue: pybind11-ven=
dor: No generic license file exists for: BSD in any provider [license-exist=
s]
WARNING: unique-identifier-msgs-2.7.0-1-r0 do_populate_lic: QA Issue: uniqu=
e-identifier-msgs: No generic license file exists for: BSD in any provider =
[license-exists]
ERROR: camera-calibration-parsers-5.3.2-1-r0 do_configure: ExecutionError('=
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work=
/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/temp/run.do_con=
figure.190651', 1, None, None)
ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibrati=
on-parsers/5.3.2-1-r0/temp/log.do_configure.190651
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/co=
mmon-interfaces/sensor-msgs_5.4.1-1.bb:do_populate_sysroot', '/home/user/Mi=
ndteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-=
rolling/generated-recipes/rclcpp/rclcpp_28.3.3-1.bb:do_populate_sysroot', '=
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-r=
os/meta-ros2-rolling/generated-recipes/yaml-cpp-vendor/yaml-cpp-vendor_9.1.=
0-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone=
_yocto_AIMB288E/sources/openembedded-core/meta/recipes-core/glibc/glibc_2.3=
5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_y=
octo_AIMB288E/sources/openembedded-core/meta/recipes-devtools/cmake/cmake-n=
ative_3.22.3.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/gc=
c/gcc-cross_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Iri=
lic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtool=
s/gcc/gcc-runtime_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projec=
ts/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-d=
evtools/quilt/quilt-native_0.67.bb:do_populate_sysroot', 'virtual:native:/h=
ome/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros=
/meta-ros2-rolling/generated-recipes/ament-cmake-ros/ament-cmake-ros_0.13.0=
-1.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Ir=
ilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtoo=
ls/ninja/ninja_1.10.2.bb:do_populate_sysroot', 'virtual:native:/home/user/M=
indteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/=
meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot', 'virtual:n=
ative:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/=
openembedded-core/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sy=
sroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto=
_AIMB288E/sources/openembedded-core/meta/recipes-devtools/python/python3_3.=
10.15.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['sensor-msgs', 'rclcpp', 'y=
aml-cpp-vendor', 'glibc', 'cmake-native', 'gcc-cross-x86_64', 'gcc-runtime'=
, 'quilt-native', 'ament-cmake-ros-native', 'ninja-native', 'patch-native',=
 'pseudo-native', 'python3-native', 'linux-libc-headers', 'bzip2-native', '=
xz-native', 'curl-native', 'zlib-native', 'zstd-native', 'ncurses-native', =
'ament-cmake-pytest-native', 'ament-cmake-gmock-native', 'domain-coordinato=
r-native', 'ament-cmake-native', 'ament-cmake-gtest-native', 'libmpc-native=
', 'gmp-native', 'binutils-cross-x86_64', 'texinfo-dummy-native', 'libtool-=
native', 'flex-native', 'mpfr-native', 'gnu-config-native', 're2c-native', =
'attr-native', 'libgcc', 'yaml-cpp', 'sqlite3-native', 'libffi-native', 'gd=
bm-native', 'openssl-native', 'libnsl2-native', 'libtirpc-native', 'readlin=
e-native', 'util-linux-libuuid-native', 'rosidl-runtime-cpp', 'rcpputils', =
'rosidl-typesupport-c', 'rosgraph-msgs', 'rcl-interfaces', 'rosidl-runtime-=
c', 'builtin-interfaces', 'rmw', 'rcl', 'ament-index-cpp', 'rcutils', 'rcl-=
yaml-param-parser', 'rosidl-typesupport-cpp', 'rosidl-dynamic-typesupport',=
 'statistics-msgs', 'tracetools', 'rcl-logging-interface', 'libstatistics-c=
ollector', 'std-msgs', 'service-msgs', 'geometry-msgs', 'gettext-minimal-na=
tive', 'python3-pytest-native', 'ament-cmake-core-native', 'ament-cmake-tes=
t-native', 'googletest-native', 'gmock-vendor-native', 'python3-setuptools-=
native', 'ament-cmake-export-targets-native', 'ament-cmake-export-libraries=
-native', 'ament-cmake-python-native', 'ament-cmake-export-dependencies-nat=
ive', 'ament-cmake-export-link-flags-native', 'ament-cmake-target-dependenc=
ies-native', 'ament-cmake-export-definitions-native', 'ament-cmake-version-=
native', 'ament-cmake-libraries-native', 'ament-cmake-export-include-direct=
ories-native', 'ament-cmake-gen-version-h-native', 'ament-cmake-export-inte=
rfaces-native', 'gtest-vendor-native', 'm4-native', 'perl-native', 'rosidl-=
typesupport-introspection-c', 'rmw-fastrtps-shared-cpp', 'fastrtps-cmake-mo=
dule', 'rosidl-generator-cpp', 'rosidl-typesupport-fastrtps-c', 'rmw-fastrt=
ps-cpp', 'rmw-implementation', 'rosidl-typesupport-fastrtps-cpp', 'rmw-impl=
ementation-cmake', 'rosidl-typesupport-interface', 'python-cmake-module', '=
fastcdr', 'rosidl-core-runtime', 'libyaml-vendor', 'type-description-interf=
aces', 'libyaml', 'rcl-logging-spdlog', 'rosidl-cmake', 'rosidl-typesupport=
-introspection-cpp', 'lttng-ust', 'rosidl-default-runtime', 'python3-instal=
ler-native', 'python3-wheel-native', 'python3-setuptools-scm-native', 'pyth=
on3-catkin-pkg-native', 'ament-package-native', 'ament-cmake-include-direct=
ories-native', 'make-native', 'fastrtps', 'rmw-dds-common', 'rosidl-generat=
or-c', 'ament-index-python', 'rosidl-cli', 'rosidl-dynamic-typesupport-fast=
rtps', 'rmw-fastrtps-dynamic-cpp', 'rmw-cyclonedds-cpp', 'rosidl-generator-=
py', 'spdlog-vendor', 'spdlog', 'util-linux', 'liburcu', 'python3', 'unzip-=
native', 'python3-flit-core-native', 'python3-tomli-native', 'python3-pypar=
sing-native', 'python3-packaging-native', 'python3-importlib-metadata-nativ=
e', 'libtinyxml2', 'openssl', 'asio', 'foonathan-memory-vendor', 'rosidl-ge=
nerator-type-description', 'cyclonedds', 'iceoryx-binding-c', 'python3-nump=
y', 'fmt', 'ncurses', 'zlib', 'libcap-ng', 'util-linux-libuuid', 'opkg-util=
s', 'libxcrypt', 'bash-completion', 'libffi', 'xz', 'bzip2', 'sqlite3', 'gd=
bm', 'libtirpc', 'libnsl2', 'readline', 'python3-pathlib2-native', 'python3=
-zipp-native', 'python3-toml-native', 'boost', 'foonathan-memory', 'iceoryx=
-posh', 'iceoryx-hoofs', 'python3-six-native', 'python3-more-itertools-nati=
ve', 'icu', 'cpptoml', 'acl', 'autoconf-archive', 'attr']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_configure
| -- The C compiler identification is GNU 11.5.0
| -- The CXX compiler identification is GNU 11.5.0
| -- Detecting C compiler ABI info
| -- Detecting C compiler ABI info - done
| -- Check for working C compiler: /home/user/Mindteck_Projects/Irilic/kirk=
stone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration=
-parsers/5.3.2-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-=
poky-linux-gcc - skipped
| -- Detecting C compile features
| -- Detecting C compile features - done
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - done
| -- Check for working CXX compiler: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibrati=
on-parsers/5.3.2-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_6=
4-poky-linux-g++ - skipped
| -- Detecting CXX compile features
| -- Detecting CXX compile features - done
| -- Found ament_cmake_ros: 0.13.0 (/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibratio=
n-parsers/5.3.2-1-r0/recipe-sysroot-native/opt/ros/rolling/share/ament_cmak=
e_ros/cmake)
| -- Found Python3: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-=
1-r0/recipe-sysroot-native/usr/bin/python3-native/python3 (found version "3=
.10.15") found components: Interpreter
| -- Found rclcpp: 28.3.3 (/home/user/Mindteck_Projects/Irilic/kirkstone_yo=
cto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers=
/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rclcpp/cmake)
| -- Found rosidl_generator_c: 4.8.1 (/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibrat=
ion-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_generato=
r_c/cmake)
| -- Found rosidl_generator_cpp: 4.8.1 (/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibr=
ation-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_genera=
tor_cpp/cmake)
| -- Using all available rosidl_typesupport_c: rosidl_typesupport_introspec=
tion_c;rosidl_typesupport_fastrtps_c
| -- Using all available rosidl_typesupport_cpp: rosidl_typesupport_introsp=
ection_cpp;rosidl_typesupport_fastrtps_cpp
| -- Found rmw_implementation_cmake: 7.4.3 (/home/user/Mindteck_Projects/Ir=
ilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-ca=
libration-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rmw_imple=
mentation_cmake/cmake)
| -- Found rmw_fastrtps_cpp: 9.0.1 (/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibratio=
n-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rmw_fastrtps_cpp/=
cmake)
| -- Found OpenSSL: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-=
1-r0/recipe-sysroot/usr/lib/libcrypto.so (found version "3.0.15")
| -- Found FastRTPS: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AI=
MB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2=
-1-r0/recipe-sysroot/opt/ros/rolling/include (Required is at least version =
"2.13")
| -- Using RMW implementation 'rmw_fastrtps_cpp' as default
| -- Found sensor_msgs: 5.4.1 (/home/user/Mindteck_Projects/Irilic/kirkston=
e_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-par=
sers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/sensor_msgs/cmake)
| CMake Error at CMakeLists.txt:19 (find_package):
| =C2=A0 By not providing "Findyaml_cpp_vendor.cmake" in CMAKE_MODULE_PATH =
this
| =C2=A0 project has asked CMake to find a package configuration file provi=
ded by
| =C2=A0 "yaml_cpp_vendor", but CMake did not find one.
|
| =C2=A0 Could not find a package configuration file provided by "yaml_cpp_=
vendor"
| =C2=A0 with any of the following names:
|
| =C2=A0 =C2=A0 yaml_cpp_vendorConfig.cmake
| =C2=A0 =C2=A0 yaml_cpp_vendor-config.cmake
|
| =C2=A0 Add the installation prefix of "yaml_cpp_vendor" to CMAKE_PREFIX_P=
ATH or
| =C2=A0 set "yaml_cpp_vendor_DIR" to a directory containing one of the abo=
ve files.
| =C2=A0 If "yaml_cpp_vendor" provides a separate development package or SD=
K, be
| =C2=A0 sure it has been installed.
|
|
| -- Configuring incomplete, errors occurred!
| See also "/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bu=
ild/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/bui=
ld/CMakeFiles/CMakeOutput.log".
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/s=
ources/meta-ros/meta-ros2-rolling/generated-recipes/image-common/camera-cal=
ibration-parsers_5.3.2-1.bb:do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 10681 tasks of which 10042 didn't need to be=
 rerun and 2 failed.
Summary: 2 tasks failed:
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-r=
os/meta-ros2-rolling/generated-recipes/flir-camera-driver/flir-camera-msgs_=
2.0.20-1.bb:do_configure
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-r=
os/meta-ros2-rolling/generated-recipes/image-common/camera-calibration-pars=
ers_5.3.2-1.bb:do_configure
Summary: There were 10 WARNING messages.
Summary: There were 2 ERROR messages, returning a non-zero exit code.
user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build$

1: How can I resolve the *flir-camera-msgs-2.0.20-1-r0 do_configure: Execut=
ionError* and *camera-calibration-parsers-5.3.2-1-r0 do_configure: Executio=
nError* ?

2: Is there an additional step required to ensure the spinnaker package int=
egrates successfully into the Yocto build?

Any guidance would be greatly appreciated. Thank you in advance!

--VUlxaRRm2d1c3Oz1JJpl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #0c0d0e; font-family: sans-serif; font-size: 15p=
x; font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: le=
ft; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffff=
ff; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial; display: inline !important; float: none;">I am=
 working on a project for the</span><span style=3D"box-sizing: border-box; =
overflow-wrap: break-word !important; color: #0c0d0e; font-family: sans-ser=
if; font-size: 15px; font-style: normal; font-variant-ligatures: normal; fo=
nt-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans:=
 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial;">&nbsp;</span><strong style=3D"box-sizing: border-box; =
font-weight: bold; overflow-wrap: break-word !important; color: #0c0d0e; fo=
nt-family: sans-serif; font-size: 15px; font-style: normal; font-variant-li=
gatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans=
: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial;">intel-corei7-x86_64</strong><span style=3D"box-sizing=
: border-box; overflow-wrap: break-word !important; color: #0c0d0e; font-fa=
mily: sans-serif; font-size: 15px; font-style: normal; font-variant-ligatur=
es: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 normal; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial;">&nbsp;</span><span style=3D"color: #0c0d=
0e; font-family: sans-serif; font-size: 15px; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-trans=
form: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; w=
hite-space: normal; background-color: #ffffff; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial; dis=
play: inline !important; float: none;">hardware board, building the Yocto i=
mage</span><span style=3D"box-sizing: border-box; overflow-wrap: break-word=
 !important; color: #0c0d0e; font-family: sans-serif; font-size: 15px; font=
-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; text-decoration-thickness: ini=
tial; text-decoration-style: initial; text-decoration-color: initial;">&nbs=
p;</span><strong style=3D"box-sizing: border-box; font-weight: bold; overfl=
ow-wrap: break-word !important; color: #0c0d0e; font-family: sans-serif; fo=
nt-size: 15px; font-style: normal; font-variant-ligatures: normal; font-var=
iant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; te=
xt-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: in=
itial; text-decoration-style: initial; text-decoration-color: initial;">cor=
e-image-sato</strong><span style=3D"color: #0c0d0e; font-family: sans-serif=
; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgro=
und-color: #ffffff; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial; display: inline !important; fl=
oat: none;">.</span></div>
<div><span style=3D"color: #0c0d0e; font-family: sans-serif; font-size: 15p=
x; font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: le=
ft; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffff=
ff; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial; display: inline !important; float: none;"><spa=
n style=3D"color: #0c0d0e; font-family: sans-serif; font-size: 15px; font-s=
tyle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial; display: inline !important; float: none;">While trying =
to add the</span><span style=3D"box-sizing: border-box; overflow-wrap: brea=
k-word !important; color: #0c0d0e; font-family: sans-serif; font-size: 15px=
; font-style: normal; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: lef=
t; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; white-space: normal; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
">&nbsp;</span><strong style=3D"box-sizing: border-box; font-weight: bold; =
overflow-wrap: break-word !important; color: #0c0d0e; font-family: sans-ser=
if; font-size: 15px; font-style: normal; font-variant-ligatures: normal; fo=
nt-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: le=
ft; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
;">spinnaker package</strong><span style=3D"box-sizing: border-box; overflo=
w-wrap: break-word !important; color: #0c0d0e; font-family: sans-serif; fon=
t-size: 15px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial;">&nbsp;</span><span style=3D"color: #0c0d0e; font-family: sans=
-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; b=
ackground-color: #ffffff; text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial; display: inline !importa=
nt; float: none;">to the Yocto build, I encountered the following error dur=
ing the build process for</span><span style=3D"box-sizing: border-box; over=
flow-wrap: break-word !important; color: #0c0d0e; font-family: sans-serif; =
font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-v=
ariant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoration-=
color: initial;">&nbsp;</span><strong style=3D"box-sizing: border-box; font=
-weight: bold; overflow-wrap: break-word !important; color: #0c0d0e; font-f=
amily: sans-serif; font-size: 15px; font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2;=
 text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-dec=
oration-thickness: initial; text-decoration-style: initial; text-decoration=
-color: initial;">core-image-sato:</strong><span style=3D"box-sizing: borde=
r-box; overflow-wrap: break-word !important; color: #0c0d0e; font-family: s=
ans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</span><span style=3D"color: #0c0d0e; fon=
t-family: sans-serif; font-size: 15px; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: n=
one; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-sp=
ace: normal; background-color: #ffffff; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; display: i=
nline !important; float: none;">im using meta-ros layer for including this =
spinnaker package.</span></span></div>
<div>&nbsp;</div>
<div>
<div>user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/b=
uild$ bitbake core-image-sato -k<br />Loading cache: 100% |################=
###########################################################################=
###########################################################################=
#| Time: 0:00:00<br />Loaded 6093 entries from dependency cache.<br />NOTE:=
 Resolving any missing task queue dependencies</div>
<div>Build Configuration:<br />BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; =3D "2.0.0"<br />BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "=
x86_64-linux"<br />NATIVELSBSTRING &nbsp; &nbsp; &nbsp;=3D "universal"<br /=
>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-poky-linux"<br /=
>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "intel-corei7-=
64"<br />DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "poky"=
<br />DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D "4.0.23"<br />TUNE_FEATURES &=
nbsp; &nbsp; &nbsp; &nbsp;=3D "m64 corei7"<br />TARGET_FPU &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; =3D ""<br />DISTRO_NAME &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;=3D "Poky (Yocto Project Reference Distro)"<br />ROS_DISTRO &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; =3D "rolling"<br />ROS_VERSION &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;=3D "2"<br />ROS_PYTHON_VERSION &nbsp; =3D "3"<br />meta &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "kirkstone:13b13b81b9=
1f618c13cf972067c47bd810de852f"<br />meta-poky &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;<br />meta-yocto-bsp &nbsp; &nbsp; &nbsp; =3D "HEAD:0bffb5eed1=
e8c9469b9c6e0d77f959dc9ade9c6a"<br />meta-intel &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; =3D "HEAD:8514c60ac1a9a17ba20b17fa176119728a91dcf9"<br />meta-oe &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />meta-python &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;<br />meta-multimedia &nbsp; &nbsp; &nbsp;<br />meta=
-networking &nbsp; &nbsp; &nbsp;<br />meta-filesystems &nbsp; &nbsp; =3D "k=
irkstone:4ad41baed6236d499804cbfc4f174042d84fce97"<br />meta-qt5 &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a=
0dd2566"<br />meta-freescale &nbsp; &nbsp; &nbsp; =3D "HEAD:c525e0c19bdc46d=
45f71873b5f286f49abb69418"<br />meta-freescale-distro =3D "HEAD:d5bbb487b28=
16dfc74984a78b67f7361ce404253"<br />meta-ros2 &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;<br />meta-ros-common &nbsp; &nbsp; &nbsp;<br />meta-ros2-rolli=
ng &nbsp; &nbsp;=3D "HEAD:72f70f7c1147197bd1e447c03187628b4b62a738"</div>
<div>Initialising tasks: 100% |############################################=
###########################################################################=
###########################################| Time: 0:00:05<br />Sstate summ=
ary: Wanted 1027 Local 542 Mirrors 0 Missed 485 Current 3372 (52% match, 88=
% complete)<br />NOTE: Executing Tasks<br />ERROR: flir-camera-msgs-2.0.20-=
1-r0 do_configure: ExecutionError('/home/user/Mindteck_Projects/Irilic/kirk=
stone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2=
.0.20-1-r0/temp/run.do_configure.103139', 1, None, None)<br />ERROR: Logfil=
e of failure stored in: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto=
_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/=
temp/log.do_configure.103139<br />Log data follows:<br />| DEBUG: Executing=
 python function extend_recipe_sysroot<br />| NOTE: Direct dependencies are=
 ['/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/met=
a-ros/meta-ros2-rolling/generated-recipes/common-interfaces/std-msgs_5.4.1-=
1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_y=
octo_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/rcl-inte=
rfaces/builtin-interfaces_2.2.0-1.bb:do_populate_sysroot', '/home/user/Mind=
teck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-ro=
lling/generated-recipes/rosidl-defaults/rosidl-default-generators_1.7.1-1.b=
b:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yoct=
o_AIMB288E/sources/openembedded-core/meta/recipes-core/glibc/glibc_2.35.bb:=
do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_=
AIMB288E/sources/openembedded-core/meta/recipes-devtools/cmake/cmake-native=
_3.22.3.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/gcc/gcc=
-cross_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/gcc=
/gcc-runtime_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Ir=
ilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtoo=
ls/quilt/quilt-native_0.67.bb:do_populate_sysroot', 'virtual:native:/home/u=
ser/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta=
-ros2-rolling/generated-recipes/ament-cmake/ament-cmake_2.7.0-1.bb:do_popul=
ate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone=
_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/rosidl=
-defaults/rosidl-default-generators_1.7.1-1.bb:do_populate_sysroot', 'virtu=
al:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sour=
ces/openembedded-core/meta/recipes-devtools/ninja/ninja_1.10.2.bb:do_popula=
te_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_=
yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/patch/patch_=
2.7.6.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects=
/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-dev=
tools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-cor=
e/meta/recipes-devtools/python/python3_3.10.15.bb:do_populate_sysroot']<br =
/>| NOTE: Installed into sysroot: []<br />| NOTE: Skipping as already exist=
s in sysroot: ['std-msgs', 'builtin-interfaces', 'rosidl-default-generators=
', 'glibc', 'cmake-native', 'gcc-cross-x86_64', 'gcc-runtime', 'quilt-nativ=
e', 'ament-cmake-native', 'rosidl-default-generators-native', 'ninja-native=
', 'patch-native', 'pseudo-native', 'python3-native', 'rosidl-runtime-cpp',=
 'rosidl-generator-cpp', 'rosidl-typesupport-fastrtps-c', 'rosidl-typesuppo=
rt-c', 'rosidl-runtime-c', 'python-cmake-module', 'fastcdr', 'rosidl-typesu=
pport-cpp', 'rosidl-typesupport-fastrtps-cpp', 'rosidl-core-runtime', 'fast=
rtps-cmake-module', 'linux-libc-headers', 'bzip2-native', 'xz-native', 'cur=
l-native', 'zlib-native', 'zstd-native', 'ncurses-native', 're2c-native', '=
libmpc-native', 'gmp-native', 'binutils-cross-x86_64', 'texinfo-dummy-nativ=
e', 'libtool-native', 'flex-native', 'mpfr-native', 'gnu-config-native', 'a=
ttr-native', 'rosidl-core-generators-native', 'service-msgs-native', 'ament=
-cmake-core-native', 'action-msgs-native', 'libgcc', 'sqlite3-native', 'lib=
ffi-native', 'gdbm-native', 'openssl-native', 'libnsl2-native', 'libtirpc-n=
ative', 'readline-native', 'util-linux-libuuid-native', 'ament-cmake-export=
-targets-native', 'ament-cmake-export-libraries-native', 'ament-cmake-test-=
native', 'ament-cmake-python-native', 'ament-cmake-export-dependencies-nati=
ve', 'ament-cmake-export-link-flags-native', 'ament-cmake-target-dependenci=
es-native', 'ament-cmake-export-definitions-native', 'ament-cmake-version-n=
ative', 'ament-cmake-libraries-native', 'ament-cmake-export-include-directo=
ries-native', 'ament-cmake-gen-version-h-native', 'ament-cmake-export-inter=
faces-native', 'rosidl-cmake', 'rosidl-generator-c', 'ament-index-python', =
'rmw', 'rosidl-typesupport-interface', 'rosidl-cli', 'rcutils', 'rosidl-typ=
esupport-introspection-c', 'rcpputils', 'rosidl-typesupport-introspection-c=
pp', 'rosidl-generator-py', 'gettext-minimal-native', 'm4-native', 'rosidl-=
typesupport-cpp-native', 'rosidl-generator-cpp-native', 'rosidl-typesupport=
-fastrtps-cpp-native', 'rosidl-cmake-native', 'rosidl-typesupport-c-native'=
, 'rosidl-typesupport-introspection-c-native', 'rosidl-typesupport-fastrtps=
-c-native', 'rosidl-typesupport-introspection-cpp-native', 'rosidl-generato=
r-c-native', 'rosidl-generator-py-native', 'rosidl-core-runtime-native', 'b=
uiltin-interfaces-native', 'python3-catkin-pkg-native', 'ament-package-nati=
ve', 'unique-identifier-msgs-native', 'python3-numpy-native', 'rosidl-adapt=
er-native', 'python3-lark-parser-native', 'rosidl-parser-native', 'perl-nat=
ive', 'ament-cmake-include-directories-native', 'rosidl-generator-type-desc=
ription', 'python3', 'rosidl-dynamic-typesupport', 'python3-numpy', 'ament-=
cmake-ros-native', 'rosidl-runtime-cpp-native', 'rcutils-native', 'ament-in=
dex-python-native', 'rosidl-runtime-c-native', 'rosidl-typesupport-interfac=
e-native', 'rosidl-pycommon-native', 'rcpputils-native', 'rosidl-generator-=
type-description-native', 'rosidl-cli-native', 'rmw-native', 'fastcdr-nativ=
e', 'fastrtps-cmake-module-native', 'python3-empy-native', 'rpyutils-native=
', 'ament-cmake-flake8-native', 'ament-cmake-cppcheck-native', 'ament-cmake=
-uncrustify-native', 'python-cmake-module-native', 'ament-cmake-pep257-nati=
ve', 'ament-cmake-cpplint-native', 'python3-setuptools-native', 'python3-py=
parsing-native', 'python3-installer-native', 'python3-wheel-native', 'pytho=
n3-importlib-metadata-native', 'python3-cython-native', 'make-native', 'lib=
ffi', 'opkg-utils', 'xz', 'bzip2', 'sqlite3', 'gdbm', 'libtirpc', 'libnsl2'=
, 'ncurses', 'readline', 'zlib', 'util-linux-libuuid', 'libxcrypt', 'openss=
l', 'ament-cmake-pytest-native', 'ament-cmake-gmock-native', 'domain-coordi=
nator-native', 'ament-cmake-gtest-native', 'python3-argcomplete-native', 'r=
osidl-dynamic-typesupport-native', 'ament-flake8-native', 'ament-cppcheck-n=
ative', 'ament-uncrustify-native', 'ament-pep257-native', 'ament-cpplint-na=
tive', 'unzip-native', 'python3-flit-core-native', 'python3-pathlib2-native=
', 'python3-zipp-native', 'python3-toml-native', 'python3-setuptools-scm-na=
tive', 'python3-pytest-native', 'googletest-native', 'gmock-vendor-native',=
 'gtest-vendor-native', 'python3-flake8-comprehensions-native', 'ament-lint=
-native', 'python3-flake8-docstrings-native', 'python3-flake8-import-order-=
native', 'python3-flake8-native', 'python3-flake8-quotes-native', 'python3-=
flake8-builtins-native', 'cppcheck-native', 'uncrustify-vendor-native', 'py=
thon3-pydocstyle-native', 'python3-six-native', 'python3-more-itertools-nat=
ive', 'python3-tomli-native', 'python3-packaging-native', 'python3-mccabe-n=
ative', 'python3-pep8-native', 'python3-pyflakes-native', 'python3-cmd2-nat=
ive', 'python3-prettytable-native', 'libpcre-native', 'boost-native', 'uncr=
ustify-native', 'ament-cmake-vendor-package-native', 'python3-pyperclip-nat=
ive', 'boost-build-native', 'icu-native', 'python3-vcstool-native', 'python=
3-pyyaml-native', 'libyaml-native']<br />| DEBUG: Python function extend_re=
cipe_sysroot finished<br />| DEBUG: Executing shell function do_configure<b=
r />| -- The C compiler identification is GNU 11.5.0<br />| -- The CXX comp=
iler identification is GNU 11.5.0<br />| -- Detecting C compiler ABI info<b=
r />| -- Detecting C compiler ABI info - done<br />| -- Check for working C=
 compiler: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bui=
ld/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroo=
t-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc - skipped<br />| -=
- Detecting C compile features<br />| -- Detecting C compile features - don=
e<br />| -- Detecting CXX compiler ABI info<br />| -- Detecting CXX compile=
r ABI info - done<br />| -- Check for working CXX compiler: /home/user/Mind=
teck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky=
-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-po=
ky-linux/x86_64-poky-linux-g++ - skipped<br />| -- Detecting CXX compile fe=
atures<br />| -- Detecting CXX compile features - done<br />| -- Found amen=
t_cmake: 2.7.0 (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288=
E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-s=
ysroot-native/opt/ros/rolling/share/ament_cmake/cmake)<br />| -- Found Pyth=
on3: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp=
/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot-nati=
ve/usr/bin/python3-native/python3 (found version "3.10.15") found component=
s: Interpreter<br />| -- Found builtin_interfaces: 2.2.0 (/home/user/Mindte=
ck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-l=
inux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/buil=
tin_interfaces/cmake)<br />| -- Found rosidl_generator_c: 4.8.1 (/home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64=
-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/sha=
re/rosidl_generator_c/cmake)<br />| -- Found rosidl_generator_cpp: 4.8.1 (/=
home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/=
corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot/opt/ros/ro=
lling/share/rosidl_generator_cpp/cmake)<br />| -- Using all available rosid=
l_typesupport_c: rosidl_typesupport_introspection_c;rosidl_typesupport_fast=
rtps_c<br />| -- Using all available rosidl_typesupport_cpp: rosidl_typesup=
port_introspection_cpp;rosidl_typesupport_fastrtps_cpp<br />| -- Found rosi=
dl_default_generators: 1.7.1 (/home/user/Mindteck_Projects/Irilic/kirkstone=
_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20=
-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_default_generators/cmake)=
<br />| -- Found rosidl_adapter: 4.8.1 (/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-m=
sgs/2.0.20-1-r0/recipe-sysroot-native/opt/ros/rolling/share/rosidl_adapter/=
cmake)<br />| -- Found std_msgs: 5.4.1 (/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-m=
sgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/std_msgs/cmake)<br />|=
 CMake Error at /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288=
E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-s=
ysroot/opt/ros/rolling/share/std_msgs/cmake/ament_cmake_export_dependencies=
-extras.cmake:21 (find_package):<br />| &nbsp; By not providing "Findrosidl=
_default_runtime.cmake" in CMAKE_MODULE_PATH<br />| &nbsp; this project has=
 asked CMake to find a package configuration file provided<br />| &nbsp; by=
 "rosidl_default_runtime", but CMake did not find one.<br />|&nbsp;<br />| =
&nbsp; Could not find a package configuration file provided by<br />| &nbsp=
; "rosidl_default_runtime" with any of the following names:<br />|&nbsp;<br=
 />| &nbsp; &nbsp; rosidl_default_runtimeConfig.cmake<br />| &nbsp; &nbsp; =
rosidl_default_runtime-config.cmake<br />|&nbsp;<br />| &nbsp; Add the inst=
allation prefix of "rosidl_default_runtime" to<br />| &nbsp; CMAKE_PREFIX_P=
ATH or set "rosidl_default_runtime_DIR" to a directory<br />| &nbsp; contai=
ning one of the above files. &nbsp;If "rosidl_default_runtime" provides a<b=
r />| &nbsp; separate development package or SDK, be sure it has been insta=
lled.<br />| Call Stack (most recent call first):<br />| &nbsp; /home/user/=
Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-=
poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/shar=
e/std_msgs/cmake/std_msgsConfig.cmake:41 (include)<br />| &nbsp; CMakeLists=
.txt:24 (find_package)<br />|&nbsp;<br />|&nbsp;<br />| -- Configuring inco=
mplete, errors occurred!<br />| See also "/home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera=
-msgs/2.0.20-1-r0/build/CMakeFiles/CMakeOutput.log".<br />| WARNING: exit c=
ode 1 from a shell command.<br />ERROR: Task (/home/user/Mindteck_Projects/=
Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generate=
d-recipes/flir-camera-driver/flir-camera-msgs_2.0.20-1.bb:do_configure) fai=
led with exit code '1'<br />WARNING: console-bridge-vendor-1.8.0-1-r0 do_po=
pulate_lic: QA Issue: console-bridge-vendor: No generic license file exists=
 for: BSD in any provider [license-exists]<br />WARNING: message-filters-6.=
0.4-1-r0 do_populate_lic: QA Issue: message-filters: No generic license fil=
e exists for: BSD in any provider [license-exists]<br />WARNING: pluginlib-=
5.5.1-1-r0 do_populate_lic: QA Issue: pluginlib: No generic license file ex=
ists for: BSD in any provider [license-exists]<br />WARNING: class-loader-2=
.8.0-1-r0 do_populate_lic: QA Issue: class-loader: No generic license file =
exists for: BSD in any provider [license-exists]<br />WARNING: camera-calib=
ration-parsers-5.3.2-1-r0 do_populate_lic: QA Issue: camera-calibration-par=
sers: No generic license file exists for: BSD in any provider [license-exis=
ts]<br />WARNING: image-transport-5.3.2-1-r0 do_populate_lic: QA Issue: ima=
ge-transport: No generic license file exists for: BSD in any provider [lice=
nse-exists]<br />WARNING: camera-info-manager-5.3.2-1-r0 do_populate_lic: Q=
A Issue: camera-info-manager: No generic license file exists for: BSD in an=
y provider [license-exists]<br />WARNING: spinnaker-camera-driver-2.0.20-1-=
r0 do_populate_lic: QA Issue: spinnaker-camera-driver: No generic license f=
ile exists for: BSD in any provider [license-exists]<br />WARNING: pybind11=
-vendor-3.2.0-1-r0 do_populate_lic: QA Issue: pybind11-vendor: No generic l=
icense file exists for: BSD in any provider [license-exists]<br />WARNING: =
unique-identifier-msgs-2.7.0-1-r0 do_populate_lic: QA Issue: unique-identif=
ier-msgs: No generic license file exists for: BSD in any provider [license-=
exists]<br />ERROR: camera-calibration-parsers-5.3.2-1-r0 do_configure: Exe=
cutionError('/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/b=
uild/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/te=
mp/run.do_configure.190651', 1, None, None)<br />ERROR: Logfile of failure =
stored in: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bui=
ld/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/temp=
/log.do_configure.190651<br />Log data follows:<br />| DEBUG: Executing pyt=
hon function extend_recipe_sysroot<br />| NOTE: Direct dependencies are ['/=
home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ro=
s/meta-ros2-rolling/generated-recipes/common-interfaces/sensor-msgs_5.4.1-1=
.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yo=
cto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/rclcpp/rc=
lcpp_28.3.3-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-reci=
pes/yaml-cpp-vendor/yaml-cpp-vendor_9.1.0-1.bb:do_populate_sysroot', '/home=
/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedde=
d-core/meta/recipes-core/glibc/glibc_2.35.bb:do_populate_sysroot', '/home/u=
ser/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-=
core/meta/recipes-devtools/cmake/cmake-native_3.22.3.bb:do_populate_sysroot=
', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/op=
enembedded-core/meta/recipes-devtools/gcc/gcc-cross_11.5.bb:do_populate_sys=
root', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/source=
s/openembedded-core/meta/recipes-devtools/gcc/gcc-runtime_11.5.bb:do_popula=
te_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/=
sources/openembedded-core/meta/recipes-devtools/quilt/quilt-native_0.67.bb:=
do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipe=
s/ament-cmake-ros/ament-cmake-ros_0.13.0-1.bb:do_populate_sysroot', 'virtua=
l:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sourc=
es/openembedded-core/meta/recipes-devtools/ninja/ninja_1.10.2.bb:do_populat=
e_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_y=
octo_AIMB288E/sources/openembedded-core/meta/recipes-devtools/patch/patch_2=
.7.6.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/=
Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devt=
ools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/home/user/=
Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core=
/meta/recipes-devtools/python/python3_3.10.15.bb:do_populate_sysroot']<br /=
>| NOTE: Installed into sysroot: []<br />| NOTE: Skipping as already exists=
 in sysroot: ['sensor-msgs', 'rclcpp', 'yaml-cpp-vendor', 'glibc', 'cmake-n=
ative', 'gcc-cross-x86_64', 'gcc-runtime', 'quilt-native', 'ament-cmake-ros=
-native', 'ninja-native', 'patch-native', 'pseudo-native', 'python3-native'=
, 'linux-libc-headers', 'bzip2-native', 'xz-native', 'curl-native', 'zlib-n=
ative', 'zstd-native', 'ncurses-native', 'ament-cmake-pytest-native', 'amen=
t-cmake-gmock-native', 'domain-coordinator-native', 'ament-cmake-native', '=
ament-cmake-gtest-native', 'libmpc-native', 'gmp-native', 'binutils-cross-x=
86_64', 'texinfo-dummy-native', 'libtool-native', 'flex-native', 'mpfr-nati=
ve', 'gnu-config-native', 're2c-native', 'attr-native', 'libgcc', 'yaml-cpp=
', 'sqlite3-native', 'libffi-native', 'gdbm-native', 'openssl-native', 'lib=
nsl2-native', 'libtirpc-native', 'readline-native', 'util-linux-libuuid-nat=
ive', 'rosidl-runtime-cpp', 'rcpputils', 'rosidl-typesupport-c', 'rosgraph-=
msgs', 'rcl-interfaces', 'rosidl-runtime-c', 'builtin-interfaces', 'rmw', '=
rcl', 'ament-index-cpp', 'rcutils', 'rcl-yaml-param-parser', 'rosidl-typesu=
pport-cpp', 'rosidl-dynamic-typesupport', 'statistics-msgs', 'tracetools', =
'rcl-logging-interface', 'libstatistics-collector', 'std-msgs', 'service-ms=
gs', 'geometry-msgs', 'gettext-minimal-native', 'python3-pytest-native', 'a=
ment-cmake-core-native', 'ament-cmake-test-native', 'googletest-native', 'g=
mock-vendor-native', 'python3-setuptools-native', 'ament-cmake-export-targe=
ts-native', 'ament-cmake-export-libraries-native', 'ament-cmake-python-nati=
ve', 'ament-cmake-export-dependencies-native', 'ament-cmake-export-link-fla=
gs-native', 'ament-cmake-target-dependencies-native', 'ament-cmake-export-d=
efinitions-native', 'ament-cmake-version-native', 'ament-cmake-libraries-na=
tive', 'ament-cmake-export-include-directories-native', 'ament-cmake-gen-ve=
rsion-h-native', 'ament-cmake-export-interfaces-native', 'gtest-vendor-nati=
ve', 'm4-native', 'perl-native', 'rosidl-typesupport-introspection-c', 'rmw=
-fastrtps-shared-cpp', 'fastrtps-cmake-module', 'rosidl-generator-cpp', 'ro=
sidl-typesupport-fastrtps-c', 'rmw-fastrtps-cpp', 'rmw-implementation', 'ro=
sidl-typesupport-fastrtps-cpp', 'rmw-implementation-cmake', 'rosidl-typesup=
port-interface', 'python-cmake-module', 'fastcdr', 'rosidl-core-runtime', '=
libyaml-vendor', 'type-description-interfaces', 'libyaml', 'rcl-logging-spd=
log', 'rosidl-cmake', 'rosidl-typesupport-introspection-cpp', 'lttng-ust', =
'rosidl-default-runtime', 'python3-installer-native', 'python3-wheel-native=
', 'python3-setuptools-scm-native', 'python3-catkin-pkg-native', 'ament-pac=
kage-native', 'ament-cmake-include-directories-native', 'make-native', 'fas=
trtps', 'rmw-dds-common', 'rosidl-generator-c', 'ament-index-python', 'rosi=
dl-cli', 'rosidl-dynamic-typesupport-fastrtps', 'rmw-fastrtps-dynamic-cpp',=
 'rmw-cyclonedds-cpp', 'rosidl-generator-py', 'spdlog-vendor', 'spdlog', 'u=
til-linux', 'liburcu', 'python3', 'unzip-native', 'python3-flit-core-native=
', 'python3-tomli-native', 'python3-pyparsing-native', 'python3-packaging-n=
ative', 'python3-importlib-metadata-native', 'libtinyxml2', 'openssl', 'asi=
o', 'foonathan-memory-vendor', 'rosidl-generator-type-description', 'cyclon=
edds', 'iceoryx-binding-c', 'python3-numpy', 'fmt', 'ncurses', 'zlib', 'lib=
cap-ng', 'util-linux-libuuid', 'opkg-utils', 'libxcrypt', 'bash-completion'=
, 'libffi', 'xz', 'bzip2', 'sqlite3', 'gdbm', 'libtirpc', 'libnsl2', 'readl=
ine', 'python3-pathlib2-native', 'python3-zipp-native', 'python3-toml-nativ=
e', 'boost', 'foonathan-memory', 'iceoryx-posh', 'iceoryx-hoofs', 'python3-=
six-native', 'python3-more-itertools-native', 'icu', 'cpptoml', 'acl', 'aut=
oconf-archive', 'attr']<br />| DEBUG: Python function extend_recipe_sysroot=
 finished<br />| DEBUG: Executing shell function do_configure<br />| -- The=
 C compiler identification is GNU 11.5.0<br />| -- The CXX compiler identif=
ication is GNU 11.5.0<br />| -- Detecting C compiler ABI info<br />| -- Det=
ecting C compiler ABI info - done<br />| -- Check for working C compiler: /=
home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/=
corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/recipe-sysroot-n=
ative/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc - skipped<br />| -- D=
etecting C compile features<br />| -- Detecting C compile features - done<b=
r />| -- Detecting CXX compiler ABI info<br />| -- Detecting CXX compiler A=
BI info - done<br />| -- Check for working CXX compiler: /home/user/Mindtec=
k_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-li=
nux/camera-calibration-parsers/5.3.2-1-r0/recipe-sysroot-native/usr/bin/x86=
_64-poky-linux/x86_64-poky-linux-g++ - skipped<br />| -- Detecting CXX comp=
ile features<br />| -- Detecting CXX compile features - done<br />| -- Foun=
d ament_cmake_ros: 0.13.0 (/home/user/Mindteck_Projects/Irilic/kirkstone_yo=
cto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers=
/5.3.2-1-r0/recipe-sysroot-native/opt/ros/rolling/share/ament_cmake_ros/cma=
ke)<br />| -- Found Python3: /home/user/Mindteck_Projects/Irilic/kirkstone_=
yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parse=
rs/5.3.2-1-r0/recipe-sysroot-native/usr/bin/python3-native/python3 (found v=
ersion "3.10.15") found components: Interpreter<br />| -- Found rclcpp: 28.=
3.3 (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp=
/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/recipe-sys=
root/opt/ros/rolling/share/rclcpp/cmake)<br />| -- Found rosidl_generator_c=
: 4.8.1 (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build=
/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/recipe=
-sysroot/opt/ros/rolling/share/rosidl_generator_c/cmake)<br />| -- Found ro=
sidl_generator_cpp: 4.8.1 (/home/user/Mindteck_Projects/Irilic/kirkstone_yo=
cto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers=
/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_generator_cpp/cmake=
)<br />| -- Using all available rosidl_typesupport_c: rosidl_typesupport_in=
trospection_c;rosidl_typesupport_fastrtps_c<br />| -- Using all available r=
osidl_typesupport_cpp: rosidl_typesupport_introspection_cpp;rosidl_typesupp=
ort_fastrtps_cpp<br />| -- Found rmw_implementation_cmake: 7.4.3 (/home/use=
r/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-6=
4-poky-linux/camera-calibration-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/r=
olling/share/rmw_implementation_cmake/cmake)<br />| -- Found rmw_fastrtps_c=
pp: 9.0.1 (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/bui=
ld/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/reci=
pe-sysroot/opt/ros/rolling/share/rmw_fastrtps_cpp/cmake)<br />| -- Found Op=
enSSL: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/t=
mp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/recipe-s=
ysroot/usr/lib/libcrypto.so (found version "3.0.15")<br />| -- Found FastRT=
PS: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/=
work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/recipe-sysr=
oot/opt/ros/rolling/include (Required is at least version "2.13")<br />| --=
 Using RMW implementation 'rmw_fastrtps_cpp' as default<br />| -- Found sen=
sor_msgs: 5.4.1 (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB28=
8E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r=
0/recipe-sysroot/opt/ros/rolling/share/sensor_msgs/cmake)<br />| CMake Erro=
r at CMakeLists.txt:19 (find_package):<br />| &nbsp; By not providing "Find=
yaml_cpp_vendor.cmake" in CMAKE_MODULE_PATH this<br />| &nbsp; project has =
asked CMake to find a package configuration file provided by<br />| &nbsp; =
"yaml_cpp_vendor", but CMake did not find one.<br />|&nbsp;<br />| &nbsp; C=
ould not find a package configuration file provided by "yaml_cpp_vendor"<br=
 />| &nbsp; with any of the following names:<br />|&nbsp;<br />| &nbsp; &nb=
sp; yaml_cpp_vendorConfig.cmake<br />| &nbsp; &nbsp; yaml_cpp_vendor-config=
.cmake<br />|&nbsp;<br />| &nbsp; Add the installation prefix of "yaml_cpp_=
vendor" to CMAKE_PREFIX_PATH or<br />| &nbsp; set "yaml_cpp_vendor_DIR" to =
a directory containing one of the above files.<br />| &nbsp; If "yaml_cpp_v=
endor" provides a separate development package or SDK, be<br />| &nbsp; sur=
e it has been installed.<br />|&nbsp;<br />|&nbsp;<br />| -- Configuring in=
complete, errors occurred!<br />| See also "/home/user/Mindteck_Projects/Ir=
ilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-ca=
libration-parsers/5.3.2-1-r0/build/CMakeFiles/CMakeOutput.log".<br />| WARN=
ING: exit code 1 from a shell command.<br />ERROR: Task (/home/user/Mindtec=
k_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolli=
ng/generated-recipes/image-common/camera-calibration-parsers_5.3.2-1.bb:do_=
configure) failed with exit code '1'<br />NOTE: Tasks Summary: Attempted 10=
681 tasks of which 10042 didn't need to be rerun and 2 failed.</div>
<div>Summary: 2 tasks failed:<br />&nbsp; /home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-re=
cipes/flir-camera-driver/flir-camera-msgs_2.0.20-1.bb:do_configure<br />&nb=
sp; /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/me=
ta-ros/meta-ros2-rolling/generated-recipes/image-common/camera-calibration-=
parsers_5.3.2-1.bb:do_configure<br />Summary: There were 10 WARNING message=
s.<br />Summary: There were 2 ERROR messages, returning a non-zero exit cod=
e.<br />user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288=
E/build$&nbsp;</div>
</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>
<p style=3D"box-sizing: border-box; margin: 0px 0px 1.1em; overflow-wrap: b=
reak-word !important; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l; padding: 0px; border: 0px; line-height: inherit; font-family: sans-serif=
; font-size: 15px; vertical-align: baseline; color: #0c0d0e; text-align: le=
ft; background-color: #ffffff;">1: How can I resolve the <strong>flir-camer=
a-msgs-2.0.20-1-r0 do_configure: ExecutionError</strong>&nbsp; and <strong>=
camera-calibration-parsers-5.3.2-1-r0 do_configure: ExecutionError</strong>=
?</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 1.1em; overflow-wrap: b=
reak-word !important; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l; padding: 0px; border: 0px; line-height: inherit; font-family: sans-serif=
; font-size: 15px; vertical-align: baseline; color: #0c0d0e; text-align: le=
ft; background-color: #ffffff;">2: Is there an additional step required to =
ensure the spinnaker package integrates successfully into the Yocto build?<=
/p>
<p style=3D"box-sizing: border-box; margin: 0px; overflow-wrap: break-word =
!important; font-style: normal; font-variant-ligatures: normal; font-varian=
t-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: normal; text-decoration-thickness: initi=
al; text-decoration-style: initial; text-decoration-color: initial; padding=
: 0px; border: 0px; line-height: inherit; font-family: sans-serif; font-siz=
e: 15px; vertical-align: baseline; color: #0c0d0e; text-align: left; backgr=
ound-color: #ffffff;">Any guidance would be greatly appreciated. Thank you =
in advance!</p>
</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--VUlxaRRm2d1c3Oz1JJpl--

