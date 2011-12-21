Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B83E006B5
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 10:58:49 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2011 10:58:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="98916096"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2011 10:58:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com,
	elizabeth.flanagan@intel.com, martin.jansa@gmail.com,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Wed, 21 Dec 2011 10:58:08 -0800
Message-Id: <cover.1324493490.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [RFC PATCH V2 0/9] New distribution definition for poky-tiny
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Dec 2011 18:58:49 -0000

RFC V2:
    o Use VIRTUAL-RUNTIME_keymaps as suggested by Martin Jansa
    o Drop poky-common abstraction as suggested by Richard Purdie in
      favor of POKY_DEFAULT_EXTRA_R* variables.

Poky-tiny defines a new distro policy for building tiny Linux images.
Rather than create new image tasks and recipes, it reuses existing ones,
modifying them as necessary. I believe it defines policy appropriate for
the distribution, but I'd welcome feedback regarding the distro/image split.
Please see th poky-tiny commit log for details on the policy goals.

In its current form, poky-tiny builds a qemux86 core-image-minimal image
and kernel in 2.6 MB (compressed):

1.2M bzImage-qemux86.bin
1.4M core-image-minimal-qemux86.cpio.gz

After mounting the rootfs:

$ sudo du -hs .
3.4M    .

$ sudo ~/bin/dirsize.py 25000
[sudo] password for dvhart: 
   2927998 .
   1754686 ./lib
   1022080 ./lib/libc-2.13.so
    157124 ./lib/libm-2.13.so
    119036 ./lib/ld-2.13.so
     96128 ./lib/libpthread-2.13.so
     91960 ./lib/libnsl-2.13.so
     83748 ./lib/libresolv-2.13.so
     46656 ./lib/libnss_files-2.13.so
     34588 ./lib/libnss_compat-2.13.so
     30624 ./lib/librt-2.13.so
     26056 ./lib/libcrypt-2.13.so
    549600 ./bin
    549600 ./bin/busybox
    531908 ./sbin
    531908 ./sbin/ldconfig
     71860 ./etc
     28006 ./etc/init.d
Displayed 2789508/2927998 bytes (95.27%)

This image can be tested in qemu with:
qemu-system-i386 -kernel /build/poky/qemux86/tmp/deploy/images/bzImage-qemux86.bin -append "console=ttyS0,115200 root=0800" -nographic /build/poky/qemux86/tmp/deploy/images/core-image-minimal-qemux86.ext2

This results in booting to a busybox shell:
/bin/sh: can't access tty; job control turned off
/ # 

This series includes two patches from others that are still pending inclusion,
but are necessary to build poky-tiny images:
o native.bbclass: Fix variable remapping coverage
o license: Fix manifest conditional

The linux-yocto-tiny recipe is a placeholder until the linux-yocto_3.2 recipes
are ready for master. At that time, linux-yocto-tiny will drop all config
fragments in favor of the to-be-in-tree versions and make use of a new
yocto/standard/tiny/base branch. For now, this recipe allows us to build
poky-tiny with a reasonably small kernel.

Several of these patches are known to be suboptimal, but are included to allow
for building and testing the series as well as to illicit feedback.  Many of
these "hacks" could be avoided by defining MACHINE-tiny variants and creating a
core-image-tiny recipe and a task-core-tiny task. I'd prefer to avoid all of
those things if possible by making the existing infrastructure flexible enough
to be used with poky-tiny.

Finally, I appreciate that this series is a mix of patches destined for oe-core
and poky. I felt it would be preferable to keep it all together for the RFC, and
to CC those that I knew would be interested. The final request will be sent
piecemeal through the appropriate channels.

Thanks,

Darren

The following changes since commit dee0fc1462ba18551571c3b2d0f2b443a2feca18:

  multilib.conf: Enable shadow-sysroot and libffi (2011-12-21 17:24:44 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/tiny-v2
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny-v2

Beth Flanagan (1):
  license: Fix manifest conditional

Darren Hart (7):
  ncurses: Allow override of ENABLE_WIDEC
  eglibc: Only add eglibc-utils to PACKAGES if wchar is supported
  linux-yocto-tiny: New kernel recipe for poky-tiny distro (INCOMPLETE)
  task-core-boot: Allow DISTRO to disable keymaps via
    VIRTUAL-RUNTIME_keymaps
  distro: Add POKY_DEFAULT_EXTRA_R* variables
  distro: Add poky-tiny distro definition
  image_types: Ensure /init exists for cpio rootfs archives

Richard Purdie (1):
  native.bbclass: Fix variable remapping coverage

 meta-yocto/conf/distro/poky-tiny.conf              |  103 ++++
 meta-yocto/conf/distro/poky.conf                   |    8 +-
 meta/classes/image_types.bbclass                   |   10 +-
 meta/classes/license.bbclass                       |    4 +-
 meta/classes/native.bbclass                        |    2 +-
 meta/recipes-core/eglibc/eglibc-package.inc        |    6 +-
 meta/recipes-core/ncurses/ncurses.inc              |    2 +-
 meta/recipes-core/tasks/task-core-boot.bb          |    8 +-
 meta/recipes-devtools/autoconf/autoconf.inc        |    2 +
 meta/recipes-devtools/autoconf/autoconf_2.68.bb    |    8 -
 meta/recipes-devtools/automake/automake_1.11.1.bb  |    4 +-
 .../recipes-devtools/python/python-native_2.7.2.bb |    2 +
 meta/recipes-gnome/gnome/gconf_3.2.3.bb            |    1 +
 meta/recipes-kernel/linux/linux-yocto-tiny/ata.cfg |    9 +
 .../recipes-kernel/linux/linux-yocto-tiny/core.cfg |   19 +
 .../linux/linux-yocto-tiny/debug.cfg               |    5 +
 .../linux/linux-yocto-tiny/devtmpfs.cfg            |    6 +
 .../linux/linux-yocto-tiny/e1000.cfg               |    7 +
 .../recipes-kernel/linux/linux-yocto-tiny/ext2.cfg |    1 +
 .../recipes-kernel/linux/linux-yocto-tiny/ext3.cfg |    2 +
 .../recipes-kernel/linux/linux-yocto-tiny/lzma.cfg |    3 +
 meta/recipes-kernel/linux/linux-yocto-tiny/net.cfg |   26 +
 .../linux/linux-yocto-tiny/qemux86/defconfig       |  613 ++++++++++++++++++++
 .../linux/linux-yocto-tiny/ramfs.cfg               |    6 +
 .../linux/linux-yocto-tiny/rtc-pc.cfg              |   13 +
 .../linux/linux-yocto-tiny/serial.cfg              |    7 +
 meta/recipes-kernel/linux/linux-yocto-tiny/smp.cfg |    7 +
 meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb  |   36 ++
 meta/recipes-support/boost/boost.inc               |    1 +
 29 files changed, 897 insertions(+), 24 deletions(-)
 create mode 100644 meta-yocto/conf/distro/poky-tiny.conf
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ata.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/core.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/debug.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/devtmpfs.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/e1000.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ext2.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ext3.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/lzma.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/net.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/qemux86/defconfig
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/ramfs.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/rtc-pc.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/serial.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny/smp.cfg
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb

-- 
1.7.6.4


