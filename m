Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CDE9E01321
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:40:11 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Oct 2011 08:40:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,485,1312182000"; d="scan'208";a="58656081"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by azsmga001.ch.intel.com with ESMTP; 04 Oct 2011 08:40:09 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Oct 2011 10:40:44 -0500
Message-Id: <fa734c750d722998af6392af8f55d4e164c0a9ea.1317740914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <e35e25b5fa73bd8f54cd11a25eb9707539f84a15.1317740914.git.tom.zanussi@intel.com>
References: <e35e25b5fa73bd8f54cd11a25eb9707539f84a15.1317740914.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317740914.git.tom.zanussi@intel.com>
References: <cover.1317740914.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4][KERNEL] meta/emenlow: enable booting from iso
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
X-List-Received-Date: Tue, 04 Oct 2011 15:40:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Include boot-live.scc to enable booting from iso.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg |    3 +++
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
index 9bc250c..d527e8d 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
@@ -64,3 +64,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_RD_GZIP=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
+
+# Needed for booting (and using) CD images
+CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
index 6e4cc40..e5b2097 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
@@ -5,6 +5,7 @@ include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-psb/drm-psb.scc
 include features/serial/8250.scc
+include cfg/boot-live.scc
 
 include features/logbuf/size-normal.scc
 
-- 
1.7.0.4


