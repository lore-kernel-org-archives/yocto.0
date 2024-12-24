Return-Path: <yocto@ww7.be>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3879FE77188
	for <webhook@archiver.kernel.org>; Tue, 24 Dec 2024 23:49:31 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.143.1735084163636270093
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2024 15:49:23 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: ww7.be, ip: 209.85.216.50, mailfrom: neofutur@ww7.be)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2ee8ecb721dso995926a91.3
        for <yocto@lists.yoctoproject.org>; Tue, 24 Dec 2024 15:49:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735084162; x=1735688962;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OjNyqL+QOTInjDnYmerWnow0Vi5DtrTxqZRT6T6FriM=;
        b=J9JfRjUWHBFLYaDOzJP0GKkno36egl2+PV5AIBHVFpSY+s1ZlWT7djoKzPFZOc5uMi
         SHD892Fvx2nABhNpwgQTUYJ1dh9kykdBglOYKDd4cHikwd0zK/oKSIS9I3CFcN889yYn
         SJAfVFErIosjFA4mvK6Yo21922ntmK9jqKHAh4k79bgMJdSzAZNV4tg3jGyo0VZSuAOl
         H3n4UnDxVsEVw9QADif9s/It0fM2ILhkhTqZH1mn/ohUQr0Y1RgO79/A3PWv/sxZ9YiB
         Fy82EK+RqxIgq00qL5pOwsd0PJpKYjY9yVuMbRyC4oGPK6iyUh9q8LX90OnTsLTWpajr
         p5yw==
X-Gm-Message-State: AOJu0Yy6lr7wsq6k5j0/XLycDMBFyqsVHKE5ZNUjdkS6l69n/dU3b1si
	+HyISsgtX4mG19ITdklT2P03JATyGVUZHftkagwKV+r/WXV104Zfl0lgc/dp1qG2LIEu07TumFr
	EtB8JejmsUpe26rIEySC7gYfEv38TxadPe3+m7swhnnmgnZCrIBE=
X-Gm-Gg: ASbGncvKz4D4h8g0BQ/HXyu+tAoFbisSyaf2cp3ZTpJv2fko2BjaIRZjpkgLfOgjAQl
	8nGO7V6KZK76TgqA9sazxBiGVwkKk7zy8KarRImPrhwXgVimv3uBWUXe3csFUz/qtckcovQ==
X-Google-Smtp-Source: AGHT+IF61/1cPDuJ4KVL8Jotxo7JurKDwT/H7wxLEie6y2R76J+oMwgImVV0Iu50djF1+ranEfRP9dHq0XWithsErZc=
X-Received: by 2002:a17:90b:37ce:b0:2ee:b665:12c2 with SMTP id
 98e67ed59e1d1-2f452decf1fmr10028392a91.2.1735084162118; Tue, 24 Dec 2024
 15:49:22 -0800 (PST)
MIME-Version: 1.0
References: <WyJ9.1734961824787251160.4XdU@lists.yoctoproject.org>
In-Reply-To: <WyJ9.1734961824787251160.4XdU@lists.yoctoproject.org>
From: William Waisse <yocto@ww7.be>
Date: Wed, 25 Dec 2024 00:49:10 +0100
Message-ID: <CAJyeiY6uPqysXkt9h+_am51SapHV_4ZyXsxWyCS5VOxjV6YOxw@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5Byocto=5D_core=2Dimage=2Dsato_yocto_build_error_for_=C2=A0?=
	=?UTF-8?Q?machine_intel=2Dcorei7=2Dx86=5F64_=23bitbake_=23cmake_=23distro_=23native_?=
	=?UTF-8?Q?=23poky_=23yocto?=
To: yocto@lists.yoctoproject.org, rajesh.d@mindteck.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Dec 2024 23:49:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64480

|   Could not find a package configuration file provided by
|   "rosidl_default_runtime" with any of the following names:

you miss that, add it ?
bbappends
This recipe is appended by:

meta-ros2-foxy rosidl-default-runtime_1.0.0-1.bbappend

https://layers.openembedded.org/layerindex/recipe/144828/

On Mon, Dec 23, 2024 at 2:50=E2=80=AFPM rajesh.d via lists.yoctoproject.org
<rajesh.d=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> I am working on a project for the intel-corei7-x86_64 hardware board, bui=
lding the Yocto image core-image-sato.
> While trying to add the spinnaker package to the Yocto build, I encounter=
ed the following error during the build process for core-image-sato: im usi=
ng meta-ros layer for including this spinnaker package.
>
> user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/buil=
d$ bitbake core-image-sato -k
> Loading cache: 100% |####################################################=
###########################################################################=
########################################| Time: 0:00:00
> Loaded 6093 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> Build Configuration:
> BB_VERSION           =3D "2.0.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "intel-corei7-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "4.0.23"
> TUNE_FEATURES        =3D "m64 corei7"
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
> Initialising tasks: 100% |###############################################=
###########################################################################=
########################################| Time: 0:00:05
> Sstate summary: Wanted 1027 Local 542 Mirrors 0 Missed 485 Current 3372 (=
52% match, 88% complete)
> NOTE: Executing Tasks
> ERROR: flir-camera-msgs-2.0.20-1-r0 do_configure: ExecutionError('/home/u=
ser/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7=
-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/temp/run.do_configure.103139', =
1, None, None)
> ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-ms=
gs/2.0.20-1-r0/temp/log.do_configure.103139
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/=
common-interfaces/std-msgs_5.4.1-1.bb:do_populate_sysroot', '/home/user/Min=
dteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-r=
olling/generated-recipes/rcl-interfaces/builtin-interfaces_2.2.0-1.bb:do_po=
pulate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB2=
88E/sources/meta-ros/meta-ros2-rolling/generated-recipes/rosidl-defaults/ro=
sidl-default-generators_1.7.1-1.bb:do_populate_sysroot', '/home/user/Mindte=
ck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/=
recipes-core/glibc/glibc_2.35.bb:do_populate_sysroot', '/home/user/Mindteck=
_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/re=
cipes-devtools/cmake/cmake-native_3.22.3.bb:do_populate_sysroot', '/home/us=
er/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-c=
ore/meta/recipes-devtools/gcc/gcc-cross_11.5.bb:do_populate_sysroot', '/hom=
e/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedd=
ed-core/meta/recipes-devtools/gcc/gcc-runtime_11.5.bb:do_populate_sysroot',=
 '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/open=
embedded-core/meta/recipes-devtools/quilt/quilt-native_0.67.bb:do_populate_=
sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yoc=
to_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/ament-cmak=
e/ament-cmake_2.7.0-1.bb:do_populate_sysroot', 'virtual:native:/home/user/M=
indteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros2=
-rolling/generated-recipes/rosidl-defaults/rosidl-default-generators_1.7.1-=
1.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/Iri=
lic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtool=
s/ninja/ninja_1.10.2.bb:do_populate_sysroot', 'virtual:native:/home/user/Mi=
ndteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/m=
eta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot', 'virtual:na=
tive:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/o=
penembedded-core/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sys=
root', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_=
AIMB288E/sources/openembedded-core/meta/recipes-devtools/python/python3_3.1=
0.15.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['std-msgs', 'builtin-inte=
rfaces', 'rosidl-default-generators', 'glibc', 'cmake-native', 'gcc-cross-x=
86_64', 'gcc-runtime', 'quilt-native', 'ament-cmake-native', 'rosidl-defaul=
t-generators-native', 'ninja-native', 'patch-native', 'pseudo-native', 'pyt=
hon3-native', 'rosidl-runtime-cpp', 'rosidl-generator-cpp', 'rosidl-typesup=
port-fastrtps-c', 'rosidl-typesupport-c', 'rosidl-runtime-c', 'python-cmake=
-module', 'fastcdr', 'rosidl-typesupport-cpp', 'rosidl-typesupport-fastrtps=
-cpp', 'rosidl-core-runtime', 'fastrtps-cmake-module', 'linux-libc-headers'=
, 'bzip2-native', 'xz-native', 'curl-native', 'zlib-native', 'zstd-native',=
 'ncurses-native', 're2c-native', 'libmpc-native', 'gmp-native', 'binutils-=
cross-x86_64', 'texinfo-dummy-native', 'libtool-native', 'flex-native', 'mp=
fr-native', 'gnu-config-native', 'attr-native', 'rosidl-core-generators-nat=
ive', 'service-msgs-native', 'ament-cmake-core-native', 'action-msgs-native=
', 'libgcc', 'sqlite3-native', 'libffi-native', 'gdbm-native', 'openssl-nat=
ive', 'libnsl2-native', 'libtirpc-native', 'readline-native', 'util-linux-l=
ibuuid-native', 'ament-cmake-export-targets-native', 'ament-cmake-export-li=
braries-native', 'ament-cmake-test-native', 'ament-cmake-python-native', 'a=
ment-cmake-export-dependencies-native', 'ament-cmake-export-link-flags-nati=
ve', 'ament-cmake-target-dependencies-native', 'ament-cmake-export-definiti=
ons-native', 'ament-cmake-version-native', 'ament-cmake-libraries-native', =
'ament-cmake-export-include-directories-native', 'ament-cmake-gen-version-h=
-native', 'ament-cmake-export-interfaces-native', 'rosidl-cmake', 'rosidl-g=
enerator-c', 'ament-index-python', 'rmw', 'rosidl-typesupport-interface', '=
rosidl-cli', 'rcutils', 'rosidl-typesupport-introspection-c', 'rcpputils', =
'rosidl-typesupport-introspection-cpp', 'rosidl-generator-py', 'gettext-min=
imal-native', 'm4-native', 'rosidl-typesupport-cpp-native', 'rosidl-generat=
or-cpp-native', 'rosidl-typesupport-fastrtps-cpp-native', 'rosidl-cmake-nat=
ive', 'rosidl-typesupport-c-native', 'rosidl-typesupport-introspection-c-na=
tive', 'rosidl-typesupport-fastrtps-c-native', 'rosidl-typesupport-introspe=
ction-cpp-native', 'rosidl-generator-c-native', 'rosidl-generator-py-native=
', 'rosidl-core-runtime-native', 'builtin-interfaces-native', 'python3-catk=
in-pkg-native', 'ament-package-native', 'unique-identifier-msgs-native', 'p=
ython3-numpy-native', 'rosidl-adapter-native', 'python3-lark-parser-native'=
, 'rosidl-parser-native', 'perl-native', 'ament-cmake-include-directories-n=
ative', 'rosidl-generator-type-description', 'python3', 'rosidl-dynamic-typ=
esupport', 'python3-numpy', 'ament-cmake-ros-native', 'rosidl-runtime-cpp-n=
ative', 'rcutils-native', 'ament-index-python-native', 'rosidl-runtime-c-na=
tive', 'rosidl-typesupport-interface-native', 'rosidl-pycommon-native', 'rc=
pputils-native', 'rosidl-generator-type-description-native', 'rosidl-cli-na=
tive', 'rmw-native', 'fastcdr-native', 'fastrtps-cmake-module-native', 'pyt=
hon3-empy-native', 'rpyutils-native', 'ament-cmake-flake8-native', 'ament-c=
make-cppcheck-native', 'ament-cmake-uncrustify-native', 'python-cmake-modul=
e-native', 'ament-cmake-pep257-native', 'ament-cmake-cpplint-native', 'pyth=
on3-setuptools-native', 'python3-pyparsing-native', 'python3-installer-nati=
ve', 'python3-wheel-native', 'python3-importlib-metadata-native', 'python3-=
cython-native', 'make-native', 'libffi', 'opkg-utils', 'xz', 'bzip2', 'sqli=
te3', 'gdbm', 'libtirpc', 'libnsl2', 'ncurses', 'readline', 'zlib', 'util-l=
inux-libuuid', 'libxcrypt', 'openssl', 'ament-cmake-pytest-native', 'ament-=
cmake-gmock-native', 'domain-coordinator-native', 'ament-cmake-gtest-native=
', 'python3-argcomplete-native', 'rosidl-dynamic-typesupport-native', 'amen=
t-flake8-native', 'ament-cppcheck-native', 'ament-uncrustify-native', 'amen=
t-pep257-native', 'ament-cpplint-native', 'unzip-native', 'python3-flit-cor=
e-native', 'python3-pathlib2-native', 'python3-zipp-native', 'python3-toml-=
native', 'python3-setuptools-scm-native', 'python3-pytest-native', 'googlet=
est-native', 'gmock-vendor-native', 'gtest-vendor-native', 'python3-flake8-=
comprehensions-native', 'ament-lint-native', 'python3-flake8-docstrings-nat=
ive', 'python3-flake8-import-order-native', 'python3-flake8-native', 'pytho=
n3-flake8-quotes-native', 'python3-flake8-builtins-native', 'cppcheck-nativ=
e', 'uncrustify-vendor-native', 'python3-pydocstyle-native', 'python3-six-n=
ative', 'python3-more-itertools-native', 'python3-tomli-native', 'python3-p=
ackaging-native', 'python3-mccabe-native', 'python3-pep8-native', 'python3-=
pyflakes-native', 'python3-cmd2-native', 'python3-prettytable-native', 'lib=
pcre-native', 'boost-native', 'uncrustify-native', 'ament-cmake-vendor-pack=
age-native', 'python3-pyperclip-native', 'boost-build-native', 'icu-native'=
, 'python3-vcstool-native', 'python3-pyyaml-native', 'libyaml-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_configure
> | -- The C compiler identification is GNU 11.5.0
> | -- The CXX compiler identification is GNU 11.5.0
> | -- Detecting C compiler ABI info
> | -- Detecting C compiler ABI info - done
> | -- Check for working C compiler: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs=
/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-li=
nux-gcc - skipped
> | -- Detecting C compile features
> | -- Detecting C compile features - done
> | -- Detecting CXX compiler ABI info
> | -- Detecting CXX compiler ABI info - done
> | -- Check for working CXX compiler: /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-ms=
gs/2.0.20-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-=
linux-g++ - skipped
> | -- Detecting CXX compile features
> | -- Detecting CXX compile features - done
> | -- Found ament_cmake: 2.7.0 (/home/user/Mindteck_Projects/Irilic/kirkst=
one_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0=
.20-1-r0/recipe-sysroot-native/opt/ros/rolling/share/ament_cmake/cmake)
> | -- Found Python3: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_A=
IMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/re=
cipe-sysroot-native/usr/bin/python3-native/python3 (found version "3.10.15"=
) found components: Interpreter
> | -- Found builtin_interfaces: 2.2.0 (/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-m=
sgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/builtin_interfaces/cma=
ke)
> | -- Found rosidl_generator_c: 4.8.1 (/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-m=
sgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_generator_c/cma=
ke)
> | -- Found rosidl_generator_cpp: 4.8.1 (/home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera=
-msgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_generator_cpp=
/cmake)
> | -- Using all available rosidl_typesupport_c: rosidl_typesupport_introsp=
ection_c;rosidl_typesupport_fastrtps_c
> | -- Using all available rosidl_typesupport_cpp: rosidl_typesupport_intro=
spection_cpp;rosidl_typesupport_fastrtps_cpp
> | -- Found rosidl_default_generators: 1.7.1 (/home/user/Mindteck_Projects=
/Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-c=
amera-msgs/2.0.20-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_default_=
generators/cmake)
> | -- Found rosidl_adapter: 4.8.1 (/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/=
2.0.20-1-r0/recipe-sysroot-native/opt/ros/rolling/share/rosidl_adapter/cmak=
e)
> | -- Found std_msgs: 5.4.1 (/home/user/Mindteck_Projects/Irilic/kirkstone=
_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20=
-1-r0/recipe-sysroot/opt/ros/rolling/share/std_msgs/cmake)
> | CMake Error at /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB=
288E/build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recip=
e-sysroot/opt/ros/rolling/share/std_msgs/cmake/ament_cmake_export_dependenc=
ies-extras.cmake:21 (find_package):
> |   By not providing "Findrosidl_default_runtime.cmake" in CMAKE_MODULE_P=
ATH
> |   this project has asked CMake to find a package configuration file pro=
vided
> |   by "rosidl_default_runtime", but CMake did not find one.
> |
> |   Could not find a package configuration file provided by
> |   "rosidl_default_runtime" with any of the following names:
> |
> |     rosidl_default_runtimeConfig.cmake
> |     rosidl_default_runtime-config.cmake
> |
> |   Add the installation prefix of "rosidl_default_runtime" to
> |   CMAKE_PREFIX_PATH or set "rosidl_default_runtime_DIR" to a directory
> |   containing one of the above files.  If "rosidl_default_runtime" provi=
des a
> |   separate development package or SDK, be sure it has been installed.
> | Call Stack (most recent call first):
> |   /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tm=
p/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/recipe-sysroot/opt=
/ros/rolling/share/std_msgs/cmake/std_msgsConfig.cmake:41 (include)
> |   CMakeLists.txt:24 (find_package)
> |
> |
> | -- Configuring incomplete, errors occurred!
> | See also "/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/=
build/tmp/work/corei7-64-poky-linux/flir-camera-msgs/2.0.20-1-r0/build/CMak=
eFiles/CMakeOutput.log".
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E=
/sources/meta-ros/meta-ros2-rolling/generated-recipes/flir-camera-driver/fl=
ir-camera-msgs_2.0.20-1.bb:do_configure) failed with exit code '1'
> WARNING: console-bridge-vendor-1.8.0-1-r0 do_populate_lic: QA Issue: cons=
ole-bridge-vendor: No generic license file exists for: BSD in any provider =
[license-exists]
> WARNING: message-filters-6.0.4-1-r0 do_populate_lic: QA Issue: message-fi=
lters: No generic license file exists for: BSD in any provider [license-exi=
sts]
> WARNING: pluginlib-5.5.1-1-r0 do_populate_lic: QA Issue: pluginlib: No ge=
neric license file exists for: BSD in any provider [license-exists]
> WARNING: class-loader-2.8.0-1-r0 do_populate_lic: QA Issue: class-loader:=
 No generic license file exists for: BSD in any provider [license-exists]
> WARNING: camera-calibration-parsers-5.3.2-1-r0 do_populate_lic: QA Issue:=
 camera-calibration-parsers: No generic license file exists for: BSD in any=
 provider [license-exists]
> WARNING: image-transport-5.3.2-1-r0 do_populate_lic: QA Issue: image-tran=
sport: No generic license file exists for: BSD in any provider [license-exi=
sts]
> WARNING: camera-info-manager-5.3.2-1-r0 do_populate_lic: QA Issue: camera=
-info-manager: No generic license file exists for: BSD in any provider [lic=
ense-exists]
> WARNING: spinnaker-camera-driver-2.0.20-1-r0 do_populate_lic: QA Issue: s=
pinnaker-camera-driver: No generic license file exists for: BSD in any prov=
ider [license-exists]
> WARNING: pybind11-vendor-3.2.0-1-r0 do_populate_lic: QA Issue: pybind11-v=
endor: No generic license file exists for: BSD in any provider [license-exi=
sts]
> WARNING: unique-identifier-msgs-2.7.0-1-r0 do_populate_lic: QA Issue: uni=
que-identifier-msgs: No generic license file exists for: BSD in any provide=
r [license-exists]
> ERROR: camera-calibration-parsers-5.3.2-1-r0 do_configure: ExecutionError=
('/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/build/tmp/wo=
rk/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/temp/run.do_c=
onfigure.190651', 1, None, None)
> ERROR: Logfile of failure stored in: /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibra=
tion-parsers/5.3.2-1-r0/temp/log.do_configure.190651
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['/home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/sources/meta-ros/meta-ros2-rolling/generated-recipes/=
common-interfaces/sensor-msgs_5.4.1-1.bb:do_populate_sysroot', '/home/user/=
Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ros/meta-ros=
2-rolling/generated-recipes/rclcpp/rclcpp_28.3.3-1.bb:do_populate_sysroot',=
 '/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta=
-ros/meta-ros2-rolling/generated-recipes/yaml-cpp-vendor/yaml-cpp-vendor_9.=
1.0-1.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirksto=
ne_yocto_AIMB288E/sources/openembedded-core/meta/recipes-core/glibc/glibc_2=
.35.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irilic/kirkstone=
_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/cmake/cmake=
-native_3.22.3.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/Irili=
c/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devtools/=
gcc/gcc-cross_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Projects/I=
rilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devto=
ols/gcc/gcc-runtime_11.5.bb:do_populate_sysroot', '/home/user/Mindteck_Proj=
ects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes=
-devtools/quilt/quilt-native_0.67.bb:do_populate_sysroot', 'virtual:native:=
/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-r=
os/meta-ros2-rolling/generated-recipes/ament-cmake-ros/ament-cmake-ros_0.13=
.0-1.bb:do_populate_sysroot', 'virtual:native:/home/user/Mindteck_Projects/=
Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-devt=
ools/ninja/ninja_1.10.2.bb:do_populate_sysroot', 'virtual:native:/home/user=
/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/openembedded-cor=
e/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot', 'virtual=
:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/source=
s/openembedded-core/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_=
sysroot', 'virtual:native:/home/user/Mindteck_Projects/Irilic/kirkstone_yoc=
to_AIMB288E/sources/openembedded-core/meta/recipes-devtools/python/python3_=
3.10.15.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['sensor-msgs', 'rclcpp', =
'yaml-cpp-vendor', 'glibc', 'cmake-native', 'gcc-cross-x86_64', 'gcc-runtim=
e', 'quilt-native', 'ament-cmake-ros-native', 'ninja-native', 'patch-native=
', 'pseudo-native', 'python3-native', 'linux-libc-headers', 'bzip2-native',=
 'xz-native', 'curl-native', 'zlib-native', 'zstd-native', 'ncurses-native'=
, 'ament-cmake-pytest-native', 'ament-cmake-gmock-native', 'domain-coordina=
tor-native', 'ament-cmake-native', 'ament-cmake-gtest-native', 'libmpc-nati=
ve', 'gmp-native', 'binutils-cross-x86_64', 'texinfo-dummy-native', 'libtoo=
l-native', 'flex-native', 'mpfr-native', 'gnu-config-native', 're2c-native'=
, 'attr-native', 'libgcc', 'yaml-cpp', 'sqlite3-native', 'libffi-native', '=
gdbm-native', 'openssl-native', 'libnsl2-native', 'libtirpc-native', 'readl=
ine-native', 'util-linux-libuuid-native', 'rosidl-runtime-cpp', 'rcpputils'=
, 'rosidl-typesupport-c', 'rosgraph-msgs', 'rcl-interfaces', 'rosidl-runtim=
e-c', 'builtin-interfaces', 'rmw', 'rcl', 'ament-index-cpp', 'rcutils', 'rc=
l-yaml-param-parser', 'rosidl-typesupport-cpp', 'rosidl-dynamic-typesupport=
', 'statistics-msgs', 'tracetools', 'rcl-logging-interface', 'libstatistics=
-collector', 'std-msgs', 'service-msgs', 'geometry-msgs', 'gettext-minimal-=
native', 'python3-pytest-native', 'ament-cmake-core-native', 'ament-cmake-t=
est-native', 'googletest-native', 'gmock-vendor-native', 'python3-setuptool=
s-native', 'ament-cmake-export-targets-native', 'ament-cmake-export-librari=
es-native', 'ament-cmake-python-native', 'ament-cmake-export-dependencies-n=
ative', 'ament-cmake-export-link-flags-native', 'ament-cmake-target-depende=
ncies-native', 'ament-cmake-export-definitions-native', 'ament-cmake-versio=
n-native', 'ament-cmake-libraries-native', 'ament-cmake-export-include-dire=
ctories-native', 'ament-cmake-gen-version-h-native', 'ament-cmake-export-in=
terfaces-native', 'gtest-vendor-native', 'm4-native', 'perl-native', 'rosid=
l-typesupport-introspection-c', 'rmw-fastrtps-shared-cpp', 'fastrtps-cmake-=
module', 'rosidl-generator-cpp', 'rosidl-typesupport-fastrtps-c', 'rmw-fast=
rtps-cpp', 'rmw-implementation', 'rosidl-typesupport-fastrtps-cpp', 'rmw-im=
plementation-cmake', 'rosidl-typesupport-interface', 'python-cmake-module',=
 'fastcdr', 'rosidl-core-runtime', 'libyaml-vendor', 'type-description-inte=
rfaces', 'libyaml', 'rcl-logging-spdlog', 'rosidl-cmake', 'rosidl-typesuppo=
rt-introspection-cpp', 'lttng-ust', 'rosidl-default-runtime', 'python3-inst=
aller-native', 'python3-wheel-native', 'python3-setuptools-scm-native', 'py=
thon3-catkin-pkg-native', 'ament-package-native', 'ament-cmake-include-dire=
ctories-native', 'make-native', 'fastrtps', 'rmw-dds-common', 'rosidl-gener=
ator-c', 'ament-index-python', 'rosidl-cli', 'rosidl-dynamic-typesupport-fa=
strtps', 'rmw-fastrtps-dynamic-cpp', 'rmw-cyclonedds-cpp', 'rosidl-generato=
r-py', 'spdlog-vendor', 'spdlog', 'util-linux', 'liburcu', 'python3', 'unzi=
p-native', 'python3-flit-core-native', 'python3-tomli-native', 'python3-pyp=
arsing-native', 'python3-packaging-native', 'python3-importlib-metadata-nat=
ive', 'libtinyxml2', 'openssl', 'asio', 'foonathan-memory-vendor', 'rosidl-=
generator-type-description', 'cyclonedds', 'iceoryx-binding-c', 'python3-nu=
mpy', 'fmt', 'ncurses', 'zlib', 'libcap-ng', 'util-linux-libuuid', 'opkg-ut=
ils', 'libxcrypt', 'bash-completion', 'libffi', 'xz', 'bzip2', 'sqlite3', '=
gdbm', 'libtirpc', 'libnsl2', 'readline', 'python3-pathlib2-native', 'pytho=
n3-zipp-native', 'python3-toml-native', 'boost', 'foonathan-memory', 'iceor=
yx-posh', 'iceoryx-hoofs', 'python3-six-native', 'python3-more-itertools-na=
tive', 'icu', 'cpptoml', 'acl', 'autoconf-archive', 'attr']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_configure
> | -- The C compiler identification is GNU 11.5.0
> | -- The CXX compiler identification is GNU 11.5.0
> | -- Detecting C compiler ABI info
> | -- Detecting C compiler ABI info - done
> | -- Check for working C compiler: /home/user/Mindteck_Projects/Irilic/ki=
rkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibrati=
on-parsers/5.3.2-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_6=
4-poky-linux-gcc - skipped
> | -- Detecting C compile features
> | -- Detecting C compile features - done
> | -- Detecting CXX compiler ABI info
> | -- Detecting CXX compiler ABI info - done
> | -- Check for working CXX compiler: /home/user/Mindteck_Projects/Irilic/=
kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibra=
tion-parsers/5.3.2-1-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86=
_64-poky-linux-g++ - skipped
> | -- Detecting CXX compile features
> | -- Detecting CXX compile features - done
> | -- Found ament_cmake_ros: 0.13.0 (/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibrat=
ion-parsers/5.3.2-1-r0/recipe-sysroot-native/opt/ros/rolling/share/ament_cm=
ake_ros/cmake)
> | -- Found Python3: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_A=
IMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.=
2-1-r0/recipe-sysroot-native/usr/bin/python3-native/python3 (found version =
"3.10.15") found components: Interpreter
> | -- Found rclcpp: 28.3.3 (/home/user/Mindteck_Projects/Irilic/kirkstone_=
yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parse=
rs/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rclcpp/cmake)
> | -- Found rosidl_generator_c: 4.8.1 (/home/user/Mindteck_Projects/Irilic=
/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibr=
ation-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_genera=
tor_c/cmake)
> | -- Found rosidl_generator_cpp: 4.8.1 (/home/user/Mindteck_Projects/Iril=
ic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-cali=
bration-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rosidl_gene=
rator_cpp/cmake)
> | -- Using all available rosidl_typesupport_c: rosidl_typesupport_introsp=
ection_c;rosidl_typesupport_fastrtps_c
> | -- Using all available rosidl_typesupport_cpp: rosidl_typesupport_intro=
spection_cpp;rosidl_typesupport_fastrtps_cpp
> | -- Found rmw_implementation_cmake: 7.4.3 (/home/user/Mindteck_Projects/=
Irilic/kirkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-=
calibration-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rmw_imp=
lementation_cmake/cmake)
> | -- Found rmw_fastrtps_cpp: 9.0.1 (/home/user/Mindteck_Projects/Irilic/k=
irkstone_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibrat=
ion-parsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/rmw_fastrtps_cp=
p/cmake)
> | -- Found OpenSSL: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_A=
IMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.=
2-1-r0/recipe-sysroot/usr/lib/libcrypto.so (found version "3.0.15")
> | -- Found FastRTPS: /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_=
AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3=
.2-1-r0/recipe-sysroot/opt/ros/rolling/include (Required is at least versio=
n "2.13")
> | -- Using RMW implementation 'rmw_fastrtps_cpp' as default
> | -- Found sensor_msgs: 5.4.1 (/home/user/Mindteck_Projects/Irilic/kirkst=
one_yocto_AIMB288E/build/tmp/work/corei7-64-poky-linux/camera-calibration-p=
arsers/5.3.2-1-r0/recipe-sysroot/opt/ros/rolling/share/sensor_msgs/cmake)
> | CMake Error at CMakeLists.txt:19 (find_package):
> |   By not providing "Findyaml_cpp_vendor.cmake" in CMAKE_MODULE_PATH thi=
s
> |   project has asked CMake to find a package configuration file provided=
 by
> |   "yaml_cpp_vendor", but CMake did not find one.
> |
> |   Could not find a package configuration file provided by "yaml_cpp_ven=
dor"
> |   with any of the following names:
> |
> |     yaml_cpp_vendorConfig.cmake
> |     yaml_cpp_vendor-config.cmake
> |
> |   Add the installation prefix of "yaml_cpp_vendor" to CMAKE_PREFIX_PATH=
 or
> |   set "yaml_cpp_vendor_DIR" to a directory containing one of the above =
files.
> |   If "yaml_cpp_vendor" provides a separate development package or SDK, =
be
> |   sure it has been installed.
> |
> |
> | -- Configuring incomplete, errors occurred!
> | See also "/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/=
build/tmp/work/corei7-64-poky-linux/camera-calibration-parsers/5.3.2-1-r0/b=
uild/CMakeFiles/CMakeOutput.log".
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E=
/sources/meta-ros/meta-ros2-rolling/generated-recipes/image-common/camera-c=
alibration-parsers_5.3.2-1.bb:do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 10681 tasks of which 10042 didn't need to =
be rerun and 2 failed.
> Summary: 2 tasks failed:
>   /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/me=
ta-ros/meta-ros2-rolling/generated-recipes/flir-camera-driver/flir-camera-m=
sgs_2.0.20-1.bb:do_configure
>   /home/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/me=
ta-ros/meta-ros2-rolling/generated-recipes/image-common/camera-calibration-=
parsers_5.3.2-1.bb:do_configure
> Summary: There were 10 WARNING messages.
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
> user@LTB-IBE2590:~/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/buil=
d$
>
>
>
> 1: How can I resolve the flir-camera-msgs-2.0.20-1-r0 do_configure: Execu=
tionError  and camera-calibration-parsers-5.3.2-1-r0 do_configure: Executio=
nError?
>
> 2: Is there an additional step required to ensure the spinnaker package i=
ntegrates successfully into the Yocto build?
>
> Any guidance would be greatly appreciated. Thank you in advance!
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64478): https://lists.yoctoproject.org/g/yocto/messag=
e/64478
> Mute This Topic: https://lists.yoctoproject.org/mt/110257024/7464883
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #cmake:https://lists.yoctoproject.org/g/yocto/mutehashtag/cmake
> Mute #distro:https://lists.yoctoproject.org/g/yocto/mutehashtag/distro
> Mute #native:https://lists.yoctoproject.org/g/yocto/mutehashtag/native
> Mute #poky:https://lists.yoctoproject.org/g/yocto/mutehashtag/poky
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yocto@ww7.be]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

