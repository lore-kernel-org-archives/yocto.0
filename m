Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 521DEE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:13:25 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 May 2012 15:13:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95224152"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by AZSMGA002.ch.intel.com with ESMTP; 01 May 2012 15:13:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:44 -0700
Message-Id: <cover.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH 0/7][meta-intel][RFC] Update n450, fri2, and sys940x to 3.2
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
X-List-Received-Date: Tue, 01 May 2012 22:13:25 -0000

These patches update the n450, fri2, and sys940x machines to the 3.2 linux-yocto
kernel. These patches have been built, booted, and usability tested on the three
platforms for the linux-yocto-3.2 kernel using the sato image. The
meta-kernel-dev layer was used to test these kernels using a local repository.

These patches are in final form with the exception of the SRCREV updates which
will be required once the corresponding linux-yocto-3.2 patches have been
committed. Once that happens I will push these to meta-intel with the
appropriate SRCREV updates.

The following changes since commit bde31fd7e66faea865d24ff0858a9006b89e4e54:

  meta-emenlow: update kernel SRCREVs (2012-04-26 15:24:31 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib dvhart/update-3.2
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/update-3.2

Darren Hart (7):
  fri2: Prefer linux-yocto 3.2
  linux-firmware: Move fri2 linux-firmware append to common
  n450: Update to linux-yocto 3.2
  sys940x: prefer xf86-input-evdev 2.6.0
  sys940x: Add product URL to README
  ia32-base.inc: Use a weak default assignment for kernel provider and
    version
  sys940x: Update to linux-yocto 3.2

 .../linux-firmware/linux-firmware_git.bbappend     |    0
 conf/machine/include/ia32-base.inc                 |    4 ++--
 meta-fri2/conf/machine/fri2-noemgd.conf            |    3 +++
 meta-fri2/conf/machine/fri2.conf                   |    3 +++
 meta-n450/conf/machine/n450.conf                   |    3 +++
 .../linux/linux-yocto-rt_3.2.bbappend              |   10 ++++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    7 +++++++
 meta-sys940x/README                                |    3 +++
 meta-sys940x/conf/machine/sys940x-noemgd.conf      |    2 ++
 meta-sys940x/conf/machine/sys940x.conf             |    3 +++
 .../linux/linux-yocto-rt_3.2.bbappend              |   12 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   15 +++++++++++++++
 12 files changed, 63 insertions(+), 2 deletions(-)
 rename {meta-fri2 => common}/recipes-kernel/linux-firmware/linux-firmware_git.bbappend (100%)
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.2.bbappend
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend

-- 
1.7.7.6


