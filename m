Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F207E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 15:46:05 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Dec 2011 15:46:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="51419757"
Received: from unknown (HELO localhost) ([10.255.13.53])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Dec 2011 15:46:03 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, raj.khem@gmail.com,
	koen@dominion.thruhere.net, kergoth@gmail.com, martin.jansa@gmail.com,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 28 Dec 2011 15:45:27 -0800
Message-Id: <cover.1325115602.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH V3 0/3] New distribution definition for poky-tiny
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
X-List-Received-Date: Wed, 28 Dec 2011 23:46:05 -0000

V3:
    o Rebase on master
    o Dependent on oe-core series "Fixes for tiny distros and linux-yocto-tiny"

RFC V2:
    o Use VIRTUAL-RUNTIME_keymaps as suggested by Martin Jansa
    o Drop poky-common abstraction as suggested by Richard Purdie in
      favor of POKY_DEFAULT_EXTRA_R* variables.

Poky-tiny defines a new distro policy for building tiny Linux images.  Rather
than create new image tasks and recipes, it reuses existing ones, modifying them
as necessary. See the poky-tiny commit log for details on the policy goals.

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

While some improvement is still needed, especially with the init scripting and
the linux-yocto-tiny integration with the linux-yocto kernel tools, this gets
us started and gets the core in place for others to start using it and help to
shape the init process, etc.

Thanks,

Darren


The following changes since commit 6cd5faddad3c69e7e81e7f66d87a3ee650ec717e:

  task-core-boot: Allow DISTRO to disable keymaps via VIRTUAL-RUNTIME_keymaps (2011-12-28 15:28:20 -0800)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/tiny-v3
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny-v3

Darren Hart (3):
  distro: Add POKY_DEFAULT_EXTRA_R* variables
  distro: Add poky-tiny distro definition
  image_types: Ensure /init exists for cpio rootfs archives

 meta-yocto/conf/distro/poky-tiny.conf |  103 +++++++++++++++++++++++++++++++++
 meta-yocto/conf/distro/poky.conf      |    8 ++-
 meta/classes/image_types.bbclass      |   10 +++-
 3 files changed, 117 insertions(+), 4 deletions(-)
 create mode 100644 meta-yocto/conf/distro/poky-tiny.conf

-- 
1.7.6.4


