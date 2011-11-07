Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F078E01371
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 07:56:23 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Nov 2011 07:56:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,470,1315206000"; d="scan'208";a="87070951"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2011 07:56:22 -0800
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Mon,  7 Nov 2011 09:56:52 -0600
Message-Id: <3cf438aafc41692895a077d01895cc7b9244479d.1320637311.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1320637311.git.tom.zanussi@intel.com>
References: <cover.1320637311.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4][KERNEL] meta/fishriver: use power/intel feature
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
X-List-Received-Date: Mon, 07 Nov 2011 15:56:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have fishriver use more power-friendly settings.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
index 2409bdd..b944a70 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
@@ -11,6 +11,7 @@ include features/ericsson-3g/f5521gw.scc
 include features/framebuffer/vesafb.scc
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
+include features/power/intel.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


