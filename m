Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C178BE00746
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:48:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2012 14:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="148568497"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by orsmga002.jf.intel.com with ESMTP; 25 May 2012 14:48:18 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 25 May 2012 16:48:50 -0500
Message-Id: <cover.1337981191.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2][KERNEL] new chiefriver BSP metadata
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
X-List-Received-Date: Fri, 25 May 2012 21:48:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset implements the initial kernel side of the chiefriver
BSP.

It also adds a 'temporary' feature needed for turning on rc6 support
from recipe-space.  The code contained in the rc6 feature is already
upstream and this feature will be dropped in the next yocto kernel,
but is needed for now in 3.2 - this is the most flexible way to add
it while giving ourselves an easy way to drop it if it causes
problems.

Please pull into linux-yocto 3.2, and also create a new
standard/default/common-pc-64/chiefriver branch for it.

Thanks,

Tom

The following changes since commit 49f931bc294d5b6be60502bbd448cff5aa766235:
  Tom Zanussi (1):
        meta/fishriver: remove redundant features and options

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/chiefriver.v2
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/chiefriver.v2

Tom Zanussi (2):
  chiefriver: create initial BSP infrastructure
  meta: add tmp/rc6 feature

 .../bsp/chiefriver/chiefriver-preempt-rt.scc       |   12 +++
 .../bsp/chiefriver/chiefriver-standard.scc         |   11 +++
 .../cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg |   35 +++++++++
 .../cfg/kernel-cache/bsp/chiefriver/chiefriver.scc |    7 ++
 .../features/tmp/rc6/rc6-kernel-params.patch       |   81 ++++++++++++++++++++
 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc     |    5 +
 .../tmp/rc6/snb-disable-rc6p-fix-precedence.patch  |   26 ++++++
 .../features/tmp/rc6/snb-disable-rc6p.patch        |   39 ++++++++++
 .../features/tmp/rc6/snb-enable-rc6.patch          |   54 +++++++++++++
 9 files changed, 270 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.scc
 create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch
 create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
 create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch
 create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch
 create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch


