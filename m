Return-Path: <jculver@eesaz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E19BC43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 05:33:54 +0000 (UTC)
Subject: How to enable UTF-8 locale for tmux while using external toolchain
 #dunfell #linux
To: yocto@lists.yoctoproject.org
From: "Jason C" <jculver@eesaz.com>
X-Originating-Location: Gilbert, Arizona, US (184.103.162.219)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Jul 2022 22:33:42 -0700
Message-ID: <Jtoy.1658295222136465141.v4nT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OrMu11b6WT8pwL23HReh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 05:33:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57581

--OrMu11b6WT8pwL23HReh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using the AM572x evaluation module with the TI SDK, which uses the lin=
aro toolchain. I am trying to enable UTF-8 so that I can use tmux.

I am enabling it using the follow method:

unset IMAGE_LINGUAS
GLIBC_GENERATE_LOCALES =3D "en_US.UTF-8"
IMAGE_LINGUAS =3D "en-us"

When I try to build I get an error:

ERROR: production-image-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/home/dev/tisdk/build/arago-tmp-external-arm-toolchain/work/am57xx_evm-=
linux-gnueabi/production-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg --=
volatile-cache -f /home/dev/tisdk/build/arago-tmp-external-arm-toolchain/wo=
rk/am57xx_evm-linux-gnueabi/production-image/1.0-r0/opkg.conf -t /home/dev/=
tisdk/build/arago-tmp-external-arm-toolchain/work/am57xx_evm-linux-gnueabi/=
production-image/1.0-r0/temp/ipktemp/ -o /home/dev/tisdk/build/arago-tmp-ex=
ternal-arm-toolchain/work/am57xx_evm-linux-gnueabi/production-image/1.0-r0/=
rootfs=C2=A0 --force_postinstall=C2=A0=C2=A0=C2=A0 install locale-base-en-u=
s' returned 255:
Collected errors:
* opkg_prepare_url_for_install: Couldn't find anything to satisfy 'locale-b=
ase-en-us'.
* rm_r: Failed to open dir /home/dev/tisdk/build/arago-tmp-external-arm-too=
lchain/work/am57xx_evm-linux-gnueabi/production-image/1.0-r0/temp/ipktemp//=
opkg-T1KHka: No such file or directory.

ERROR: production-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/dev/tisdk/build/arago-tmp-extern=
al-arm-toolchain/work/am57xx_evm-linux-gnueabi/production-image/1.0-r0/temp=
/log.do_rootfs.32152
ERROR: Task (/home/dev/tisdk/layers/meta-os/recipes-core/images/production-=
image.bb:do_rootfs) failed with exit code '1'

After I try to enable glibc-locale I get:
ERROR: Nothing RPROVIDES 'glibc-locale' (but /home/dev/tisdk/layers/meta-os=
/recipes-core/images/mars-tx-dev.bb RDEPENDS on or otherwise requires it)
glibc-locale was skipped: PREFERRED_PROVIDER_virtual/libc-locale set to ext=
ernal-arm-toolchain, not glibc-locale
NOTE: Runtime target 'glibc-locale' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['glibc-locale']
ERROR: Required build target 'mars-tx-dev' has no buildable providers.
Missing or unbuildable dependency chain was: ['mars-tx-dev', 'glibc-locale'=
]

I tried to force it to use glibc-locale using:
PREFERRED_PROVIDER_glibc-gconv-iso8859-1_forcevariable =3D "glibc-locale"
PREFERRED_PROVIDER_virtual/libc-locale_forcevariable =3D "glibc-locale"
PREFERRED_VERSION_glibc-locale_forcevariable =3D "2.31"
PREFERRED_VERSION_cross-localedef-native_forcevariable =3D "2.31"

But get the error:
ERROR: Nothing PROVIDES 'virtual/arm-none-linux-gnueabihf-binutils' (but /h=
ome/dev/tisdk/sources/meta-ti/recipes-kernel/linux/linux-ti-staging_5.10.bb=
 DEPENDS on or otherwise requires it)
external-arm-toolchain PROVIDES virtual/arm-none-linux-gnueabihf-binutils b=
ut was skipped: PREFERRED_PROVIDER_virtual/libc-locale set to glibc-locale,=
 not external-arm-toolchain
binutils-cross-arm PROVIDES virtual/arm-none-linux-gnueabihf-binutils but w=
as skipped: PREFERRED_PROVIDER_virtual/arm-none-linux-gnueabihf-binutils se=
t to external-arm-toolchain, not binutils-cross-arm
ERROR: Required build target 'linux-ti-staging' has no buildable providers.
Missing or unbuildable dependency chain was: ['linux-ti-staging', 'virtual/=
arm-none-linux-gnueabihf-binutils']

Any help would be appreciated, thanks!
Jason

--OrMu11b6WT8pwL23HReh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am using the <span class=3D"u-font-weight-light">AM572x evaluation module=
 with the TI SDK, which uses the linaro toolchain. I am trying to enable UT=
F-8 so that I can use tmux.<br /><br />I am enabling it using the follow me=
thod:<br /></span>
<p>unset IMAGE_LINGUAS<br />GLIBC_GENERATE_LOCALES =3D "en_US.UTF-8"<br />I=
MAGE_LINGUAS =3D "en-us"</p>
<p>When I try to build I get an error:</p>
<p>ERROR: production-image-1.0-r0 do_rootfs: Unable to install packages. Co=
mmand '/home/dev/tisdk/build/arago-tmp-external-arm-toolchain/work/am57xx_e=
vm-linux-gnueabi/production-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg=
 --volatile-cache -f /home/dev/tisdk/build/arago-tmp-external-arm-toolchain=
/work/am57xx_evm-linux-gnueabi/production-image/1.0-r0/opkg.conf -t /home/d=
ev/tisdk/build/arago-tmp-external-arm-toolchain/work/am57xx_evm-linux-gnuea=
bi/production-image/1.0-r0/temp/ipktemp/ -o /home/dev/tisdk/build/arago-tmp=
-external-arm-toolchain/work/am57xx_evm-linux-gnueabi/production-image/1.0-=
r0/rootfs&nbsp; --force_postinstall&nbsp;&nbsp;&nbsp; install locale-base-e=
n-us' returned 255:<br />Collected errors:<br />&nbsp;* opkg_prepare_url_fo=
r_install: Couldn't find anything to satisfy 'locale-base-en-us'.<br />&nbs=
p;* rm_r: Failed to open dir /home/dev/tisdk/build/arago-tmp-external-arm-t=
oolchain/work/am57xx_evm-linux-gnueabi/production-image/1.0-r0/temp/ipktemp=
//opkg-T1KHka: No such file or directory.<br /><br />ERROR: production-imag=
e-1.0-r0 do_rootfs: Function failed: do_rootfs<br />ERROR: Logfile of failu=
re stored in: /home/dev/tisdk/build/arago-tmp-external-arm-toolchain/work/a=
m57xx_evm-linux-gnueabi/production-image/1.0-r0/temp/log.do_rootfs.32152<br=
 />ERROR: Task (/home/dev/tisdk/layers/meta-os/recipes-core/images/producti=
on-image.bb:do_rootfs) failed with exit code '1'<br /><br />After I try to =
enable glibc-locale I get:<br />ERROR: Nothing RPROVIDES 'glibc-locale' (bu=
t /home/dev/tisdk/layers/meta-os/recipes-core/images/mars-tx-dev.bb RDEPEND=
S on or otherwise requires it)<br />glibc-locale was skipped: PREFERRED_PRO=
VIDER_virtual/libc-locale set to external-arm-toolchain, not glibc-locale<b=
r />NOTE: Runtime target 'glibc-locale' is unbuildable, removing...<br />Mi=
ssing or unbuildable dependency chain was: ['glibc-locale']<br />ERROR: Req=
uired build target 'mars-tx-dev' has no buildable providers.<br />Missing o=
r unbuildable dependency chain was: ['mars-tx-dev', 'glibc-locale']<br /><b=
r />I tried to force it to use glibc-locale using:<br />PREFERRED_PROVIDER_=
glibc-gconv-iso8859-1_forcevariable =3D "glibc-locale"<br />PREFERRED_PROVI=
DER_virtual/libc-locale_forcevariable =3D "glibc-locale"<br />PREFERRED_VER=
SION_glibc-locale_forcevariable =3D "2.31"<br />PREFERRED_VERSION_cross-loc=
aledef-native_forcevariable =3D "2.31"<br /><br />But get the error:<br />E=
RROR: Nothing PROVIDES 'virtual/arm-none-linux-gnueabihf-binutils' (but /ho=
me/dev/tisdk/sources/meta-ti/recipes-kernel/linux/linux-ti-staging_5.10.bb =
DEPENDS on or otherwise requires it)<br />external-arm-toolchain PROVIDES v=
irtual/arm-none-linux-gnueabihf-binutils but was skipped: PREFERRED_PROVIDE=
R_virtual/libc-locale set to glibc-locale, not external-arm-toolchain<br />=
binutils-cross-arm PROVIDES virtual/arm-none-linux-gnueabihf-binutils but w=
as skipped: PREFERRED_PROVIDER_virtual/arm-none-linux-gnueabihf-binutils se=
t to external-arm-toolchain, not binutils-cross-arm<br />ERROR: Required bu=
ild target 'linux-ti-staging' has no buildable providers.<br />Missing or u=
nbuildable dependency chain was: ['linux-ti-staging', 'virtual/arm-none-lin=
ux-gnueabihf-binutils']<br /><br />Any help would be appreciated, thanks!<b=
r />Jason</p>
<span class=3D"u-font-weight-light"></span>

--OrMu11b6WT8pwL23HReh--

