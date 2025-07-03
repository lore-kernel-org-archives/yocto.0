Return-Path: <ashish.shrikhande@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3E6C77B7C
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 04:06:03 +0000 (UTC)
Subject: gtk4-native compilation fails for Walnascar
To: yocto@lists.yoctoproject.org
From: "ashish shrikhande6" <ashish.shrikhande@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (167.103.2.88)
X-Originating-Platform: Windows Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Jul 2025 21:05:53 -0700
Message-ID: <Rd8G.1751515553422357316.iMT1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="P8V4gLG5Vjg2TXujjImQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 04:06:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65598

--P8V4gLG5Vjg2TXujjImQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build gtk4-native and during do_configure stage, the error I=
 get is libtiff-4 not found. My platform is RaspberryPi5 and I am trying to=
 build yocto for this. =C2=A0I am new to yocto.
I ensured libtiff-4 is installed but still somehow cmake does not find it. =
I have attached the compilation log and error is highlighted below:

DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are ['/home/ashish/raspberrypi5_latest/poky/meta/=
recipes-core/gettext/gettext-minimal-native_0.23.1.bb:do_populate_sysroot',=
 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-core/gl=
ib-2.0/glib-2.0_2.84.0.bb:do_populate_sysroot', 'virtual:native:/home/ashis=
h/raspberrypi5_latest/poky/meta/recipes-devtools/meson/meson_1.7.0.bb:do_po=
pulate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta=
/recipes-devtools/ninja/ninja_1.12.1.bb:do_populate_sysroot', 'virtual:nati=
ve:/home/ashish/raspberrypi5_latest/poky/meta/recipes-devtools/pkgconfig/pk=
gconfig_git.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberry=
pi5_latest/poky/meta/recipes-devtools/python/python3-docutils_0.21.2.bb:do_=
populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/me=
ta/recipes-devtools/python/python3_3.13.4.bb:do_populate_sysroot', 'virtual=
:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-gnome/gdk-pixbuf=
/gdk-pixbuf_2.42.12.bb:do_populate_sysroot', 'virtual:native:/home/ashish/r=
aspberrypi5_latest/poky/meta/recipes-gnome/gobject-introspection/gobject-in=
trospection_1.84.0.bb:do_populate_sysroot', 'virtual:native:/home/ashish/ra=
spberrypi5_latest/poky/meta/recipes-gnome/librsvg/librsvg_2.59.2.bb:do_popu=
late_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/r=
ecipes-graphics/cairo/cairo_1.18.4.bb:do_populate_sysroot', 'virtual:native=
:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/drm/libdrm_2.4=
.124.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_lat=
est/poky/meta/recipes-graphics/fontconfig/fontconfig_2.15.0.bb:do_populate_=
sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipe=
s-graphics/graphene/graphene_1.10.8.bb:do_populate_sysroot', 'virtual:nativ=
e:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/harfbuzz/harf=
buzz_10.4.0.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberry=
pi5_latest/poky/meta/recipes-graphics/jpeg/libjpeg-turbo_3.0.1.bb:do_popula=
te_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/rec=
ipes-graphics/libepoxy/libepoxy_1.5.10.bb:do_populate_sysroot', 'virtual:na=
tive:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/pango/pang=
o_1.56.2.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5=
_latest/poky/meta/recipes-graphics/xorg-lib/libx11_1.8.12.bb:do_populate_sy=
sroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-=
graphics/xorg-lib/libxcomposite_0.4.6.bb:do_populate_sysroot', 'virtual:nat=
ive:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/xorg-lib/li=
bxcursor_1.2.3.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspbe=
rrypi5_latest/poky/meta/recipes-graphics/xorg-lib/libxdamage_1.1.6.bb:do_po=
pulate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta=
/recipes-graphics/xorg-lib/libxext_1.3.6.bb:do_populate_sysroot', 'virtual:=
native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/xorg-lib=
/libxfixes_6.0.1.bb:do_populate_sysroot', 'virtual:native:/home/ashish/rasp=
berrypi5_latest/poky/meta/recipes-graphics/xorg-lib/libxi_1.8.2.bb:do_popul=
ate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/re=
cipes-graphics/xorg-lib/libxinerama_1.1.5.bb:do_populate_sysroot', 'virtual=
:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/xorg-li=
b/libxkbcommon_1.8.1.bb:do_populate_sysroot', 'virtual:native:/home/ashish/=
raspberrypi5_latest/poky/meta/recipes-graphics/xorg-lib/libxrandr_1.5.4.bb:=
do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky=
/meta/recipes-graphics/xorg-lib/libxrender_0.9.12.bb:do_populate_sysroot', =
'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-multimed=
ia/libpng/libpng_1.6.47.bb:do_populate_sysroot', 'virtual:native:/home/ashi=
sh/raspberrypi5_latest/poky/meta/recipes-multimedia/libtiff/tiff_4.7.0.bb:d=
o_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/=
meta/recipes-support/atk/at-spi2-core_2.56.0.bb:do_populate_sysroot', 'virt=
ual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-support/fribi=
di/fribidi_1.0.16.bb:do_populate_sysroot']
NOTE: Installed into sysroot: []
NOTE: Skipping as already exists in sysroot: ['gettext-minimal-native', 'cm=
ake-native', 'libtool-native', 'm4-native', 'texinfo-dummy-native', 'openss=
l-native', 'dbus-native', 'expat-native', 'gettext-native', 'glib-2.0-nativ=
e', 'libxml2-native', 'ncurses-native', 'util-linux-libuuid-native', 'util-=
linux-native', 'zlib-native', 'chrpath-native', 'elfutils-native', 'flex-na=
tive', 'gnu-config-native', 'libedit-native', 'llvm-native', 'make-native',=
 'meson-native', 'ninja-native', 'perl-native', 'pkgconfig-native', 'python=
3-build-native', 'python3-calver-native', 'python3-docutils-native', 'pytho=
n3-editables-native', 'python3-flit-core-native', 'python3-hatchling-native=
', 'python3-installer-native', 'python3-mako-native', 'python3-markupsafe-n=
ative', 'python3-packaging-native', 'python3-pathspec-native', 'python3-pip=
-native', 'python3-pluggy-native', 'python3-pygments-native', 'python3-pypa=
rsing-native', 'python3-pyproject-hooks-native', 'python3-setuptools-scm-na=
tive', 'python3-setuptools-native', 'python3-trove-classifiers-native', 'py=
thon3-typing-extensions-native', 'python3-wheel-native', 'python3-native', =
'cargo-c-native', 'cargo-native', 'rust-llvm-native', 'rust-native', 'vala-=
native', 'bzip2-native', 'libnsl2-native', 'libtirpc-native', 'unzip-native=
', 'xz-native', 'zstd-native', 'gdk-pixbuf-native', 'gobject-introspection-=
native', 'librsvg-native', 'cairo-native', 'libdrm-native', 'fontconfig-nat=
ive', 'freetype-native', 'graphene-native', 'harfbuzz-native', 'libjpeg-tur=
bo-native', 'libepoxy-native', 'mesa-native', 'pango-native', 'wayland-prot=
ocols-native', 'wayland-native', 'xrandr-native', 'libpciaccess-native', 'l=
ibpthread-stubs-native', 'libx11-native', 'libxau-native', 'libxcb-native',=
 'libxcomposite-native', 'libxcursor-native', 'libxdamage-native', 'libxdmc=
p-native', 'libxext-native', 'libxfixes-native', 'libxft-native', 'libxi-na=
tive', 'libxinerama-native', 'libxkbcommon-native', 'libxrandr-native', 'li=
bxrender-native', 'libxshmfence-native', 'libxtst-native', 'libxxf86vm-nati=
ve', 'pixman-native', 'xkeyboard-config-native', 'xtrans-native', 'xcb-prot=
o-native', 'xorgproto-native', 'makedepend-native', 'util-macros-native', '=
libpng-native', 'tiff-native', 'at-spi2-core-native', 'ca-certificates-nati=
ve', 'curl-native', 'fribidi-native', 'gdbm-native', 'icu-native', 'libcap-=
ng-native', 'libffi-native', 'libpcre2-native', 'libssh2-native', 'libxslt-=
native', 're2c-native', 'shared-mime-info-native', 'sqlite3-native']
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing python function externalsrc_configure_prefunc
DEBUG: Python function externalsrc_configure_prefunc finished
DEBUG: Executing python function fetcher_hashes_dummyfunc
DEBUG: Python function fetcher_hashes_dummyfunc finished
DEBUG: Executing shell function do_configure
NOTE: Executing meson -Dintrospection=3Ddisabled -Ddocumentation=3Dfalse -D=
build-tests=3Dfalse -Dbuild-testsuite=3Dfalse -Dbuild-demos=3Dfalse -Dcloud=
providers=3Ddisabled -Dcolord=3Ddisabled -Dprint-cups=3Ddisabled -Dmedia-gs=
treamer=3Ddisabled -Dtracker=3Ddisabled -Dvulkan=3Ddisabled -Dwayland-backe=
nd=3Dfalse -Dx11-backend=3Dtrue...
The Meson build system
Version: 1.7.0
Source dir: /home/ashish/raspberrypi5_latest/poky/build/workspace/sources/g=
tk4-native
Build dir: /home/ashish/raspberrypi5_latest/poky/build/tmp/work/x86_64-linu=
x/gtk4-native/4.18.1/gtk4-4.18.1
Build type: native build
Project name: gtk
Project version: 4.18.1
C compiler for the host machine: gcc (gcc 13.3.0 "gcc (Ubuntu 13.3.0-6ubunt=
u2~24.04) 13.3.0")
C linker for the host machine: gcc ld.bfd 2.42
Host machine cpu family: x86_64
Host machine cpu: x86_64
Has header "dev/evdev/input.h" : NO
Has header "ftw.h" : YES
Has header "linux/input.h" : YES
Has header "linux/memfd.h" : YES
Has header "sys/mman.h" : YES
Has header "sys/sysmacros.h" : YES
Has header "sys/time.h" : YES
Has header "unistd.h" : YES
Library m found: YES
Checking for function "getpagesize" with dependency -lm: YES
Checking for function "getresuid" with dependency -lm: YES
Checking for function "madvise" with dependency -lm: YES
Checking for function "memfd_create" with dependency -lm: YES
Checking for function "mkostemp" with dependency -lm: YES
Checking for function "mlock" with dependency -lm: YES
Checking for function "mmap" with dependency -lm: YES
Checking for function "posix_fallocate" with dependency -lm: YES
Checking for function "sincos" with dependency -lm: YES
Checking for function "sincosf" with dependency -lm: YES
Checking for function "memmem" with dependency -lm: YES
Checking if "sigsetjmp" links: YES
Checking if "__uint128_t available" compiles: YES
Compiler for C supports arguments -fno-strict-aliasing: YES
Compiler for C supports arguments -Wno-c++11-extensions: NO
Compiler for C supports arguments -Wno-missing-include-dirs: YES
Compiler for C supports arguments -Wno-typedef-redefinition: NO
Compiler for C supports arguments -Wno-tautological-constant-out-of-range-c=
ompare: NO
Compiler for C supports arguments -Wduplicated-branches: YES
Compiler for C supports arguments -Wduplicated-cond: YES
Compiler for C supports arguments -Wformat=3D2: YES
Compiler for C supports arguments -Wformat-nonliteral: YES
Compiler for C supports arguments -Wformat-security: YES
Compiler for C supports arguments -Wignored-qualifiers: YES
Compiler for C supports arguments -Wimplicit-function-declaration: YES
Compiler for C supports arguments -Wlogical-op: YES
Compiler for C supports arguments -Wmisleading-indentation: YES
Compiler for C supports arguments -Wmissing-format-attribute: YES
Compiler for C supports arguments -Wmissing-include-dirs: YES
Compiler for C supports arguments -Wmissing-noreturn: YES
Compiler for C supports arguments -Wnested-externs: YES
Compiler for C supports arguments -Wold-style-definition: YES
Compiler for C supports arguments -Wpointer-arith: YES
Compiler for C supports arguments -Wshadow: YES
Compiler for C supports arguments -Wstrict-prototypes: YES
Compiler for C supports arguments -Wswitch-default: YES
Compiler for C supports arguments -Wswitch-enum: YES
Compiler for C supports arguments -Wundef: YES
Compiler for C supports arguments -Wuninitialized: YES
Compiler for C supports arguments -Wunused: YES
Compiler for C supports arguments -Waddress: YES
Compiler for C supports arguments -Warray-bounds: YES
Compiler for C supports arguments -Wempty-body: YES
Compiler for C supports arguments -Wenum-int-mismatch: YES
Compiler for C supports arguments -Wimplicit: YES
Compiler for C supports arguments -Wimplicit-fallthrough: YES
Compiler for C supports arguments -Wimplicit-fallthrough=3D5: YES
Compiler for C supports arguments -Winit-self: YES
Compiler for C supports arguments -Wint-to-pointer-cast: YES
Compiler for C supports arguments -Wmain: YES
Compiler for C supports arguments -Wmissing-braces: YES
Compiler for C supports arguments -Wmissing-declarations: YES
Compiler for C supports arguments -Wmissing-prototypes: YES
Compiler for C supports arguments -Wnonnull: YES
Compiler for C supports arguments -Woverride-init: YES
Compiler for C supports arguments -Wpointer-to-int-cast: YES
Compiler for C supports arguments -Wredundant-decls: YES
Compiler for C supports arguments -Wreturn-type: YES
Compiler for C supports arguments -Wsequence-point: YES
Compiler for C supports arguments -Wtrigraphs: YES
Compiler for C supports arguments -Wvla: YES
Compiler for C supports arguments -Wwrite-strings: YES
Compiler for C supports arguments -Wcast-align: YES
Compiler for C supports arguments -Wnull-dereference: YES
Compiler for C supports arguments -fvisibility=3Dhidden: YES
Compiler for C supports link arguments -Wl,-Bsymbolic: YES
Compiler for C supports link arguments -Wl,-z,relro: YES
Compiler for C supports link arguments -Wl,-z,now: YES
Found pkg-config: YES (/home/ashish/raspberrypi5_latest/poky/build/tmp/work=
/x86_64-linux/gtk4-native/4.18.1/recipe-sysroot-native/usr/bin/pkg-config-n=
ative) 0.29.2
Run-time dependency glib-2.0 found: YES 2.84.0
Run-time dependency gobject-2.0 found: YES 2.84.0
Run-time dependency gio-unix-2.0 found: YES 2.84.0
Run-time dependency gmodule-2.0 found: YES 2.84.0
Run-time dependency cairo found: YES 1.18.4
Run-time dependency cairo-gobject found: YES 1.18.4
Run-time dependency pango found: YES 1.56.2
Run-time dependency fribidi found: YES 1.0.16
Run-time dependency harfbuzz found: YES 10.4.0
Run-time dependency harfbuzz-subset found: YES 10.4.0
Run-time dependency pangoft2 found: YES 1.56.2
Run-time dependency pangocairo found: YES 1.56.2
Run-time dependency gdk-pixbuf-2.0 found: YES 2.42.12
Run-time dependency libpng found: YES 1.6.47
*Found CMake: /home/ashish/raspberrypi5_latest/poky/build/tmp/work/x86_64-l=
inux/gtk4-native/4.18.1/recipe-sysroot-native/usr/bin/cmake (3.31.6)*
*Run-time dependency libtiff-4 found: NO (tried pkgconfig and cmake)*
*Run-time dependency tiff found: NO (tried pkgconfig and cmake)*
Looking for a fallback subproject for the dependency libtiff-4
../../../../../../workspace/sources/gtk4-native/meson.build:451:20: ERROR: =
Automatic wrap-based subproject downloading is disabled
A full log can be found at /home/ashish/raspberrypi5_latest/poky/build/tmp/=
work/x86_64-linux/gtk4-native/4.18.1/gtk4-4.18.1/meson-logs/meson-log.txt
ERROR: meson failed
WARNING: exit code 1 from a shell command.

--P8V4gLG5Vjg2TXujjImQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am trying to build gtk4-native and during do_configure stage, the er=
ror I get is libtiff-4 not found. My platform is RaspberryPi5 and I am tryi=
ng to build yocto for this. &nbsp;I am new to yocto.</div>
<div>I ensured libtiff-4 is installed but still somehow cmake does not find=
 it. I have attached the compilation log and error is highlighted below:</d=
iv>
<div>&nbsp;</div>
<div>
<div>DEBUG: Executing python function extend_recipe_sysroot<br />NOTE: Dire=
ct dependencies are ['/home/ashish/raspberrypi5_latest/poky/meta/recipes-co=
re/gettext/gettext-minimal-native_0.23.1.bb:do_populate_sysroot', 'virtual:=
native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-core/glib-2.0/gli=
b-2.0_2.84.0.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberr=
ypi5_latest/poky/meta/recipes-devtools/meson/meson_1.7.0.bb:do_populate_sys=
root', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-d=
evtools/ninja/ninja_1.12.1.bb:do_populate_sysroot', 'virtual:native:/home/a=
shish/raspberrypi5_latest/poky/meta/recipes-devtools/pkgconfig/pkgconfig_gi=
t.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest=
/poky/meta/recipes-devtools/python/python3-docutils_0.21.2.bb:do_populate_s=
ysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes=
-devtools/python/python3_3.13.4.bb:do_populate_sysroot', 'virtual:native:/h=
ome/ashish/raspberrypi5_latest/poky/meta/recipes-gnome/gdk-pixbuf/gdk-pixbu=
f_2.42.12.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi=
5_latest/poky/meta/recipes-gnome/gobject-introspection/gobject-introspectio=
n_1.84.0.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5=
_latest/poky/meta/recipes-gnome/librsvg/librsvg_2.59.2.bb:do_populate_sysro=
ot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-gra=
phics/cairo/cairo_1.18.4.bb:do_populate_sysroot', 'virtual:native:/home/ash=
ish/raspberrypi5_latest/poky/meta/recipes-graphics/drm/libdrm_2.4.124.bb:do=
_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/m=
eta/recipes-graphics/fontconfig/fontconfig_2.15.0.bb:do_populate_sysroot', =
'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics=
/graphene/graphene_1.10.8.bb:do_populate_sysroot', 'virtual:native:/home/as=
hish/raspberrypi5_latest/poky/meta/recipes-graphics/harfbuzz/harfbuzz_10.4.=
0.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest=
/poky/meta/recipes-graphics/jpeg/libjpeg-turbo_3.0.1.bb:do_populate_sysroot=
', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graph=
ics/libepoxy/libepoxy_1.5.10.bb:do_populate_sysroot', 'virtual:native:/home=
/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/pango/pango_1.56.2.b=
b:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/po=
ky/meta/recipes-graphics/xorg-lib/libx11_1.8.12.bb:do_populate_sysroot', 'v=
irtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/x=
org-lib/libxcomposite_0.4.6.bb:do_populate_sysroot', 'virtual:native:/home/=
ashish/raspberrypi5_latest/poky/meta/recipes-graphics/xorg-lib/libxcursor_1=
.2.3.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_lat=
est/poky/meta/recipes-graphics/xorg-lib/libxdamage_1.1.6.bb:do_populate_sys=
root', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-g=
raphics/xorg-lib/libxext_1.3.6.bb:do_populate_sysroot', 'virtual:native:/ho=
me/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/xorg-lib/libxfixes=
_6.0.1.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberrypi5_l=
atest/poky/meta/recipes-graphics/xorg-lib/libxi_1.8.2.bb:do_populate_sysroo=
t', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recipes-grap=
hics/xorg-lib/libxinerama_1.1.5.bb:do_populate_sysroot', 'virtual:native:/h=
ome/ashish/raspberrypi5_latest/poky/meta/recipes-graphics/xorg-lib/libxkbco=
mmon_1.8.1.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspberryp=
i5_latest/poky/meta/recipes-graphics/xorg-lib/libxrandr_1.5.4.bb:do_populat=
e_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/reci=
pes-graphics/xorg-lib/libxrender_0.9.12.bb:do_populate_sysroot', 'virtual:n=
ative:/home/ashish/raspberrypi5_latest/poky/meta/recipes-multimedia/libpng/=
libpng_1.6.47.bb:do_populate_sysroot', 'virtual:native:/home/ashish/raspber=
rypi5_latest/poky/meta/recipes-multimedia/libtiff/tiff_4.7.0.bb:do_populate=
_sysroot', 'virtual:native:/home/ashish/raspberrypi5_latest/poky/meta/recip=
es-support/atk/at-spi2-core_2.56.0.bb:do_populate_sysroot', 'virtual:native=
:/home/ashish/raspberrypi5_latest/poky/meta/recipes-support/fribidi/fribidi=
_1.0.16.bb:do_populate_sysroot']<br />NOTE: Installed into sysroot: []<br /=
>NOTE: Skipping as already exists in sysroot: ['gettext-minimal-native', 'c=
make-native', 'libtool-native', 'm4-native', 'texinfo-dummy-native', 'opens=
sl-native', 'dbus-native', 'expat-native', 'gettext-native', 'glib-2.0-nati=
ve', 'libxml2-native', 'ncurses-native', 'util-linux-libuuid-native', 'util=
-linux-native', 'zlib-native', 'chrpath-native', 'elfutils-native', 'flex-n=
ative', 'gnu-config-native', 'libedit-native', 'llvm-native', 'make-native'=
, 'meson-native', 'ninja-native', 'perl-native', 'pkgconfig-native', 'pytho=
n3-build-native', 'python3-calver-native', 'python3-docutils-native', 'pyth=
on3-editables-native', 'python3-flit-core-native', 'python3-hatchling-nativ=
e', 'python3-installer-native', 'python3-mako-native', 'python3-markupsafe-=
native', 'python3-packaging-native', 'python3-pathspec-native', 'python3-pi=
p-native', 'python3-pluggy-native', 'python3-pygments-native', 'python3-pyp=
arsing-native', 'python3-pyproject-hooks-native', 'python3-setuptools-scm-n=
ative', 'python3-setuptools-native', 'python3-trove-classifiers-native', 'p=
ython3-typing-extensions-native', 'python3-wheel-native', 'python3-native',=
 'cargo-c-native', 'cargo-native', 'rust-llvm-native', 'rust-native', 'vala=
-native', 'bzip2-native', 'libnsl2-native', 'libtirpc-native', 'unzip-nativ=
e', 'xz-native', 'zstd-native', 'gdk-pixbuf-native', 'gobject-introspection=
-native', 'librsvg-native', 'cairo-native', 'libdrm-native', 'fontconfig-na=
tive', 'freetype-native', 'graphene-native', 'harfbuzz-native', 'libjpeg-tu=
rbo-native', 'libepoxy-native', 'mesa-native', 'pango-native', 'wayland-pro=
tocols-native', 'wayland-native', 'xrandr-native', 'libpciaccess-native', '=
libpthread-stubs-native', 'libx11-native', 'libxau-native', 'libxcb-native'=
, 'libxcomposite-native', 'libxcursor-native', 'libxdamage-native', 'libxdm=
cp-native', 'libxext-native', 'libxfixes-native', 'libxft-native', 'libxi-n=
ative', 'libxinerama-native', 'libxkbcommon-native', 'libxrandr-native', 'l=
ibxrender-native', 'libxshmfence-native', 'libxtst-native', 'libxxf86vm-nat=
ive', 'pixman-native', 'xkeyboard-config-native', 'xtrans-native', 'xcb-pro=
to-native', 'xorgproto-native', 'makedepend-native', 'util-macros-native', =
'libpng-native', 'tiff-native', 'at-spi2-core-native', 'ca-certificates-nat=
ive', 'curl-native', 'fribidi-native', 'gdbm-native', 'icu-native', 'libcap=
-ng-native', 'libffi-native', 'libpcre2-native', 'libssh2-native', 'libxslt=
-native', 're2c-native', 'shared-mime-info-native', 'sqlite3-native']<br />=
DEBUG: Python function extend_recipe_sysroot finished<br />DEBUG: Executing=
 python function externalsrc_configure_prefunc<br />DEBUG: Python function =
externalsrc_configure_prefunc finished<br />DEBUG: Executing python functio=
n fetcher_hashes_dummyfunc<br />DEBUG: Python function fetcher_hashes_dummy=
func finished<br />DEBUG: Executing shell function do_configure<br />NOTE: =
Executing meson -Dintrospection=3Ddisabled -Ddocumentation=3Dfalse -Dbuild-=
tests=3Dfalse -Dbuild-testsuite=3Dfalse -Dbuild-demos=3Dfalse -Dcloudprovid=
ers=3Ddisabled -Dcolord=3Ddisabled -Dprint-cups=3Ddisabled -Dmedia-gstreame=
r=3Ddisabled -Dtracker=3Ddisabled -Dvulkan=3Ddisabled -Dwayland-backend=3Df=
alse -Dx11-backend=3Dtrue...<br />The Meson build system<br />Version: 1.7.=
0<br />Source dir: /home/ashish/raspberrypi5_latest/poky/build/workspace/so=
urces/gtk4-native<br />Build dir: /home/ashish/raspberrypi5_latest/poky/bui=
ld/tmp/work/x86_64-linux/gtk4-native/4.18.1/gtk4-4.18.1<br />Build type: na=
tive build<br />Project name: gtk<br />Project version: 4.18.1<br />C compi=
ler for the host machine: gcc (gcc 13.3.0 "gcc (Ubuntu 13.3.0-6ubuntu2~24.0=
4) 13.3.0")<br />C linker for the host machine: gcc ld.bfd 2.42<br />Host m=
achine cpu family: x86_64<br />Host machine cpu: x86_64<br />Has header "de=
v/evdev/input.h" : NO&nbsp;<br />Has header "ftw.h" : YES&nbsp;<br />Has he=
ader "linux/input.h" : YES&nbsp;<br />Has header "linux/memfd.h" : YES&nbsp=
;<br />Has header "sys/mman.h" : YES&nbsp;<br />Has header "sys/sysmacros.h=
" : YES&nbsp;<br />Has header "sys/time.h" : YES&nbsp;<br />Has header "uni=
std.h" : YES&nbsp;<br />Library m found: YES<br />Checking for function "ge=
tpagesize" with dependency -lm: YES&nbsp;<br />Checking for function "getre=
suid" with dependency -lm: YES&nbsp;<br />Checking for function "madvise" w=
ith dependency -lm: YES&nbsp;<br />Checking for function "memfd_create" wit=
h dependency -lm: YES&nbsp;<br />Checking for function "mkostemp" with depe=
ndency -lm: YES&nbsp;<br />Checking for function "mlock" with dependency -l=
m: YES&nbsp;<br />Checking for function "mmap" with dependency -lm: YES&nbs=
p;<br />Checking for function "posix_fallocate" with dependency -lm: YES&nb=
sp;<br />Checking for function "sincos" with dependency -lm: YES&nbsp;<br /=
>Checking for function "sincosf" with dependency -lm: YES&nbsp;<br />Checki=
ng for function "memmem" with dependency -lm: YES&nbsp;<br />Checking if "s=
igsetjmp" links: YES&nbsp;<br />Checking if "__uint128_t available" compile=
s: YES&nbsp;<br />Compiler for C supports arguments -fno-strict-aliasing: Y=
ES&nbsp;<br />Compiler for C supports arguments -Wno-c++11-extensions: NO&n=
bsp;<br />Compiler for C supports arguments -Wno-missing-include-dirs: YES&=
nbsp;<br />Compiler for C supports arguments -Wno-typedef-redefinition: NO&=
nbsp;<br />Compiler for C supports arguments -Wno-tautological-constant-out=
-of-range-compare: NO&nbsp;<br />Compiler for C supports arguments -Wduplic=
ated-branches: YES&nbsp;<br />Compiler for C supports arguments -Wduplicate=
d-cond: YES&nbsp;<br />Compiler for C supports arguments -Wformat=3D2: YES&=
nbsp;<br />Compiler for C supports arguments -Wformat-nonliteral: YES&nbsp;=
<br />Compiler for C supports arguments -Wformat-security: YES&nbsp;<br />C=
ompiler for C supports arguments -Wignored-qualifiers: YES&nbsp;<br />Compi=
ler for C supports arguments -Wimplicit-function-declaration: YES&nbsp;<br =
/>Compiler for C supports arguments -Wlogical-op: YES&nbsp;<br />Compiler f=
or C supports arguments -Wmisleading-indentation: YES&nbsp;<br />Compiler f=
or C supports arguments -Wmissing-format-attribute: YES&nbsp;<br />Compiler=
 for C supports arguments -Wmissing-include-dirs: YES&nbsp;<br />Compiler f=
or C supports arguments -Wmissing-noreturn: YES&nbsp;<br />Compiler for C s=
upports arguments -Wnested-externs: YES&nbsp;<br />Compiler for C supports =
arguments -Wold-style-definition: YES&nbsp;<br />Compiler for C supports ar=
guments -Wpointer-arith: YES&nbsp;<br />Compiler for C supports arguments -=
Wshadow: YES&nbsp;<br />Compiler for C supports arguments -Wstrict-prototyp=
es: YES&nbsp;<br />Compiler for C supports arguments -Wswitch-default: YES&=
nbsp;<br />Compiler for C supports arguments -Wswitch-enum: YES&nbsp;<br />=
Compiler for C supports arguments -Wundef: YES&nbsp;<br />Compiler for C su=
pports arguments -Wuninitialized: YES&nbsp;<br />Compiler for C supports ar=
guments -Wunused: YES&nbsp;<br />Compiler for C supports arguments -Waddres=
s: YES&nbsp;<br />Compiler for C supports arguments -Warray-bounds: YES&nbs=
p;<br />Compiler for C supports arguments -Wempty-body: YES&nbsp;<br />Comp=
iler for C supports arguments -Wenum-int-mismatch: YES&nbsp;<br />Compiler =
for C supports arguments -Wimplicit: YES&nbsp;<br />Compiler for C supports=
 arguments -Wimplicit-fallthrough: YES&nbsp;<br />Compiler for C supports a=
rguments -Wimplicit-fallthrough=3D5: YES&nbsp;<br />Compiler for C supports=
 arguments -Winit-self: YES&nbsp;<br />Compiler for C supports arguments -W=
int-to-pointer-cast: YES&nbsp;<br />Compiler for C supports arguments -Wmai=
n: YES&nbsp;<br />Compiler for C supports arguments -Wmissing-braces: YES&n=
bsp;<br />Compiler for C supports arguments -Wmissing-declarations: YES&nbs=
p;<br />Compiler for C supports arguments -Wmissing-prototypes: YES&nbsp;<b=
r />Compiler for C supports arguments -Wnonnull: YES&nbsp;<br />Compiler fo=
r C supports arguments -Woverride-init: YES&nbsp;<br />Compiler for C suppo=
rts arguments -Wpointer-to-int-cast: YES&nbsp;<br />Compiler for C supports=
 arguments -Wredundant-decls: YES&nbsp;<br />Compiler for C supports argume=
nts -Wreturn-type: YES&nbsp;<br />Compiler for C supports arguments -Wseque=
nce-point: YES&nbsp;<br />Compiler for C supports arguments -Wtrigraphs: YE=
S&nbsp;<br />Compiler for C supports arguments -Wvla: YES&nbsp;<br />Compil=
er for C supports arguments -Wwrite-strings: YES&nbsp;<br />Compiler for C =
supports arguments -Wcast-align: YES&nbsp;<br />Compiler for C supports arg=
uments -Wnull-dereference: YES&nbsp;<br />Compiler for C supports arguments=
 -fvisibility=3Dhidden: YES&nbsp;<br />Compiler for C supports link argumen=
ts -Wl,-Bsymbolic: YES&nbsp;<br />Compiler for C supports link arguments -W=
l,-z,relro: YES&nbsp;<br />Compiler for C supports link arguments -Wl,-z,no=
w: YES&nbsp;<br />Found pkg-config: YES (/home/ashish/raspberrypi5_latest/p=
oky/build/tmp/work/x86_64-linux/gtk4-native/4.18.1/recipe-sysroot-native/us=
r/bin/pkg-config-native) 0.29.2<br />Run-time dependency glib-2.0 found: YE=
S 2.84.0<br />Run-time dependency gobject-2.0 found: YES 2.84.0<br />Run-ti=
me dependency gio-unix-2.0 found: YES 2.84.0<br />Run-time dependency gmodu=
le-2.0 found: YES 2.84.0<br />Run-time dependency cairo found: YES 1.18.4<b=
r />Run-time dependency cairo-gobject found: YES 1.18.4<br />Run-time depen=
dency pango found: YES 1.56.2<br />Run-time dependency fribidi found: YES 1=
.0.16<br />Run-time dependency harfbuzz found: YES 10.4.0<br />Run-time dep=
endency harfbuzz-subset found: YES 10.4.0<br />Run-time dependency pangoft2=
 found: YES 1.56.2<br />Run-time dependency pangocairo found: YES 1.56.2<br=
 />Run-time dependency gdk-pixbuf-2.0 found: YES 2.42.12<br />Run-time depe=
ndency libpng found: YES 1.6.47<br /><strong>Found CMake: /home/ashish/rasp=
berrypi5_latest/poky/build/tmp/work/x86_64-linux/gtk4-native/4.18.1/recipe-=
sysroot-native/usr/bin/cmake (3.31.6)</strong><br /><strong>Run-time depend=
ency libtiff-4 found: NO (tried pkgconfig and cmake)</strong><br /><strong>=
Run-time dependency tiff found: NO (tried pkgconfig and cmake)</strong><br =
/>Looking for a fallback subproject for the dependency libtiff-4</div>
<div>../../../../../../workspace/sources/gtk4-native/meson.build:451:20: ER=
ROR: Automatic wrap-based subproject downloading is disabled</div>
<div>A full log can be found at /home/ashish/raspberrypi5_latest/poky/build=
/tmp/work/x86_64-linux/gtk4-native/4.18.1/gtk4-4.18.1/meson-logs/meson-log.=
txt<br />ERROR: meson failed<br />WARNING: exit code 1 from a shell command=
.</div>
</div>

--P8V4gLG5Vjg2TXujjImQ--

