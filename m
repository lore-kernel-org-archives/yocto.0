Return-Path: <rajesh.d@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12A49E77188
	for <webhook@archiver.kernel.org>; Thu,  2 Jan 2025 05:41:16 +0000 (UTC)
Subject: Re: [yocto] issue while adding spinnaker package to Yocto build for core-image-sato
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: rajesh.d@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jan 2025 21:41:06 -0800
References: <4a7aa310-e4f6-4682-823a-e6d5351b3349@gmail.com>
In-Reply-To: <4a7aa310-e4f6-4682-823a-e6d5351b3349@gmail.com>
Message-ID: <28221.1735796466221288331@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kJxIlJgGLbgPZzBsQzUT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jan 2025 05:41:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64490

--kJxIlJgGLbgPZzBsQzUT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

now im able to over come this fetch error but facing this execution error f=
or this spinnaker package in my yocto build

I am working on a project for the *intel-corei7-x86_64* hardware board, bui=
lding the Yocto image *core-image-sato*.

While trying to add the *spinnaker package* to the Yocto build, I encounter=
ed the following error during the build process for *core-image-sato:* im u=
sing meta-ros layer for including this spinnaker package.

user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build$=
 bitbake spinnaker-camera-driver
Loading cache: 100% |######################################################=
###########################################################################=
######################################| Time: 0:00:00
Loaded 6094 entries from dependency cache.
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
######################################| Time: 0:00:02
Sstate summary: Wanted 308 Local 297 Mirrors 0 Missed 11 Current 741 (96% m=
atch, 98% complete)
NOTE: Executing Tasks
WARNING: spinnaker-camera-driver-2.0.20-1-r0 do_populate_lic: QA Issue: spi=
nnaker-camera-driver: No generic license file exists for: BSD in any provid=
er [license-exists]
ERROR: spinnaker-camera-driver-2.0.20-1-r0 do_configure: ExecutionError('/h=
ome/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/c=
ore2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/temp/run.do_configur=
e.86290', 1, None, None)
ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-=
driver/2.0.20-1-r0/temp/log.do_configure.86290
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
ninja-native', 'patch-native', 'pseudo-native', 'python3-native', 'xz', 'li=
bxcb', 'libogg', 'libxv', 'alsa-lib', 'zlib', 'libtheora', 'bzip2', 'domain=
-coordinator-native', 'ament-cmake-pytest-native', 'ament-cmake-gmock-nativ=
e', 'ament-cmake-gtest-native', 'rcpputils', 'ament-index-cpp', 'compositio=
n-interfaces', 'class-loader', 'ncurses', 'perl', 'libgcc', 'linux-libc-hea=
ders', 'rosidl-typesupport-cpp', 'builtin-interfaces', 'rosidl-typesupport-=
c', 'geometry-msgs', 'service-msgs', 'rosidl-default-runtime', 'rosidl-defa=
ult-generators', 'ament-cmake-export-dependencies-native', 'ament-cmake-lib=
raries-native', 'ament-cmake-core-native', 'ament-cmake-gen-version-h-nativ=
e', 'ament-cmake-export-link-flags-native', 'ament-cmake-export-definitions=
-native', 'ament-cmake-export-libraries-native', 'ament-cmake-test-native',=
 'ament-cmake-export-interfaces-native', 'ament-cmake-target-dependencies-n=
ative', 'ament-cmake-python-native', 'ament-cmake-version-native', 'ament-c=
make-export-include-directories-native', 'ament-cmake-export-targets-native=
', 'rcl-interfaces', 'rosidl-dynamic-typesupport', 'rcl-yaml-param-parser',=
 'tracetools', 'rcl-logging-interface', 'rosidl-runtime-cpp', 'rmw', 'rosgr=
aph-msgs', 'rcutils', 'rosidl-runtime-c', 'rcl', 'libstatistics-collector',=
 'statistics-msgs', 'systemd', 'rclcpp-lifecycle', 'camera-calibration-pars=
ers', 'message-filters', 'pluginlib', 'bzip2-native', 'zlib-native', 'zstd-=
native', 'curl-native', 'xz-native', 'ncurses-native', 'openssl', 'libidn2'=
, 'opkg-utils', 're2c-native', 'mpfr-native', 'gmp-native', 'libmpc-native'=
, 'gnu-config-native', 'texinfo-dummy-native', 'libtool-native', 'flex-nati=
ve', 'binutils-cross-x86_64', 'python3', 'attr-native', 'util-linux-libuuid=
-native', 'readline-native', 'openssl-native', 'sqlite3-native', 'libtirpc-=
native', 'gdbm-native', 'libnsl2-native', 'libffi-native', 'libxdmcp', 'lib=
xau', 'xorgproto', 'libpthread-stubs', 'xcb-proto', 'util-macros', 'libxext=
', 'python3-setuptools-native', 'python3-pytest-native', 'googletest-native=
', 'gmock-vendor-native', 'gtest-vendor-native', 'console-bridge', 'console=
-bridge-vendor', 'gdbm', 'libxcrypt', 'rosidl-typesupport-introspection-cpp=
', 'rosidl-cmake', 'python-cmake-module', 'rosidl-typesupport-fastrtps-c', =
'rosidl-typesupport-fastrtps-cpp', 'rosidl-core-runtime', 'rosidl-generator=
-cpp', 'fastrtps-cmake-module', 'fastcdr', 'rosidl-typesupport-introspectio=
n-c', 'python3-catkin-pkg-native', 'ament-package-native', 'ament-cmake-inc=
lude-directories-native', 'rmw-implementation', 'rmw-implementation-cmake',=
 'rmw-fastrtps-shared-cpp', 'rmw-fastrtps-cpp', 'libyaml', 'libyaml-vendor'=
, 'lttng-ust', 'rosidl-typesupport-interface', 'type-description-interfaces=
', 'rcl-logging-spdlog', 'libcap', 'shadow-sysroot', 'kmod', 'libseccomp', =
'shadow', 'shadow-native', 'zstd', 'base-files', 'base-passwd', 'acl', 'uti=
l-linux', 'bash-completion', 'libxkbcommon', 'initscripts', 'update-rc.d', =
'lifecycle-msgs', 'rcl-lifecycle', 'yaml-cpp-vendor', 'tinyxml2-vendor', 'g=
ettext-minimal-native', 'libunistring', 'm4-native', 'libffi', 'readline', =
'util-linux-libuuid', 'sqlite3', 'libnsl2', 'libtirpc', 'perl-native', 'lib=
x11', 'python3-wheel-native', 'python3-installer-native', 'python3-setuptoo=
ls-scm-native', 'boost', 'rosidl-cli', 'ament-index-python', 'rosidl-genera=
tor-py', 'rosidl-generator-c', 'python3-pyparsing-native', 'python3-importl=
ib-metadata-native', 'rmw-fastrtps-dynamic-cpp', 'rmw-cyclonedds-cpp', 'rmw=
-dds-common', 'fastrtps', 'rosidl-dynamic-typesupport-fastrtps', 'liburcu',=
 'spdlog', 'spdlog-vendor', 'attr', 'libcap-ng', 'libxml2', 'wayland', 'xke=
yboard-config', 'wayland-protocols', 'libtinyxml2', 'make-native', 'autocon=
f-archive', 'xtrans', 'python3-flit-core-native', 'unzip-native', 'python3-=
packaging-native', 'python3-tomli-native', 'icu', 'python3-numpy', 'rosidl-=
generator-type-description', 'python3-pathlib2-native', 'python3-toml-nativ=
e', 'python3-zipp-native', 'cyclonedds', 'iceoryx-binding-c', 'asio', 'foon=
athan-memory-vendor', 'fmt', 'expat', 'python3-six-native', 'python3-more-i=
tertools-native', 'iceoryx-hoofs', 'iceoryx-posh', 'foonathan-memory', 'cpp=
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
NOTE: Tasks Summary: Attempted 3795 tasks of which 3776 didn't need to be r=
erun and 1 failed.
Summary: 1 task failed:
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-r=
os/meta-ros2-rolling/generated-recipes/flir-camera-driver/spinnaker-camera-=
driver_2.0.20-1.bb:do_configure
Summary: There was 1 WARNING message.
Summary: There was 1 ERROR message, returning a non-zero exit code.

--kJxIlJgGLbgPZzBsQzUT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>now im able to over come this fetch error but facing this execution er=
ror for this spinnaker package in my yocto build&nbsp;<br /><br />
<p style=3D"box-sizing: border-box; margin: 0px 0px 1.1em; overflow-wrap: b=
reak-word !important; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l; padding: 0px; border: 0px; line-height: inherit; font-family: sans-serif=
; font-size: 15px; vertical-align: baseline; color: #0c0d0e; text-align: le=
ft; background-color: #ffffff;">I am working on a project for the<span styl=
e=3D"box-sizing: border-box; overflow-wrap: break-word !important;">&nbsp;<=
/span><strong style=3D"box-sizing: border-box; font-weight: bold; overflow-=
wrap: break-word !important;">intel-corei7-x86_64</strong><span style=3D"bo=
x-sizing: border-box; overflow-wrap: break-word !important;">&nbsp;</span>h=
ardware board, building the Yocto image<span style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important;">&nbsp;</span><strong style=3D"box=
-sizing: border-box; font-weight: bold; overflow-wrap: break-word !importan=
t;">core-image-sato</strong>.</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 1.1em; overflow-wrap: b=
reak-word !important; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickn=
ess: initial; text-decoration-style: initial; text-decoration-color: initia=
l; padding: 0px; border: 0px; line-height: inherit; font-family: sans-serif=
; font-size: 15px; vertical-align: baseline; color: #0c0d0e; text-align: le=
ft; background-color: #ffffff;">While trying to add the<span style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;">&nbsp;</span><str=
ong style=3D"box-sizing: border-box; font-weight: bold; overflow-wrap: brea=
k-word !important;">spinnaker package</strong><span style=3D"box-sizing: bo=
rder-box; overflow-wrap: break-word !important;">&nbsp;</span>to the Yocto =
build, I encountered the following error during the build process for<span =
style=3D"box-sizing: border-box; overflow-wrap: break-word !important;">&nb=
sp;</span><strong style=3D"box-sizing: border-box; font-weight: bold; overf=
low-wrap: break-word !important;">core-image-sato:</strong><span style=3D"b=
ox-sizing: border-box; overflow-wrap: break-word !important;">&nbsp;</span>=
im using meta-ros layer for including this spinnaker package.</p>
</div>
<div>&nbsp;</div>
<div>
<div>user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/b=
uild$ bitbake spinnaker-camera-driver<br />Loading cache: 100% |###########=
###########################################################################=
###########################################################################=
######| Time: 0:00:00<br />Loaded 6094 entries from dependency cache.<br />=
NOTE: Resolving any missing task queue dependencies</div>
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
###########################################| Time: 0:00:02<br />Sstate summ=
ary: Wanted 308 Local 297 Mirrors 0 Missed 11 Current 741 (96% match, 98% c=
omplete)<br />NOTE: Executing Tasks<br />WARNING: spinnaker-camera-driver-2=
.0.20-1-r0 do_populate_lic: QA Issue: spinnaker-camera-driver: No generic l=
icense file exists for: BSD in any provider [license-exists]<br />ERROR: sp=
innaker-camera-driver-2.0.20-1-r0 do_configure: ExecutionError('/home/user/=
Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-p=
oky-linux/spinnaker-camera-driver/2.0.20-1-r0/temp/run.do_configure.86290',=
 1, None, None)<br />ERROR: Logfile of failure stored in: /home/user/Mindte=
ck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-li=
nux/spinnaker-camera-driver/2.0.20-1-r0/temp/log.do_configure.86290<br />Lo=
g data follows:<br />| DEBUG: Executing python function extend_recipe_sysro=
ot<br />| NOTE: Direct dependencies are ['/home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/sources/meta-openembedded/meta-python/recipes-d=
evtools/python/python3-distro_1.7.0.bb:do_populate_sysroot', '/home/user/Mi=
ndteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros-c=
ommon/recipes-devtools/yaml-cpp/yaml-cpp_0.6.2.bb:do_populate_sysroot', '/h=
ome/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros=
/meta-ros2-rolling/generated-recipes/common-interfaces/sensor-msgs_5.4.1-1.=
bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yoc=
to_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/common-int=
erfaces/std-msgs_5.4.1-1.bb:do_populate_sysroot', '/home/user/Mindteck_Proj=
ects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/gen=
erated-recipes/flir-camera-driver/flir-camera-msgs_2.0.20-1.bb:do_populate_=
sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sou=
rces/meta-ros/meta-ros2-rolling/generated-recipes/image-common/camera-info-=
manager_5.3.2-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-re=
cipes/image-common/image-transport_5.3.2-1.bb:do_populate_sysroot', '/home/=
user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/met=
a-ros2-rolling/generated-recipes/rclcpp/rclcpp-components_28.3.3-1.bb:do_po=
pulate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB2=
88E/sources/meta-ros/meta-ros2-rolling/generated-recipes/rclcpp/rclcpp_28.3=
.3-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkston=
e_yocto_AIMB288E/sources/openembedded-core/meta/recipes-core/glibc/glibc_2.=
35.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_=
yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/cmake/cmake-=
native_3.22.3.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/d=
pkg/dpkg_1.21.4.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools=
/gcc/gcc-cross_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/=
Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devt=
ools/gcc/gcc-runtime_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Pro=
jects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipe=
s-devtools/quilt/quilt-native_0.67.bb:do_populate_sysroot', '/home/user/Min=
dteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/me=
ta/recipes-extended/lsb/lsb-release_1.4.bb:do_populate_sysroot', '/home/use=
r/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-co=
re/meta/recipes-multimedia/ffmpeg/ffmpeg_5.0.1.bb:do_populate_sysroot', '/h=
ome/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembe=
dded-core/meta/recipes-support/curl/curl_7.82.0.bb:do_populate_sysroot', '/=
home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openemb=
edded-core/meta/recipes-support/libusb/libusb1_1.0.26.bb:do_populate_sysroo=
t', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/ament-cmake-ros/=
ament-cmake-ros_0.13.0-1.bb:do_populate_sysroot', 'virtual:native:/home/use=
r/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-r=
os2-rolling/generated-recipes/ament-cmake/ament-cmake_2.7.0-1.bb:do_populat=
e_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_y=
octo_AIMB288E/sources/openembedded-core/meta/recipes-devtools/ninja/ninja_1=
.10.2.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects=
/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-dev=
tools/patch/patch_2.7.6.bb:do_populate_sysroot', 'virtual:native:/home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-cor=
e/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual=
:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/source=
s/openembedded-core/meta/recipes-devtools/python/python3_3.10.15.bb:do_popu=
late_sysroot']<br />| NOTE: Installed into sysroot: []<br />| NOTE: Skippin=
g as already exists in sysroot: ['python3-distro', 'yaml-cpp', 'sensor-msgs=
', 'std-msgs', 'flir-camera-msgs', 'camera-info-manager', 'image-transport'=
, 'rclcpp-components', 'rclcpp', 'glibc', 'cmake-native', 'dpkg', 'gcc-cros=
s-x86_64', 'gcc-runtime', 'quilt-native', 'lsb-release', 'ffmpeg', 'curl', =
'libusb1', 'ament-cmake-ros-native', 'ament-cmake-native', 'ninja-native', =
'patch-native', 'pseudo-native', 'python3-native', 'xz', 'libxcb', 'libogg'=
, 'libxv', 'alsa-lib', 'zlib', 'libtheora', 'bzip2', 'domain-coordinator-na=
tive', 'ament-cmake-pytest-native', 'ament-cmake-gmock-native', 'ament-cmak=
e-gtest-native', 'rcpputils', 'ament-index-cpp', 'composition-interfaces', =
'class-loader', 'ncurses', 'perl', 'libgcc', 'linux-libc-headers', 'rosidl-=
typesupport-cpp', 'builtin-interfaces', 'rosidl-typesupport-c', 'geometry-m=
sgs', 'service-msgs', 'rosidl-default-runtime', 'rosidl-default-generators'=
, 'ament-cmake-export-dependencies-native', 'ament-cmake-libraries-native',=
 'ament-cmake-core-native', 'ament-cmake-gen-version-h-native', 'ament-cmak=
e-export-link-flags-native', 'ament-cmake-export-definitions-native', 'amen=
t-cmake-export-libraries-native', 'ament-cmake-test-native', 'ament-cmake-e=
xport-interfaces-native', 'ament-cmake-target-dependencies-native', 'ament-=
cmake-python-native', 'ament-cmake-version-native', 'ament-cmake-export-inc=
lude-directories-native', 'ament-cmake-export-targets-native', 'rcl-interfa=
ces', 'rosidl-dynamic-typesupport', 'rcl-yaml-param-parser', 'tracetools', =
'rcl-logging-interface', 'rosidl-runtime-cpp', 'rmw', 'rosgraph-msgs', 'rcu=
tils', 'rosidl-runtime-c', 'rcl', 'libstatistics-collector', 'statistics-ms=
gs', 'systemd', 'rclcpp-lifecycle', 'camera-calibration-parsers', 'message-=
filters', 'pluginlib', 'bzip2-native', 'zlib-native', 'zstd-native', 'curl-=
native', 'xz-native', 'ncurses-native', 'openssl', 'libidn2', 'opkg-utils',=
 're2c-native', 'mpfr-native', 'gmp-native', 'libmpc-native', 'gnu-config-n=
ative', 'texinfo-dummy-native', 'libtool-native', 'flex-native', 'binutils-=
cross-x86_64', 'python3', 'attr-native', 'util-linux-libuuid-native', 'read=
line-native', 'openssl-native', 'sqlite3-native', 'libtirpc-native', 'gdbm-=
native', 'libnsl2-native', 'libffi-native', 'libxdmcp', 'libxau', 'xorgprot=
o', 'libpthread-stubs', 'xcb-proto', 'util-macros', 'libxext', 'python3-set=
uptools-native', 'python3-pytest-native', 'googletest-native', 'gmock-vendo=
r-native', 'gtest-vendor-native', 'console-bridge', 'console-bridge-vendor'=
, 'gdbm', 'libxcrypt', 'rosidl-typesupport-introspection-cpp', 'rosidl-cmak=
e', 'python-cmake-module', 'rosidl-typesupport-fastrtps-c', 'rosidl-typesup=
port-fastrtps-cpp', 'rosidl-core-runtime', 'rosidl-generator-cpp', 'fastrtp=
s-cmake-module', 'fastcdr', 'rosidl-typesupport-introspection-c', 'python3-=
catkin-pkg-native', 'ament-package-native', 'ament-cmake-include-directorie=
s-native', 'rmw-implementation', 'rmw-implementation-cmake', 'rmw-fastrtps-=
shared-cpp', 'rmw-fastrtps-cpp', 'libyaml', 'libyaml-vendor', 'lttng-ust', =
'rosidl-typesupport-interface', 'type-description-interfaces', 'rcl-logging=
-spdlog', 'libcap', 'shadow-sysroot', 'kmod', 'libseccomp', 'shadow', 'shad=
ow-native', 'zstd', 'base-files', 'base-passwd', 'acl', 'util-linux', 'bash=
-completion', 'libxkbcommon', 'initscripts', 'update-rc.d', 'lifecycle-msgs=
', 'rcl-lifecycle', 'yaml-cpp-vendor', 'tinyxml2-vendor', 'gettext-minimal-=
native', 'libunistring', 'm4-native', 'libffi', 'readline', 'util-linux-lib=
uuid', 'sqlite3', 'libnsl2', 'libtirpc', 'perl-native', 'libx11', 'python3-=
wheel-native', 'python3-installer-native', 'python3-setuptools-scm-native',=
 'boost', 'rosidl-cli', 'ament-index-python', 'rosidl-generator-py', 'rosid=
l-generator-c', 'python3-pyparsing-native', 'python3-importlib-metadata-nat=
ive', 'rmw-fastrtps-dynamic-cpp', 'rmw-cyclonedds-cpp', 'rmw-dds-common', '=
fastrtps', 'rosidl-dynamic-typesupport-fastrtps', 'liburcu', 'spdlog', 'spd=
log-vendor', 'attr', 'libcap-ng', 'libxml2', 'wayland', 'xkeyboard-config',=
 'wayland-protocols', 'libtinyxml2', 'make-native', 'autoconf-archive', 'xt=
rans', 'python3-flit-core-native', 'unzip-native', 'python3-packaging-nativ=
e', 'python3-tomli-native', 'icu', 'python3-numpy', 'rosidl-generator-type-=
description', 'python3-pathlib2-native', 'python3-toml-native', 'python3-zi=
pp-native', 'cyclonedds', 'iceoryx-binding-c', 'asio', 'foonathan-memory-ve=
ndor', 'fmt', 'expat', 'python3-six-native', 'python3-more-itertools-native=
', 'iceoryx-hoofs', 'iceoryx-posh', 'foonathan-memory', 'cpptoml']<br />| D=
EBUG: Python function extend_recipe_sysroot finished<br />| DEBUG: Executin=
g shell function do_configure<br />| -- The C compiler identification is GN=
U 11.5.0<br />| -- The CXX compiler identification is GNU 11.5.0<br />| -- =
Detecting C compiler ABI info<br />| -- Detecting C compiler ABI info - don=
e<br />| -- Check for working C compiler: /home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-ca=
mera-driver/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86=
_64-poky-linux-gcc - skipped<br />| -- Detecting C compile features<br />| =
-- Detecting C compile features - done<br />| -- Detecting CXX compiler ABI=
 info<br />| -- Detecting CXX compiler ABI info - done<br />| -- Check for =
working CXX compiler: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_A=
IMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-driver/2.0.20-1=
-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-g++ -=
 skipped<br />| -- Detecting CXX compile features<br />| -- Detecting CXX c=
ompile features - done<br />| -- Found inc dir: SPINNAKER_INCLUDE_DIRS-NOTF=
OUND<br />| -- Found variable: FALSE at SPINNAKER_LIBRARIES-NOTFOUND and SP=
INNAKER_INCLUDE_DIRS-NOTFOUND<br />| -- spinnaker not found<br />| -- libSp=
innaker not found in system library path<br />| -- Configuring incomplete, =
errors occurred!<br />| See also "/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-dri=
ver/2.0.20-1-r0/build/CMakeFiles/CMakeOutput.log".<br />| CMake Error at cm=
ake/DownloadSpinnaker.cmake:20 (find_program):<br />| &nbsp; Could not find=
 LSB_RELEASE_EXEC using the following names: lsb_release<br />| Call Stack =
(most recent call first):<br />| &nbsp; CMakeLists.txt:57 (download_spinnak=
er)<br />|&nbsp;<br />|&nbsp;<br />| WARNING: exit code 1 from a shell comm=
and.<br />ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_=
AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/flir-camera-d=
river/spinnaker-camera-driver_2.0.20-1.bb:do_configure) failed with exit co=
de '1'<br />NOTE: Tasks Summary: Attempted 3795 tasks of which 3776 didn't =
need to be rerun and 1 failed.</div>
<div>Summary: 1 task failed:<br />&nbsp; /home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-rec=
ipes/flir-camera-driver/spinnaker-camera-driver_2.0.20-1.bb:do_configure<br=
 />Summary: There was 1 WARNING message.<br />Summary: There was 1 ERROR me=
ssage, returning a non-zero exit code.</div>
</div>

--kJxIlJgGLbgPZzBsQzUT--

