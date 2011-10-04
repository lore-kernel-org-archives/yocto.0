Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9DE0E01328
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:40:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2011 08:40:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,485,1312182000"; d="scan'208";a="74419415"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2011 08:40:12 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Oct 2011 10:40:45 -0500
Message-Id: <45ed9e96f4e975e0ac4ebb4f2b068679eaea28a5.1317740914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <e35e25b5fa73bd8f54cd11a25eb9707539f84a15.1317740914.git.tom.zanussi@intel.com>
References: <e35e25b5fa73bd8f54cd11a25eb9707539f84a15.1317740914.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317740914.git.tom.zanussi@intel.com>
References: <cover.1317740914.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4][KERNEL] meta/fishriver: enable booting from iso
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
X-List-Received-Date: Tue, 04 Oct 2011 15:40:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Include boot-live.scc to enable booting from iso.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg |    3 +++
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
index 5daa65b..8081001 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
@@ -67,3 +67,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_RD_GZIP=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
+
+# Needed for booting (and using) CD images
+CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
index 696ccf7..355302b 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
@@ -8,6 +8,7 @@ include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
 include features/ericsson-3g/f5521gw.scc
+include cfg/boot-live.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


