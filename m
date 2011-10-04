Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B89F5E0132B
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:40:36 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Oct 2011 08:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,485,1312182000"; d="scan'208";a="23156385"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Oct 2011 08:40:03 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Oct 2011 10:40:43 -0500
Message-Id: <e35e25b5fa73bd8f54cd11a25eb9707539f84a15.1317740914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1317740914.git.tom.zanussi@intel.com>
References: <cover.1317740914.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4][KERNEL] meta/crownbay: enable booting from iso
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
X-List-Received-Date: Tue, 04 Oct 2011 15:40:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Include boot-live.scc to enable booting from iso.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    3 +++
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index 5daa65b..8081001 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -67,3 +67,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_RD_GZIP=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
+
+# Needed for booting (and using) CD images
+CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 63b7ad6..54284b2 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -8,6 +8,7 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
+include cfg/boot-live.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


