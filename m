Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4833DE01363
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 21:37:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Mar 2012 21:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="76763177"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Mar 2012 21:37:42 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2012 23:37:34 -0500
Message-Id: <cover.1331610171.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: crownbay 3.2 update
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
X-List-Received-Date: Tue, 13 Mar 2012 04:37:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates crownbay and crownbay-noemgd to the 3.2 kernel.  It also
fixes a problem seen with a missing emgd dependency when testing.

The following changes since commit d9132cc66316be45f44beeea6eba734bb3ab337d:
  Tom Zanussi (1):
        ia32-base: remove libc-headers PREFERRED_PROVIDER

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/crownbay-kernel-3.2-switch
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/crownbay-kernel-3.2-switch

Tom Zanussi (2):
  meta-crownbay: switch to linux-yocto-3.2 kernel
  ia32-base: add libva display dependencies to emgd xserver

 conf/machine/include/ia32-base.inc                 |    3 +++
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 ++
 meta-crownbay/conf/machine/crownbay.conf           |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |   20 ++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   17 +++++++++++++++++
 5 files changed, 44 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend


