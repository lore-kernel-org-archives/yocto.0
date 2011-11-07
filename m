Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD19EE0137D
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 07:56:28 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Nov 2011 07:56:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,470,1315206000"; d="scan'208";a="34085756"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Nov 2011 07:56:27 -0800
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Mon,  7 Nov 2011 09:56:55 -0600
Message-Id: <6135d1d9c7ad80f40c9d343d9749b8845cef9c62.1320637311.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3cf438aafc41692895a077d01895cc7b9244479d.1320637311.git.tom.zanussi@intel.com>
References: <3cf438aafc41692895a077d01895cc7b9244479d.1320637311.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1320637311.git.tom.zanussi@intel.com>
References: <cover.1320637311.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4][KERNEL] meta/fishriver: enable hpet
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
X-List-Received-Date: Mon, 07 Nov 2011 15:56:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The fishriver reference board has HPET hardware - enable it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
index b944a70..96d7778 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
@@ -7,6 +7,7 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
+include features/hpet/hpet.scc
 include features/ericsson-3g/f5521gw.scc
 include features/framebuffer/vesafb.scc
 include cfg/usb-mass-storage.scc
-- 
1.7.0.4


