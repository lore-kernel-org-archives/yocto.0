Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6DE9E00860; Thu,  6 Nov 2014 15:09:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 496 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Nov 2014 15:09:45 PST
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64887E0084E
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 15:09:45 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id B23AA11E873
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 18:01:28 -0500 (EST)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 6FHwx02OEfdb for <yocto@yoctoproject.org>;
	Thu,  6 Nov 2014 18:01:27 -0500 (EST)
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 1965F11E868
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 18:01:27 -0500 (EST)
Received: by mail-vc0-f171.google.com with SMTP id lf12so1134176vcb.16
	for <yocto@yoctoproject.org>; Thu, 06 Nov 2014 15:01:26 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.221.20.74 with SMTP id qn10mr1763424vcb.50.1415314886398;
	Thu, 06 Nov 2014 15:01:26 -0800 (PST)
Received: by 10.31.3.220 with HTTP; Thu, 6 Nov 2014 15:01:26 -0800 (PST)
Date: Thu, 6 Nov 2014 18:01:26 -0500
Message-ID: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: ERROR: gtest not found in the base feed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Nov 2014 23:09:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'm just trying to add a recipe that I found here

https://github.com/webOS-ports/meta-webos-ports/blob/master/recipes-upstrea=
mable/gtest/gtest_1.7.0.bb

for gtest as part of my image:

bitbake -e gtest | grep ^PACKAGES=3D
PACKAGES=3D"gtest-dbg gtest-staticdev gtest-dev gtest-doc gtest-locale  gte=
st"

Adding it:
IMAGE_INSTALL +=3D "gtest"

ERROR: gtest not found in the base feeds (overo armv7a-vfp-neon
armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5
armv4 arm noarch any all).

Since in

ls tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rpms/a=
rmv7a_vfp_neon/
gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm  gtest-dev-1.7.0-r0.armv7a_vfp_neon.=
rpm

and

tree tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/packages-sp=
lit/
tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/packages-split/
=E2=94=9C=E2=94=80=E2=94=80 gtest
=E2=94=9C=E2=94=80=E2=94=80 gtest-dbg
=E2=94=9C=E2=94=80=E2=94=80 gtest-dev
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 usr
=E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 include
=E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 gtest
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-death-tes=
t.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-message.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-param-tes=
t.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest_pred_impl=
.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-printers.=
h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest_prod.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-spi.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-test-part=
.h
=E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gtest-typed-tes=
t.h
=E2=94=82       =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 internal
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-death=
-test-internal.h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-filep=
ath.h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-inter=
nal.h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-linke=
d_ptr.h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-param=
-util-generated.h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-param=
-util.h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-port.=
h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-strin=
g.h
=E2=94=82       =E2=94=82           =E2=94=9C=E2=94=80=E2=94=80 gtest-tuple=
.h
=E2=94=82       =E2=94=82           =E2=94=94=E2=94=80=E2=94=80 gtest-type-=
util.h
=E2=94=82       =E2=94=94=E2=94=80=E2=94=80 src
=E2=94=82           =E2=94=94=E2=94=80=E2=94=80 gtest
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 cmake
=E2=94=82               =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 internal_ut=
ils.cmake
=E2=94=82               =E2=94=9C=E2=94=80=E2=94=80 CMakeLists.txt
=E2=94=82               =E2=94=94=E2=94=80=E2=94=80 src
=E2=94=82                   =E2=94=9C=E2=94=80=E2=94=80 gtest-all.cc
=E2=94=82                   =E2=94=9C=E2=94=80=E2=94=80 gtest.h
=E2=94=82                   =E2=94=94=E2=94=80=E2=94=80 gtest_main.cc
=E2=94=9C=E2=94=80=E2=94=80 gtest-doc
=E2=94=9C=E2=94=80=E2=94=80 gtest-locale
=E2=94=94=E2=94=80=E2=94=80 gtest-staticdev

I replace gtest with gtest-dev.


ERROR: Unable to install packages. Command
'/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src=
/build/tmp/sysroots/x86_64-linux/usr/bin/smart
--data-dir=3D/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yoc=
to_build/src/build/tmp/work/overo-poky-linux-gnueabi/builder-console-image/=
1.0-r0/rootfs/var/lib/smart
install -y alsa-utils@armv7a_vfp_neon psplash@armv7a_vfp_neon
mtdev@armv7a_vfp_neon tar@armv7a_vfp_neon less@armv7a_vfp_neon
iputils@armv7a_vfp_neon mtd-utils-ubifs@armv7a_vfp_neon
sudo@armv7a_vfp_neon nirsd@armv7a_vfp_neon u-boot-fw-utils@overo
raw2rgbpnm@armv7a_vfp_neon vim@armv7a_vfp_neon
media-ctl@armv7a_vfp_neon findutils@armv7a_vfp_neon
rpm@armv7a_vfp_neon cpufrequtils@armv7a_vfp_neon
packagegroup-cli-tools@all bzip2@armv7a_vfp_neon
v4l-utils@armv7a_vfp_neon cmake@armv7a_vfp_neon nano@armv7a_vfp_neon
g++-symlinks@armv7a_vfp_neon gcc-dev@armv7a_vfp_neon
gcc-doc@armv7a_vfp_neon psplash-brainsight@armv7a_vfp_neon tzdata@all
coreutils@armv7a_vfp_neon g++@armv7a_vfp_neon gcov@armv7a_vfp_neon
init-ifupdown@overo tcpdump@armv7a_vfp_neon
systemd-analyze@armv7a_vfp_neon packagegroup-core-boot@overo
memtester@armv7a_vfp_neon yavta@armv7a_vfp_neon
cpp-symlinks@armv7a_vfp_neon libts-1.0-0@armv7a_vfp_neon
gcc-plugin-dev@armv7a_vfp_neon gzip@armv7a_vfp_neon
packagegroup-core-ssh-openssh@all ntp@armv7a_vfp_neon
libev4@armv7a_vfp_neon packagegroup-cli-tools-debug@all
gcc@armv7a_vfp_neon u-boot@overo cpp@armv7a_vfp_neon
gtest-dev@armv7a_vfp_neon iw@armv7a_vfp_neon wget@armv7a_vfp_neon
shadow@armv7a_vfp_neon zygoted@armv7a_vfp_neon
gcc-plugins@armv7a_vfp_neon grep@armv7a_vfp_neon zip@armv7a_vfp_neon
diffutils@armv7a_vfp_neon valgrind@armv7a_vfp_neon
linux-firmware-sd8787@all linux-firmware-sd8686@all
smartpm@armv7a_vfp_neon gcc-dbg@armv7a_vfp_neon
gcc-symlinks@armv7a_vfp_neon packagegroup-base-extended@overo
u-boot-mkimage@armv7a_vfp_neon base-passwd@armv7a_vfp_neon
locale-base-en-us@armv7a_vfp_neon' returned 1:
Loading cache...
Updating cache...               ######################################## [1=
00%]

Computing transaction...error: Can't install
gtest-dev-1.7.0-r0@armv7a_vfp_neon: no package provides gtest =3D
1.7.0-r0


ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/=
build/tmp/work/overo-poky-linux-gnueabi/builder-console-image/1.0-r0/temp/l=
og.do_rootfs.11446
ERROR: Task 7 (/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/y=
octo_build/src/poky/meta-nirs/recipes-images/gumstix/builder-console-image.=
bb,
do_rootfs) failed with exit code '1'


But I see them
ls tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rpms/a=
rmv7a_vfp_neon/
gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm  gtest-dev-1.7.0-r0.armv7a_vfp_neon.=
rpm

Any clue what I'm missing?

BR,

-KA

