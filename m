Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BFF14C800A9
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2011 11:26:02 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jul 2011 09:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,509,1304319600"; d="scan'208";a="26195291"
Received: from unknown (HELO localhost) ([10.255.13.195])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2011 09:26:01 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun, 10 Jul 2011 11:25:52 -0500
Message-Id: <cover.1310314386.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/3][KERNEL] linux-yocto-dev meta updates
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
X-List-Received-Date: Sun, 10 Jul 2011 16:26:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds a new eg20t feature to linux-yocto-dev, and
makes crownbay use it.

It also adds the initial BSP infrastructure for a new BSP, Fish
River Island II, which also uses the new feature.

Please pull the following branches into linux-yocto-dev:

Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/linux-3.0/yocto/standard/fri2
  Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/linux-3.0/yocto/standard/fri2

Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/linux-3.0/meta/fri2
  Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/linux-3.0/meta/fri2

Tom Zanussi (3):
  meta: add eg20t feature
  meta/crownbay: remove eg20t.cfg and use new eg20t feature instead
  meta/fri2: create initial BSP infrastructure

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc  |    2 +-
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc |    7 ++
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg          |   69 ++++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc          |   12 ++++
 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg   |   39 ++++++++++++
 meta/cfg/kernel-cache/features/eg20t/eg20t.scc   |    1 +
 6 files changed, 129 insertions(+), 1 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2.scc
 create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
 create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.scc


