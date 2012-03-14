Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42249E013E6
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 20:59:09 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2012 20:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77241074"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2012 20:59:03 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 22:58:37 -0500
Message-Id: <cover.1331696117.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: emenlow 3.2 update
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
X-List-Received-Date: Wed, 14 Mar 2012 03:59:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates emenlow to the 3.2 kernel.

The following changes since commit d9132cc66316be45f44beeea6eba734bb3ab337d:
  Tom Zanussi (1):
        ia32-base: remove libc-headers PREFERRED_PROVIDER

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emenlow-kernel-3.2-update
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emenlow-kernel-3.2-update

Tom Zanussi (1):
  meta-emenlow: switch to linux-yocto-3.2 kernel

 meta-emenlow/conf/machine/emenlow.conf             |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend


