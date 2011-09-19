Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F350DE00522
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2011 20:35:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Sep 2011 20:35:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="49736298"
Received: from unknown (HELO localhost) ([10.255.14.162])
	by orsmga001.jf.intel.com with ESMTP; 18 Sep 2011 20:35:05 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Sun, 18 Sep 2011 22:34:48 -0500
Message-Id: <cover.1316402566.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][KERNEL] re-enable blktrace
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
X-List-Received-Date: Mon, 19 Sep 2011 03:35:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch re-adds the blktrace feature into linux-yocto-3.0.

Please pull into linux-yocto-3.0/meta.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/yocto-3.0-blktrace
  Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/yocto-3.0-blktrace

Tom Zanussi (1):
  meta: add blktrace feature

 .../kernel-cache/features/blktrace/blktrace.cfg    |    1 +
 .../kernel-cache/features/blktrace/blktrace.scc    |    1 +
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
 3 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/blktrace/blktrace.cfg
 create mode 100644 meta/cfg/kernel-cache/features/blktrace/blktrace.scc


