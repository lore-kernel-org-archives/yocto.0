Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43D51E0120C
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2011 16:15:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2011 16:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="40060262"
Received: from unknown (HELO swold-MOBL.bigsur.com) ([10.255.14.3])
	by orsmga002.jf.intel.com with ESMTP; 21 Aug 2011 16:15:28 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sun, 21 Aug 2011 16:15:21 -0700
Message-Id: <cover.1313968374.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] Add Time-Limited-Kernel Layer to meta-intel
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
X-List-Received-Date: Sun, 21 Aug 2011 23:15:29 -0000

Tom, Darren:

This adds Bruce's changes to allow for a time limited kernel, the
default is set for 10 days.

This layer will only be added to the meta-intel BSP on the Auto-builder.

Sau!


The following changes since commit 5c41b9b6a245664543e6ddd440d10a0696caaf7b:

  n450: decouple from meta-yocto atom-pc machine config (2011-08-19 14:22:21 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel sgw/tlk
  http://git.yoctoproject.org/cgit.cgi/meta-intel/log/?h=sgw/tlk

Bruce Ashfield (1):
  meta-tlk: initial creation

 meta-tlk/README                                    |    6 ++++++
 meta-tlk/conf/layer.conf                           |    6 ++++++
 .../linux/linux-yocto/time-limited-kernel.cfg      |    3 +++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++++
 4 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-tlk/README
 create mode 100644 meta-tlk/conf/layer.conf
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto/time-limited-kernel.cfg
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend

-- 
1.7.6


