Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDEC44C80FAD
	for <yocto@yoctoproject.org>; Mon,  8 Nov 2010 18:38:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2010 16:38:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,172,1288594800"; d="scan'208";a="346191678"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2010 16:38:13 -0800
Message-ID: <4CD897F4.9050706@linux.intel.com>
Date: Mon, 08 Nov 2010 16:38:12 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [PULL] Distro Updates and Locale Generation Change to Posix
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
X-List-Received-Date: Tue, 09 Nov 2010 00:38:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

This contains the initial set of distro updates along with some fixes
to locale generation.



Pull URL: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master
Branch: contrib/distro/master

Dexuan Cui (2):
       busybox: enable more options for tar to support more file formats.
       eglibc: install the missing /etc/ld.so.conf into target

Jiajun Xu (1):
       imagetest-qemu: Add test case for dmesg check in target

Qing He (1):
       bzip2: upgrade to version 1.0.6

Saul Wold (5):
       task-sdk-gmae: fix typo in SDK-EXTRAS and convert to ?= for 
assignment
       poky.conf: Change default locale to POSIX
       ld.so.conf: create empty file
       eglibc: add en-us locale generation
       poky.conf: Default Locale Generation

Xiaofeng Yan (1):
       LSB: Add a new package



--  meta/classes/imagetest-qemu.bbclass                       |    6
  meta/conf/distro/include/poky-eglibc.inc                  |    1
  meta/conf/distro/poky.conf                                |    8
  meta/recipes-core/busybox/busybox-1.16.2/defconfig        |   14 -
  meta/recipes-core/eglibc/eglibc-2.12/etc/ld.so.conf       |    2
  meta/recipes-core/eglibc/eglibc-package.inc               |    2
  meta/recipes-core/eglibc/eglibc_2.12.bb                   |    2
  meta/recipes-extended/bzip2/bzip2-1.0.5/Makefile.am       |   41 ----
  meta/recipes-extended/bzip2/bzip2-1.0.5/configure.ac      |   14 -
  meta/recipes-extended/bzip2/bzip2-1.0.6/Makefile.am       |   41 ++++
  meta/recipes-extended/bzip2/bzip2-1.0.6/configure.ac      |   14 +
  meta/recipes-extended/bzip2/bzip2_1.0.5.bb                |   26 --
  meta/recipes-extended/bzip2/bzip2_1.0.6.bb                |   26 ++
  meta/recipes-extended/lsb/lsb_1.4.bb                      |   83 +++++++++
  meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb            |    4
  meta/recipes-gnome/tasks/task-sdk-gmae.inc                |   12 -
  scripts/qemuimage-testlib                                 |  122 
+++++++++++++-
  scripts/qemuimage-tests/sanity/boot                       |    3
  scripts/qemuimage-tests/sanity/dmesg                      |   52 +++++
  scripts/qemuimage-tests/sanity/ssh                        |    5
  scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato  |    1
  scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk   |    1
  scripts/qemuimage-tests/scenario/qemumips/poky-image-sato |    1
  scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk  |    1
  scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato  |    1
  scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk   |    1
  scripts/qemuimage-tests/scenario/qemux86/poky-image-sato  |    1
  scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk   |    1
  scripts/qemuimage-tests/tools/dmesg.sh                    |   26 ++
  29 files changed, 398 insertions(+), 114 deletions(-)


     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


