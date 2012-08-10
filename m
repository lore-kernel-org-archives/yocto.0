Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A28EBE0141D
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:02:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Aug 2012 12:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="179104631"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by orsmga001.jf.intel.com with ESMTP; 10 Aug 2012 12:02:32 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Fri, 10 Aug 2012 12:02:31 -0700
Message-Id: <47b0300f39752656476722d8b3efe263ab553f41.1344624483.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <10661fc3a8ea84d0f912c3ab1baa660369cb4e52.1344624483.git.kishore.k.bodke@intel.com>
References: <10661fc3a8ea84d0f912c3ab1baa660369cb4e52.1344624483.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1344624483.git.kishore.k.bodke@intel.com>
References: <cover.1344624483.git.kishore.k.bodke@intel.com>
Subject: [PATCH 3/3] [meta-intel] meta-romley: Add Matrox MGA variable to romley.conf
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
X-List-Received-Date: Fri, 10 Aug 2012 19:02:32 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Since Matrox MGA recipe is moved to common, include
the Matrox MGA varialbe to romley.conf.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-romley/conf/machine/romley.conf |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index e6a755b..f7cfa18 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -12,6 +12,5 @@ require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-           xserver-xorg-module-xaa \
-	   xf86-video-mga \
+	   ${XSERVER_IA32_MATROX_MGA} \
            "
-- 
1.7.9.5


