Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA4B3E01327
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:40:34 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Oct 2011 08:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,485,1312182000"; d="scan'208";a="58656113"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by azsmga001.ch.intel.com with ESMTP; 04 Oct 2011 08:40:13 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Oct 2011 10:40:46 -0500
Message-Id: <72f5f782cd9600abb9cd4d7604355f01a2a84e3f.1317740914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <e35e25b5fa73bd8f54cd11a25eb9707539f84a15.1317740914.git.tom.zanussi@intel.com>
References: <e35e25b5fa73bd8f54cd11a25eb9707539f84a15.1317740914.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317740914.git.tom.zanussi@intel.com>
References: <cover.1317740914.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4][KERNEL] meta/fri2: enable booting from iso
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
X-List-Received-Date: Tue, 04 Oct 2011 15:40:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Include boot-live.scc to enable booting from iso.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |    3 +++
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
index 5daa65b..8081001 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
@@ -67,3 +67,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_RD_GZIP=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
+
+# Needed for booting (and using) CD images
+CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index ff38b2d..43df3a9 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -10,6 +10,7 @@ include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
 include features/ericsson-3g/f5521gw.scc
 include features/iwlagn/iwlagn.scc
+include cfg/boot-live.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


