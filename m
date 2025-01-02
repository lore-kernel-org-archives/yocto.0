Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3014E77188
	for <webhook@archiver.kernel.org>; Thu,  2 Jan 2025 04:50:45 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.2736.1735793436025699017
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jan 2025 20:50:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ck5vmKPO;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-29e2a50586dso5289109fac.0
        for <yocto@lists.yoctoproject.org>; Wed, 01 Jan 2025 20:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735793435; x=1736398235; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p8s9IrUJVHSBVHvfZv4YJgKCvNxbiHbqLloCkNhuy7I=;
        b=Ck5vmKPOrXc69KofTvuXmluvNCN2ucEwGLrF0QQPu6IA6mT+WLoUoaOZ5aGkflH09K
         Y1W2SgybwrGC0ZLIAUAkhYZiSdoEKHsLWX5ZeUCIpXQm3VKdbmiZZm499cV7TZsJwX4Z
         CHucASt0MwwQvUKab5KAGZMADQWDrfNdqRpAxTBdXXnc7nF6ZTpWzrc8REmg+Es980bb
         jWMX6bsNf35e3Y1JnmXSzzboKiaVFvWYAExTLAOta7zRb/ywHOnkv2gSI4p5lUhB2yvk
         768pZX+Jc+wnL1FUzvXKe1KMm//n1S15L2+osQ7maZMlinPXg/9vbkNoi+TXuV4fNEx9
         jMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735793435; x=1736398235;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p8s9IrUJVHSBVHvfZv4YJgKCvNxbiHbqLloCkNhuy7I=;
        b=eNrtwtnIt6tz69lTMrsGlul42fuAQ1kgUrgByKbiAIy6zmE+Rf9SsXV7XbwOqP8nuE
         six7YOnKlXTqGhsORGEtqRaZxOa9sUXB89Tzmen2A7PejQPqJKTCDQRPId6LV91YY52a
         CzpYJRMuIObLeGw0/ouAbpRHt1NluyoXBXSJ8OCCKLhenraO6zYmq+fEEWSznL0p8RVn
         uFVnfOJ6tfKEAUu93YJ1KlLW0RoJV4FG8PN7CcUF4GxlzuiinVrNrC+sUjP+Ecfm6awe
         qh6T9CaB3cTyoLQu3BG+dLzLQg+I+NXbBa1hoAFAp0iLsVlhluGN3ri3rEy9rQX04FTd
         1DPg==
X-Gm-Message-State: AOJu0YxWPw4KTru+xghboPNextkUOBhIV68nTKlh7sMivRWnnLlETQh0
	PdiKlhRL6RcpEdtH19BVon2ZWEWjrGKrdPll7flW8BRqgUojs+sclGV+5yGG5ltySCpngr/kz8V
	SYydydmI8e5z8472fOsN167n5gvxofQ==
X-Gm-Gg: ASbGncuQKT6Bwm0rLXUcH5pQ6eXtQ01VOniO0aWUXMW3BhqtnjOOxKaE7Z5N8LMSJ9y
	46JcFJW7H5zuYBLSHw4642u/DdsTHoXz9jkSpHHqaKsj1kquaMOeM
X-Google-Smtp-Source: AGHT+IF3w9/YUqSZLxWHLgujEhznOC1rPe9Dzg/mCeZ/4wfD1bOgQncqfJqUt1hdxR7bBTkW6YarYK4jIl78z1xydDg=
X-Received: by 2002:a05:6870:2b12:b0:29f:af5b:ef49 with SMTP id
 586e51a60fabf-2a7fb2349bfmr27277944fac.10.1735793434944; Wed, 01 Jan 2025
 20:50:34 -0800 (PST)
MIME-Version: 1.0
References: <wz8P.1735793034909370389.aNE5@lists.yoctoproject.org>
In-Reply-To: <wz8P.1735793034909370389.aNE5@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 1 Jan 2025 20:50:09 -0800
Message-ID: <CAMKF1soNO0M8mjVKs48_GV6_pRftsNHXE9o1e-FGUFWPXWBC8Q@mail.gmail.com>
Subject: Re: [yocto] spinnaker error (ExecutionError) while yocto build
To: yocto@lists.yoctoproject.org, rajesh.d@mindteck.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jan 2025 04:50:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64489

On Wed, Jan 1, 2025 at 8:44=E2=80=AFPM rajesh.d via lists.yoctoproject.org
<rajesh.d=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/buil=
d$ bitbake core-image-sato
> Loading cache: 100% |                                                    =
                                                                           =
                                       | ETA:  --:--:--
> Loaded 0 entries from dependency cache.
> Parsing recipes: 100% |##################################################=
###########################################################################=
########################################| Time: 0:00:57
> Parsing of 4257 .bb files complete (0 cached, 4257 parsed). 6094 targets,=
 264 skipped, 1 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> Build Configuration:
> BB_VERSION           =3D "2.0.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "genericx86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "4.0.23"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> DISTRO_NAME          =3D "Poky (Yocto Project Reference Distro)"
> ROS_DISTRO           =3D "rolling"
> ROS_VERSION          =3D "2"
> ROS_PYTHON_VERSION   =3D "3"
> meta                 =3D "kirkstone:13b13b81b91f618c13cf972067c47bd810de8=
52f"
> meta-poky
> meta-yocto-bsp       =3D "HEAD:0bffb5eed1e8c9469b9c6e0d77f959dc9ade9c6a"
> meta-intel           =3D "HEAD:8514c60ac1a9a17ba20b17fa176119728a91dcf9"
> meta-oe
> meta-python
> meta-multimedia
> meta-networking
> meta-filesystems     =3D "kirkstone:4ad41baed6236d499804cbfc4f174042d84fc=
e97"
> meta-qt5             =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0dd2566"
> meta-freescale       =3D "HEAD:c525e0c19bdc46d45f71873b5f286f49abb69418"
> meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253"
> meta-ros2
> meta-ros-common
> meta-ros2-rolling    =3D "HEAD:72f70f7c1147197bd1e447c03187628b4b62a738"
> meta-pylon           =3D "<unknown>:<unknown>"
> Initialising tasks: 100% |###############################################=
###########################################################################=
########################################| Time: 0:00:05
> Sstate summary: Wanted 822 Local 815 Mirrors 0 Missed 7 Current 3468 (99%=
 match, 99% complete)
> NOTE: Executing Tasks
> ERROR: spinnaker-camera-driver-2.0.20-1-r0 do_configure: ExecutionError('=
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work=
/core2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/temp/run.do_config=
ure.74923', 1, None, None)
> ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camer=
a-driver/2.0.20-1-r0/temp/log.do_configure.74923
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/sources/meta-openembedded/meta-python/recipes-devtool=
s/python/python3-distro_1.7.0.bb:do_populate_sysroot', '/home/user/Mindteck=
_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros-common/=
recipes-devtools/yaml-cpp/yaml-cpp_0.6.2.bb:do_populate_sysroot', '/home/us=
er/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-=
ros2-rolling/generated-recipes/common-interfaces/sensor-msgs_5.4.1-1.bb:do_=
populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIM=
B288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/common-interface=
s/std-msgs_5.4.1-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/I=
rilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated=
-recipes/flir-camera-driver/flir-camera-msgs_2.0.20-1.bb:do_populate_sysroo=
t', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/m=
eta-ros/meta-ros2-rolling/generated-recipes/image-common/camera-info-manage=
r_5.3.2-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/=
image-common/image-transport_5.3.2-1.bb:do_populate_sysroot', '/home/user/M=
indteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2=
-rolling/generated-recipes/rclcpp/rclcpp-components_28.3.3-1.bb:do_populate=
_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/so=
urces/meta-ros/meta-ros2-rolling/generated-recipes/rclcpp/rclcpp_28.3.3-1.b=
b:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yoct=
o_AIMB288E/sources/openembedded-core/meta/recipes-core/glibc/glibc_2.35.bb:=
do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_=
AIMB288E/sources/openembedded-core/meta/recipes-devtools/cmake/cmake-native=
_3.22.3.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirks=
tone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/dpkg/dp=
kg_1.21.4.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/gcc/g=
cc-cross_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/g=
cc/gcc-runtime_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/=
Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devt=
ools/quilt/quilt-native_0.67.bb:do_populate_sysroot', '/home/user/Mindteck_=
Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/rec=
ipes-extended/lsb/lsb-release_1.4.bb:do_populate_sysroot', '/home/user/Mind=
teck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/met=
a/recipes-multimedia/ffmpeg/ffmpeg_5.0.1.bb:do_populate_sysroot', '/home/us=
er/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-c=
ore/meta/recipes-support/curl/curl_7.82.0.bb:do_populate_sysroot', '/home/u=
ser/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-=
core/meta/recipes-support/libusb/libusb1_1.0.26.bb:do_populate_sysroot', 'v=
irtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/=
sources/meta-ros/meta-ros2-rolling/generated-recipes/ament-cmake-ros/ament-=
cmake-ros_0.13.0-1.bb:do_populate_sysroot', 'virtual:native:/home/user/Mind=
teck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-ro=
lling/generated-recipes/ament-cmake/ament-cmake_2.7.0-1.bb:do_populate_sysr=
oot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_A=
IMB288E/sources/openembedded-core/meta/recipes-devtools/ninja/ninja_1.10.2.=
bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/=
patch/patch_2.7.6.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindt=
eck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta=
/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:nativ=
e:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/open=
embedded-core/meta/recipes-devtools/python/python3_3.10.15.bb:do_populate_s=
ysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['python3-distro', 'yaml-c=
pp', 'sensor-msgs', 'std-msgs', 'flir-camera-msgs', 'camera-info-manager', =
'image-transport', 'rclcpp-components', 'rclcpp', 'glibc', 'cmake-native', =
'dpkg', 'gcc-cross-x86_64', 'gcc-runtime', 'quilt-native', 'lsb-release', '=
ffmpeg', 'curl', 'libusb1', 'ament-cmake-ros-native', 'ament-cmake-native',=
 'ninja-native', 'patch-native', 'pseudo-native', 'python3-native', 'linux-=
libc-headers', 'libtirpc-native', 'sqlite3-native', 'util-linux-libuuid-nat=
ive', 'bzip2-native', 'readline-native', 'xz-native', 'libnsl2-native', 'zl=
ib-native', 'openssl-native', 'libtool-native', 'libffi-native', 'ncurses-n=
ative', 'gdbm-native', 'ncurses', 'xz', 'perl', 'zlib', 'bzip2', 'libstatis=
tics-collector', 'rcl-interfaces', 'statistics-msgs', 'rcutils', 'builtin-i=
nterfaces', 'rosgraph-msgs', 'ament-index-cpp', 'rcpputils', 'tracetools', =
'rmw', 'rcl-yaml-param-parser', 'rcl', 'rosidl-runtime-c', 'rosidl-dynamic-=
typesupport', 'rcl-logging-interface', 'rosidl-typesupport-cpp', 'rosidl-ty=
pesupport-c', 'rosidl-runtime-cpp', 'camera-calibration-parsers', 'rclcpp-l=
ifecycle', 'pluginlib', 'message-filters', 'zstd-native', 'texinfo-dummy-na=
tive', 'mpfr-native', 'libmpc-native', 'gnu-config-native', 'binutils-cross=
-x86_64', 'gmp-native', 'flex-native', 'libogg', 'libxcb', 'libxv', 'alsa-l=
ib', 'libtheora', 'opkg-utils', 'libidn2', 'openssl', 'attr-native', 'rosid=
l-default-runtime', 'rosidl-default-generators', 'systemd', 'ament-cmake-gm=
ock-native', 'ament-cmake-pytest-native', 'ament-cmake-gtest-native', 'doma=
in-coordinator-native', 're2c-native', 'curl-native', 'geometry-msgs', 'ser=
vice-msgs', 'libgcc', 'ament-cmake-core-native', 'ament-cmake-export-interf=
aces-native', 'ament-cmake-export-targets-native', 'ament-cmake-gen-version=
-h-native', 'ament-cmake-python-native', 'ament-cmake-export-link-flags-nat=
ive', 'ament-cmake-libraries-native', 'ament-cmake-export-include-directori=
es-native', 'ament-cmake-export-definitions-native', 'ament-cmake-export-li=
braries-native', 'ament-cmake-export-dependencies-native', 'ament-cmake-tes=
t-native', 'ament-cmake-version-native', 'ament-cmake-target-dependencies-n=
ative', 'class-loader', 'composition-interfaces', 'python3', 'gettext-minim=
al-native', 'perl-native', 'gdbm', 'libxcrypt', 'rmw-fastrtps-shared-cpp', =
'rosidl-typesupport-fastrtps-c', 'rmw-implementation', 'rosidl-generator-cp=
p', 'rmw-implementation-cmake', 'rosidl-typesupport-fastrtps-cpp', 'rmw-fas=
trtps-cpp', 'fastrtps-cmake-module', 'python-cmake-module', 'fastcdr', 'ros=
idl-core-runtime', 'lttng-ust', 'libyaml-vendor', 'libyaml', 'type-descript=
ion-interfaces', 'rcl-logging-spdlog', 'rosidl-typesupport-interface', 'ros=
idl-cmake', 'rosidl-typesupport-introspection-cpp', 'rosidl-typesupport-int=
rospection-c', 'yaml-cpp-vendor', 'lifecycle-msgs', 'rcl-lifecycle', 'tinyx=
ml2-vendor', 'm4-native', 'libxau', 'libpthread-stubs', 'xcb-proto', 'xorgp=
roto', 'libxdmcp', 'util-macros', 'libxext', 'libunistring', 'zstd', 'libse=
ccomp', 'kmod', 'initscripts', 'libcap', 'shadow-native', 'base-files', 'sh=
adow-sysroot', 'util-linux', 'shadow', 'libxkbcommon', 'update-rc.d', 'bash=
-completion', 'acl', 'base-passwd', 'googletest-native', 'gmock-vendor-nati=
ve', 'python3-pytest-native', 'gtest-vendor-native', 'python3-setuptools-na=
tive', 'python3-catkin-pkg-native', 'ament-package-native', 'ament-cmake-in=
clude-directories-native', 'console-bridge', 'console-bridge-vendor', 'sqli=
te3', 'libtirpc', 'util-linux-libuuid', 'libffi', 'libnsl2', 'readline', 'm=
ake-native', 'fastrtps', 'rmw-dds-common', 'rosidl-cli', 'ament-index-pytho=
n', 'rmw-fastrtps-dynamic-cpp', 'rmw-cyclonedds-cpp', 'rosidl-generator-c',=
 'rosidl-dynamic-typesupport-fastrtps', 'rosidl-generator-py', 'liburcu', '=
spdlog-vendor', 'spdlog', 'libtinyxml2', 'libx11', 'libcap-ng', 'attr', 'xk=
eyboard-config', 'libxml2', 'wayland', 'wayland-protocols', 'python3-setupt=
ools-scm-native', 'python3-wheel-native', 'python3-installer-native', 'pyth=
on3-pyparsing-native', 'python3-importlib-metadata-native', 'boost', 'asio'=
, 'foonathan-memory-vendor', 'cyclonedds', 'iceoryx-binding-c', 'rosidl-gen=
erator-type-description', 'python3-numpy', 'fmt', 'autoconf-archive', 'xtra=
ns', 'expat', 'python3-tomli-native', 'python3-packaging-native', 'python3-=
flit-core-native', 'unzip-native', 'python3-pathlib2-native', 'python3-zipp=
-native', 'python3-toml-native', 'icu', 'foonathan-memory', 'iceoryx-posh',=
 'iceoryx-hoofs', 'python3-six-native', 'python3-more-itertools-native', 'c=
pptoml']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_configure
> | -- The C compiler identification is GNU 11.5.0
> | -- The CXX compiler identification is GNU 11.5.0
> | -- Detecting C compiler ABI info
> | -- Detecting C compiler ABI info - done
> | -- Check for working C compiler: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camera-=
driver/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-p=
oky-linux-gcc - skipped
> | -- Detecting C compile features
> | -- Detecting C compile features - done
> | -- Detecting CXX compiler ABI info
> | -- Detecting CXX compiler ABI info - done
> | -- Check for working CXX compiler: /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/core2-64-poky-linux/spinnaker-camer=
a-driver/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64=
-poky-linux-g++ - skipped
> | -- Detecting CXX compile features
> | -- Detecting CXX compile features - done
> | -- Found inc dir: SPINNAKER_INCLUDE_DIRS-NOTFOUND
> | -- Found variable: FALSE at SPINNAKER_LIBRARIES-NOTFOUND and SPINNAKER_=
INCLUDE_DIRS-NOTFOUND
> | -- spinnaker not found
> | -- libSpinnaker not found in system library path
> | -- Configuring incomplete, errors occurred!
> | See also "/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/=
build/tmp/work/core2-64-poky-linux/spinnaker-camera-driver/2.0.20-1-r0/buil=
d/CMakeFiles/CMakeOutput.log".
> | CMake Error at cmake/DownloadSpinnaker.cmake:20 (find_program):
> |   Could not find LSB_RELEASE_EXEC using the following names: lsb_releas=
e

This is executing lsb_release on the host which certainly is wrong for
cross compiling, because we are not
compiling for build host. You might have to shunt these calls or
synthesize data which should be generated by them

> | Call Stack (most recent call first):
> |   CMakeLists.txt:57 (download_spinnaker)
> |
> |
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E=
/sources/meta-ros/meta-ros2-rolling/generated-recipes/flir-camera-driver/sp=
innaker-camera-driver_2.0.20-1.bb:do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 8784 tasks of which 8783 didn't need to be=
 rerun and 1 failed.
> Summary: 1 task failed:
>   /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/me=
ta-ros/meta-ros2-rolling/generated-recipes/flir-camera-driver/spinnaker-cam=
era-driver_2.0.20-1.bb:do_configure
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64488): https://lists.yoctoproject.org/g/yocto/messag=
e/64488
> Mute This Topic: https://lists.yoctoproject.org/mt/110384756/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

