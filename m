Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB4E0E004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 12:33:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 12:33:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="117364283"
Received: from unknown (HELO localhost) ([10.255.15.131])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2012 12:32:42 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 13 Mar 2012 14:32:23 -0500
Message-Id: <cover.1331667057.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-intel: jasperforest 3.2 update
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
X-List-Received-Date: Tue, 13 Mar 2012 19:33:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates jasperforest to the 3.2 kernel.

The following changes since commit d9132cc66316be45f44beeea6eba734bb3ab337d:
  Tom Zanussi (1):
        ia32-base: remove libc-headers PREFERRED_PROVIDER

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/jasperforest-3.2-kernel-update
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/jasperforest-3.2-kernel-update

Tom Zanussi (1):
  meta-jasperforest: switch to linux-yocto-3.2 kernel

 meta-jasperforest/conf/machine/jasperforest.conf   |    2 ++
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
 3 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend


