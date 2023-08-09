Return-Path: <mwen@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A4A2C001B0
	for <webhook@archiver.kernel.org>; Wed,  9 Aug 2023 07:00:25 +0000 (UTC)
Subject: [Poky-Kirkstone][Ubuntu 18.04] The last poky-kirkstone can't work on ubuntu 18.04.
To: yocto@lists.yoctoproject.org
From: "Ming Wen" <mwen@ambarella.com>
X-Originating-Location: Shanghai, CN (116.246.37.178)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Aug 2023 00:00:23 -0700
Message-ID: <n9Hl.1691564423269187466.55AD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CA37DTYRrUfNSVPzGpIC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 07:00:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60757

--CA37DTYRrUfNSVPzGpIC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We're using Poky-Kirkstone for Yocto. Now we're trying to upgrade it to the=
 latest version. But sadly, hit below error when trying to use it to compil=
e the code on *ubuntu 18.04*. For comparison, ubuntu 22.04 is OK.

Through narrowing down, we found below clues. It should be caused by some o=
f recent updates to Poky.
It is appreciated if any of Yocto maintainer could help to give a quick fix=
. :)

*To make things simper, the test example is from* *official quick build man=
ual( https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.html )=
.

*

=3D=3D=3D=3D *Segmentation fault of mkfs.ext4, which is provided by the pac=
kage of e2fsprogs-native .* =3D=3D=3D=3D

jleng@jleng:~/data/cbuild-ng/build/qemux86-64$ bitbake core-image-minimal

WARNING: You are using a local hash equivalence server but have configured =
an sstate mirror. This will likely mean no sstate will match from the mirro=
r. You may wish to disable the hash equivalence use (BB_HASHSERVE), or use =
a hash equivalence server alongside the sstate mirror.

Loading cache: 100% | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA: =C2=A0--:--:--

Loaded 0 entries from dependency cache.

Parsing recipes: 100% |####################################################=
###########################################################################=
###| Time: 0:00:17

Parsing of 886 .bb files complete (0 cached, 886 parsed). 1648 targets, 45 =
skipped, 0 masked, 0 errors.

NOTE: Resolving any missing task queue dependencies

Build Configuration:

BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "2.0.0"

BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"

NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "ubuntu-18.04"

TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-poky-linux"

MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "qemux86-64"

DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"

DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "4.0.12"

TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 core2"

TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""

meta

meta-poky

meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D "kirkstone:d6b8790370500b99ca11f0d8=
a05c39b661ab2ba6"

meta-cbuild =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "main:fd1231d7002a0bd6e56=
3d80782140b7c6eb549c1"

Initialising tasks: 100% |#################################################=
###########################################################################=
###| Time: 0:00:01

Checking sstate mirror object availability: 100% |#########################=
###########################################################################=
###| Time: 0:00:05

Sstate summary: Wanted 1397 Local 647 Mirrors 0 Missed 750 Current 0 (46% m=
atch, 0% complete)

NOTE: Executing Tasks

WARNING: openssl-native-3.0.10-r0 do_fetch: Failed to fetch URL http://www.=
openssl.org/source/openssl-3.0.10.tar.gz , attempting MIRRORS if available

ERROR: core-image-minimal-1.0-r0 do_image_ext4: ExecutionError('/home/jleng=
/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-=
minimal/1.0-r0/temp/run.do_image_ext4.22796', 139, None, None)

ERROR: Logfile of failure stored in: /home/jleng/data/cbuild-ng/build/qemux=
86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do_=
image_ext4.22796

Log data follows:

| DEBUG: Executing python function extend_recipe_sysroot

| NOTE: Direct dependencies are ['/home/jleng/data/cbuild-ng/build/poky/met=
a/recipes-core/glibc/cross-localedef-native_2.35.bb:do_populate_sysroot', '=
/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/glibc/ldconfig-nati=
ve_2.12.1.bb:do_populate_sysroot', '/home/jleng/data/cbuild-ng/build/poky/m=
eta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot', '/=
home/jleng/data/cbuild-ng/build/poky/meta/recipes-kernel/kmod/depmodwrapper=
-cross_1.0.bb:do_populate_sysroot', 'virtual:native:/home/jleng/data/cbuild=
-ng/build/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate=
_sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recip=
es-devtools/createrepo-c/createrepo-c_0.19.0.bb:do_populate_sysroot', 'virt=
ual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/dnf/=
dnf_4.11.1.bb:do_populate_sysroot', 'virtual:native:/home/jleng/data/cbuild=
-ng/build/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.46.5.bb:do_popul=
ate_sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/re=
cipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot', 'virtual:na=
tive:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/opkg-utils=
/opkg-utils_0.5.0.bb:do_populate_sysroot', 'virtual:native:/home/jleng/data=
/cbuild-ng/build/poky/meta/recipes-devtools/opkg/opkg_0.5.0.bb:do_populate_=
sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipe=
s-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/home=
/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/rpm/rpm_4.17.1.bb:do=
_populate_sysroot', 'virtual:native:/home/jleng/data/cbuild-ng/build/poky/m=
eta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot', 'virtual=
:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-extended/pigz/pi=
gz_2.7.bb:do_populate_sysroot']

| NOTE: Installed into sysroot: ['e2fsprogs-native']

| NOTE: Skipping as already exists in sysroot: ['cross-localedef-native', '=
ldconfig-native', 'qemuwrapper-cross', 'depmodwrapper-cross', 'update-rc.d-=
native', 'createrepo-c-native', 'dnf-native', 'makedevs-native', 'opkg-util=
s-native', 'opkg-native', 'pseudo-native', 'rpm-native', 'pbzip2-native', '=
pigz-native', 'bzip2-native', 'librepo-native', 'gettext-minimal-native', '=
libdnf-native', 'python3-iniparse-native', 'libcomps-native', 'cmake-native=
', 'python3-native', 'perl-native', 'zlib-native', 'attr-native', 'libtool-=
native', 'texinfo-dummy-native', 'util-linux-native', 'openssl-native', 'de=
bianutils-native', 'kmod-native', 'shadow-native', 'shared-mime-info-native=
', 'file-native', 'lua-native', 'sqlite3-native', 'zstd-native', 'popt-nati=
ve', 'libgcrypt-native', 'xz-native', 'elfutils-native', 'qemu-native', 'cu=
rl-native', 'libxml2-native', 'glib-2.0-native', 'expat-native', 'libarchiv=
e-native', 'libsolv-native', 'gpgme-native', 'libmodulemd-native', 'gobject=
-introspection-native', 'libcheck-native', 'json-c-native', 'swig-native', =
'python3-six-native', 'python3-wheel-native', 'python3-setuptools-native', =
'python3-installer-native', 'ncurses-native', 'libnsl2-native', 'libffi-nat=
ive', 'libtirpc-native', 'util-linux-libuuid-native', 'gdbm-native', 'readl=
ine-native', 'make-native', 'libpcre2-native', 'libcap-ng-native', 'itstool=
-native', 'libgpg-error-native', 'libcap-native', 'libmicrohttpd-native', '=
gettext-native', 'libpcre-native', 'lzo-native', 'libassuan-native', 'libya=
ml-native', 'flex-native', 'python3-flit-core-native', 'unzip-native', 'gnu=
tls-native', 'm4-native', 'nettle-native', 'libunistring-native', 'gmp-nati=
ve', 'libidn2-native', 'gnu-config-native']

| DEBUG: sed -e 's:^[^/]*/:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/=
work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/=
:g' /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/sysroots-components/x86=
_64/e2fsprogs-native/fixmepath | xargs sed -i -e 's:FIXMESTAGINGDIRTARGET:/=
home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/c=
ore-image-minimal/1.0-r0/recipe-sysroot:g; s:FIXMESTAGINGDIRHOST:/home/jlen=
g/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image=
-minimal/1.0-r0/recipe-sysroot-native:g' -e 's:FIXME_PSEUDO_SYSROOT:/home/j=
leng/data/cbuild-ng/build/qemux86-64/tmp/sysroots-components/x86_64/pseudo-=
native:g' -e 's:FIXME_HOSTTOOLS_DIR:/home/jleng/data/cbuild-ng/build/qemux8=
6-64/tmp/hosttools:g' -e 's:FIXME_PKGDATA_DIR:/home/jleng/data/cbuild-ng/bu=
ild/qemux86-64/tmp/pkgdata/qemux86-64:g' -e 's:FIXME_PSEUDO_LOCALSTATEDIR:/=
home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/c=
ore-image-minimal/1.0-r0/pseudo/:g' -e 's:FIXME_LOGFIFO:/home/jleng/data/cb=
uild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/=
1.0-r0/temp/fifo.22796:g'

| DEBUG: Python function extend_recipe_sysroot finished

| DEBUG: Executing python function set_image_size

| DEBUG: 27409.200000 =3D 21084 * 1.300000

| DEBUG: 27409.200000 =3D max(27409.200000, 8192)[27409.200000] + 0

| DEBUG: 27410.000000 =3D int(27409.200000)

| DEBUG: 27410 =3D aligned(27410)

| DEBUG: returning 27410

| DEBUG: Python function set_image_size finished

| DEBUG: Executing shell function do_image_ext4

| DEBUG: Executing dd if=3D/dev/zero of=3D/home/jleng/data/cbuild-ng/build/=
qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deploy-=
core-image-minimal-image-complete/core-image-minimal-qemux86-64-20230808061=
549.rootfs.ext4 seek=3D27410 count=3D0 bs=3D1024

| 0+0 records in

| 0+0 records out

| 0 bytes copied, 6.4388e-05 s, 0.0 kB/s

| DEBUG: Actual Rootfs size: =C2=A019988=E2=80=82/home/jleng/data/cbuild-ng=
/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/=
rootfs

| DEBUG: Actual Partion size: 28067840

| DEBUG: Executing mkfs.ext4 -F -i 4096 /home/jleng/data/cbuild-ng/build/qe=
mux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deploy-co=
re-image-minimal-image-complete/core-image-minimal-qemux86-64-2023080806154=
9.rootfs.ext4 -d /home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux=
86_64-poky-linux/core-image-minimal/1.0-r0/rootfs

| WARNING: exit code 139 from a shell command.

| Segmentation fault (core dumped)

ERROR: Task (/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/images=
/core-image-minimal.bb:do_image_ext4) failed with exit code '1'

NOTE: Tasks Summary: Attempted 3592 tasks of which 1187 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:

/home/jleng/data/cbuild-ng/build/poky/meta/recipes-core/images/core-image-m=
inimal.bb:do_image_ext4

Summary: There were 2 WARNING messages.

Summary: There was 1 ERROR message, returning a non-zero exit code.

=3D=3D=3D=3D *I rolled back the revision of poky=C2=A0 to check the issue,=
=C2=A0 the commit of=C2=A0 " uninative: Upgrade to 3.10 to support gcc 13" =
introduced it.* =3D=3D=3D=3D

commit aab6fc20de9473d8d7f277332601cbae70c53320

Author: Michael Halstead < mhalstead@linuxfoundation.org >

Date: =C2=A0 Fri May 26 10:21:48 2023 -0700

uninative: Upgrade to 3.10 to support gcc 13

(From OE-Core rev: dbf2a81d42b48c22864f64425672315158eb99cb)

Signed-off-by: Michael Halstead < mhalstead@linuxfoundation.org >

Signed-off-by: Richard Purdie < richard.purdie@linuxfoundation.org >

(cherry picked from commit f811bffb861b23238e8291394bd6e8407f013619)

Signed-off-by: Steve Sakoman < steve@sakoman.com >

commit 51d6afc92f621657f800171a992cea7708261d31

Author: Richard Purdie < richard.purdie@linuxfoundation.org >

Date: =C2=A0 Wed Jun 7 17:27:36 2023 +0100

selftest/reproducible: Allow native/cross reuse in test

We don't compare reproducibility of the native/cross components, only the

target ones. With the long build times of rust-native, the test now takes

crazy lengths of time so this tweak should allow us to reuse native/cross

artefacts from sstate whilst still testing the target output is

reproducible.

(From OE-Core rev: 18a9596ae711ba37ac7e44e46744298ba79ae320)

Signed-off-by: Richard Purdie < richard.purdie@linuxfoundation.org >

(cherry picked from commit b494d83c639a877cefeb7cbab6d37195e492f059)

Signed-off-by: Steve Sakoman < steve@sakoman.com >

**

--CA37DTYRrUfNSVPzGpIC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br/><br/>We&#39;re using Poky-Kirkstone for Yocto. Now we&#39;re trying=
 to upgrade it to the latest version. But sadly, hit below error when tryin=
g to use it to compile the code on <strong>ubuntu 18.04</strong>. For compa=
rison, ubuntu 22.04 is OK.<br/><br/>Through narrowing down, we found below =
clues. It should be caused by some of recent updates to Poky.<br/>It is app=
reciated if any of Yocto maintainer could help to give a quick fix. :)<br/>=
<br/>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;"><strong>To make things simper, the test example=
 is from</strong>=C2=A0</span><strong><span style=3D"font-size: 12.0pt; fon=
t-family: Aptos; mso-fareast-font-family: =E7=AD=89=E7=BA=BF; mso-fareast-t=
heme-font: minor-fareast; mso-bidi-font-family: &#39;Times New Roman&#39;; =
color: black; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bi=
di-language: AR-SA;">official quick build manual(=C2=A0<a id=3D"LPlnk522337=
" href=3D"https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.h=
tml">https://docs.yoctoproject.org/4.0.11/brief-yoctoprojectqs/index.html</=
a>=C2=A0).<br/><br/></span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span class=3D"content=
pasted6"><span style=3D"font-family: Aptos; color: black; background-image:=
 initial; background-position: initial; background-size: initial; backgroun=
d-repeat: initial; background-attachment: initial; background-origin: initi=
al; background-clip: initial;">=3D=3D=3D=3D </span></span><span class=3D"co=
ntentpasted6"><strong><span style=3D"font-family: Aptos; color: black; back=
ground: yellow;">Segmentation fault of mkfs.ext4, which is provided by the =
package of e2fsprogs-native .</span></strong></span><span class=3D"contentp=
asted6"><span style=3D"font-family: Aptos; color: black; background-image: =
initial; background-position: initial; background-size: initial; background=
-repeat: initial; background-attachment: initial; background-origin: initia=
l; background-clip: initial;"> =3D=3D=3D=3D</span></span><span style=3D"fon=
t-family: Aptos; color: black;"></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">jleng@jleng:~/data/cbuild-ng/build/qemux86-64$ =
bitbake core-image-minimal </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">WARNING: You are using a local hash equivalence=
 server but have configured an sstate mirror. This will likely mean no ssta=
te will match from the mirror. You may wish to disable the hash equivalence=
 use (BB_HASHSERVE), or use a hash equivalence server alongside the sstate =
mirror.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Loading cache: 100% | =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA: =C2=
=A0--:--:--</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Loaded 0 entries from dependency cache.</span><=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Parsing recipes: 100% |########################=
###########################################################################=
###############################| Time: 0:00:17</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Parsing of 886 .bb files complete (0 cached, 88=
6 parsed). 1648 targets, 45 skipped, 0 masked, 0 errors.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">NOTE: Resolving any missing task queue dependen=
cies</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Build Configuration:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &#34;2.0.0&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &#34;x86_64-linux&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &#34;ub=
untu-18.04&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &#34;x86_64-poky-linux&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &#34;qemux86-64&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &#34;poky&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &#34;4.=
0.12&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#=
34;m64 core2&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &#34;&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &#34;ki=
rkstone:d6b8790370500b99ca11f0d8a05c39b661ab2ba6&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">meta-cbuild =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &#34;main:fd1231d7002a0bd6e563d80782140b7c6eb549c1&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Initialising tasks: 100% |#####################=
###########################################################################=
###############################| Time: 0:00:01</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Checking sstate mirror object availability: 100=
% |########################################################################=
###############################| Time: 0:00:05</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Sstate summary: Wanted 1397 Local 647 Mirrors 0=
 Missed 750 Current 0 (46% match, 0% complete)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">NOTE: Executing Tasks</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">WARNING: openssl-native-3.0.10-r0 do_fetch: Fai=
led to fetch URL <a href=3D"http://www.openssl.org/source/openssl-3.0.10.ta=
r.gz">http://www.openssl.org/source/openssl-3.0.10.tar.gz</a>, attempting M=
IRRORS if available</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">ERROR: core-image-minimal-1.0-r0 do_image_ext4:=
 ExecutionError(&#39;/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/q=
emux86_64-poky-linux/core-image-minimal/1.0-r0/temp/run.do_image_ext4.22796=
&#39;, 139, None, None)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">ERROR: Logfile of failure stored in: /home/jlen=
g/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image=
-minimal/1.0-r0/temp/log.do_image_ext4.22796</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Log data follows:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Executing python function extend_recip=
e_sysroot</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| NOTE: Direct dependencies are [&#39;/home/jle=
ng/data/cbuild-ng/build/poky/meta/recipes-core/glibc/cross-localedef-native=
_2.35.bb:do_populate_sysroot&#39;, &#39;/home/jleng/data/cbuild-ng/build/po=
ky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot&#3=
9;, &#39;/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/qemu/q=
emuwrapper-cross_1.0.bb:do_populate_sysroot&#39;, &#39;/home/jleng/data/cbu=
ild-ng/build/poky/meta/recipes-kernel/kmod/depmodwrapper-cross_1.0.bb:do_po=
pulate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/build/p=
oky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot&#3=
9;, &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-=
devtools/createrepo-c/createrepo-c_0.19.0.bb:do_populate_sysroot&#39;, &#39=
;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools=
/dnf/dnf_4.11.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jlen=
g/data/cbuild-ng/build/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.46.=
5.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-=
ng/build/poky/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_=
sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/met=
a/recipes-devtools/opkg-utils/opkg-utils_0.5.0.bb:do_populate_sysroot&#39;,=
 &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-dev=
tools/opkg/opkg_0.5.0.bb:do_populate_sysroot&#39;, &#39;virtual:native:/hom=
e/jleng/data/cbuild-ng/build/poky/meta/recipes-devtools/pseudo/pseudo_git.b=
b:do_populate_sysroot&#39;, &#39;virtual:native:/home/jleng/data/cbuild-ng/=
build/poky/meta/recipes-devtools/rpm/rpm_4.17.1.bb:do_populate_sysroot&#39;=
, &#39;virtual:native:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-ex=
tended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot&#39;, &#39;virtual:nativ=
e:/home/jleng/data/cbuild-ng/build/poky/meta/recipes-extended/pigz/pigz_2.7=
.bb:do_populate_sysroot&#39;]</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| NOTE: Installed into sysroot: [&#39;e2fsprogs=
-native&#39;]</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| NOTE: Skipping as already exists in sysroot: =
[&#39;cross-localedef-native&#39;, &#39;ldconfig-native&#39;, &#39;qemuwrap=
per-cross&#39;, &#39;depmodwrapper-cross&#39;, &#39;update-rc.d-native&#39;=
, &#39;createrepo-c-native&#39;, &#39;dnf-native&#39;, &#39;makedevs-native=
&#39;, &#39;opkg-utils-native&#39;, &#39;opkg-native&#39;, &#39;pseudo-nati=
ve&#39;, &#39;rpm-native&#39;, &#39;pbzip2-native&#39;, &#39;pigz-native&#3=
9;, &#39;bzip2-native&#39;, &#39;librepo-native&#39;, &#39;gettext-minimal-=
native&#39;, &#39;libdnf-native&#39;, &#39;python3-iniparse-native&#39;, &#=
39;libcomps-native&#39;, &#39;cmake-native&#39;, &#39;python3-native&#39;, =
&#39;perl-native&#39;, &#39;zlib-native&#39;, &#39;attr-native&#39;, &#39;l=
ibtool-native&#39;, &#39;texinfo-dummy-native&#39;, &#39;util-linux-native&=
#39;, &#39;openssl-native&#39;, &#39;debianutils-native&#39;, &#39;kmod-nat=
ive&#39;, &#39;shadow-native&#39;, &#39;shared-mime-info-native&#39;, &#39;=
file-native&#39;, &#39;lua-native&#39;, &#39;sqlite3-native&#39;, &#39;zstd=
-native&#39;, &#39;popt-native&#39;, &#39;libgcrypt-native&#39;, &#39;xz-na=
tive&#39;, &#39;elfutils-native&#39;, &#39;qemu-native&#39;, &#39;curl-nati=
ve&#39;, &#39;libxml2-native&#39;, &#39;glib-2.0-native&#39;, &#39;expat-na=
tive&#39;, &#39;libarchive-native&#39;, &#39;libsolv-native&#39;, &#39;gpgm=
e-native&#39;, &#39;libmodulemd-native&#39;, &#39;gobject-introspection-nat=
ive&#39;, &#39;libcheck-native&#39;, &#39;json-c-native&#39;, &#39;swig-nat=
ive&#39;, &#39;python3-six-native&#39;, &#39;python3-wheel-native&#39;, &#3=
9;python3-setuptools-native&#39;, &#39;python3-installer-native&#39;, &#39;=
ncurses-native&#39;, &#39;libnsl2-native&#39;, &#39;libffi-native&#39;, &#3=
9;libtirpc-native&#39;, &#39;util-linux-libuuid-native&#39;, &#39;gdbm-nati=
ve&#39;, &#39;readline-native&#39;, &#39;make-native&#39;, &#39;libpcre2-na=
tive&#39;, &#39;libcap-ng-native&#39;, &#39;itstool-native&#39;, &#39;libgp=
g-error-native&#39;, &#39;libcap-native&#39;, &#39;libmicrohttpd-native&#39=
;, &#39;gettext-native&#39;, &#39;libpcre-native&#39;, &#39;lzo-native&#39;=
, &#39;libassuan-native&#39;, &#39;libyaml-native&#39;, &#39;flex-native&#3=
9;, &#39;python3-flit-core-native&#39;, &#39;unzip-native&#39;, &#39;gnutls=
-native&#39;, &#39;m4-native&#39;, &#39;nettle-native&#39;, &#39;libunistri=
ng-native&#39;, &#39;gmp-native&#39;, &#39;libidn2-native&#39;, &#39;gnu-co=
nfig-native&#39;]</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: sed -e &#39;s:^[^/]*/:/home/jleng/data=
/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minim=
al/1.0-r0/recipe-sysroot-native/:g&#39; /home/jleng/data/cbuild-ng/build/qe=
mux86-64/tmp/sysroots-components/x86_64/e2fsprogs-native/fixmepath | xargs =
sed -i -e &#39;s:FIXMESTAGINGDIRTARGET:/home/jleng/data/cbuild-ng/build/qem=
ux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sys=
root:g; s:FIXMESTAGINGDIRHOST:/home/jleng/data/cbuild-ng/build/qemux86-64/t=
mp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-nati=
ve:g&#39; -e &#39;s:FIXME_PSEUDO_SYSROOT:/home/jleng/data/cbuild-ng/build/q=
emux86-64/tmp/sysroots-components/x86_64/pseudo-native:g&#39; -e &#39;s:FIX=
ME_HOSTTOOLS_DIR:/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/hosttools:=
g&#39; -e &#39;s:FIXME_PKGDATA_DIR:/home/jleng/data/cbuild-ng/build/qemux86=
-64/tmp/pkgdata/qemux86-64:g&#39; -e &#39;s:FIXME_PSEUDO_LOCALSTATEDIR:/hom=
e/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core=
-image-minimal/1.0-r0/pseudo/:g&#39; -e &#39;s:FIXME_LOGFIFO:/home/jleng/da=
ta/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-min=
imal/1.0-r0/temp/fifo.22796:g&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Python function extend_recipe_sysroot =
finished</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Executing python function set_image_si=
ze</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: 27409.200000 =3D 21084 * 1.300000</spa=
n></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: 27409.200000 =3D max(27409.200000, 819=
2)[27409.200000] + 0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: 27410.000000 =3D int(27409.200000)</sp=
an></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: 27410 =3D aligned(27410)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: returning 27410</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Python function set_image_size finishe=
d</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Executing shell function do_image_ext4=
</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Executing dd if=3D/dev/zero of=3D/home=
/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-=
image-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-mi=
nimal-qemux86-64-20230808061549.rootfs.ext4 seek=3D27410 count=3D0 bs=3D102=
4</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| 0+0 records in</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| 0+0 records out</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| 0 bytes copied, 6.4388e-05 s, 0.0 kB/s</span>=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Actual Rootfs size: =C2=A019988=E2=80=
=82/home/jleng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-lin=
ux/core-image-minimal/1.0-r0/rootfs</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Actual Partion size: 28067840</span></=
p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| DEBUG: Executing mkfs.ext4 -F -i 4096 /home/j=
leng/data/cbuild-ng/build/qemux86-64/tmp/work/qemux86_64-poky-linux/core-im=
age-minimal/1.0-r0/deploy-core-image-minimal-image-complete/core-image-mini=
mal-qemux86-64-20230808061549.rootfs.ext4 -d /home/jleng/data/cbuild-ng/bui=
ld/qemux86-64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/root=
fs</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| WARNING: exit code 139 from a shell command.<=
/span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">| Segmentation fault (core dumped)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">ERROR: Task (/home/jleng/data/cbuild-ng/build/p=
oky/meta/recipes-core/images/core-image-minimal.bb:do_image_ext4) failed wi=
th exit code &#39;1&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">NOTE: Tasks Summary: Attempted 3592 tasks of wh=
ich 1187 didn&#39;t need to be rerun and 1 failed.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Summary: 1 task failed:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 /home/jleng/data/cbuild-ng/build/poky/me=
ta/recipes-core/images/core-image-minimal.bb:do_image_ext4</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Summary: There were 2 WARNING messages.</span><=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Summary: There was 1 ERROR message, returning a=
 non-zero exit code.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=3D=3D=3D=3D<strong><span style=3D"background: =
yellow;"> I rolled back the revision of poky=C2=A0 to check the issue,=C2=
=A0 the commit of=C2=A0 &#34;<span class=3D"contentpasted10">uninative: Upg=
rade to 3.10 to support gcc 13&#34; introduced it.</span></span></strong><s=
pan class=3D"contentpasted10"><span style=3D"background-image: initial; bac=
kground-position: initial; background-size: initial; background-repeat: ini=
tial; background-attachment: initial; background-origin: initial; backgroun=
d-clip: initial;">=C2=A0</span></span>=3D=3D=3D=3D</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">commit aab6fc20de9473d8d7f277332601cbae70c53320=
 </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Author: Michael Halstead &lt;<a href=3D"mailto:=
mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a>&gt;</span>=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Date: =C2=A0 Fri May 26 10:21:48 2023 -0700</sp=
an></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 uninative: Upgrade to 3.10 to sup=
port gcc 13</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 (From OE-Core rev: dbf2a81d42b48c=
22864f64425672315158eb99cb)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 Signed-off-by: Michael Halstead &=
lt;<a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundati=
on.org</a>&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt=
;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linux=
foundation.org</a>&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 (cherry picked from commit f811bf=
fb861b23238e8291394bd6e8407f013619)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 Signed-off-by: Steve Sakoman &lt;=
<a href=3D"mailto:steve@sakoman.com">steve@sakoman.com</a>&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">commit 51d6afc92f621657f800171a992cea7708261d31=
</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Author: Richard Purdie &lt;<a href=3D"mailto:ri=
chard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt=
;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">Date: =C2=A0 Wed Jun 7 17:27:36 2023 +0100</spa=
n></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 selftest/reproducible: Allow nati=
ve/cross reuse in test</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 We don&#39;t compare reproducibil=
ity of the native/cross components, only the</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 target ones. With the long build =
times of rust-native, the test now takes</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 crazy lengths of time so this twe=
ak should allow us to reuse native/cross</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 artefacts from sstate whilst stil=
l testing the target output is</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 reproducible.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 (From OE-Core rev: 18a9596ae711ba=
37ac7e44e46744298ba79ae320)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt=
;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linux=
foundation.org</a>&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 (cherry picked from commit b494d8=
3c639a877cefeb7cbab6d37195e492f059)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-fa=
mily: Aptos; color: black;">=C2=A0 =C2=A0 Signed-off-by: Steve Sakoman &lt;=
<a href=3D"mailto:steve@sakoman.com">steve@sakoman.com</a>&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><strong><span style=3D=
"font-size: 12.0pt; font-family: Aptos; mso-fareast-font-family: =E7=AD=89=
=E7=BA=BF; mso-fareast-theme-font: minor-fareast; mso-bidi-font-family: &#3=
9;Times New Roman&#39;; color: black; mso-ansi-language: EN-US; mso-fareast=
-language: ZH-CN; mso-bidi-language: AR-SA;">=C2=A0</span></strong></p>

--CA37DTYRrUfNSVPzGpIC--

