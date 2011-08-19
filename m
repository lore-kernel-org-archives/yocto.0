Return-Path: <walimisdev@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE74CE011B2
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 03:00:04 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwe5 with SMTP id 5so306100wwe.5
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 03:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=NYdQHLFtBJls1hTgeYieo8XeVlnrd1QcNI4uco0SGN4=;
	b=cff7eAG4FH7Szc2yMxDQOJ5ha8GSqL+6fL1uAp99H1sfK532CyTf//K49JrRHNEp+7
	RXt5Xc+nMLeBhmDvFRUsyLGRKfrH3ivT15cAH6E5dk1v5lWg8JG8O0Eds49lc+sUn1N2
	Idyfr7KQ+aKp892NZ0Yq5AXRojlgpbgtseSws=
Received: by 10.216.160.66 with SMTP id t44mr295731wek.56.1313748003388;
	Fri, 19 Aug 2011 03:00:03 -0700 (PDT)
Received: from localhost ([61.148.56.138])
	by mx.google.com with ESMTPS id y61sm2053979wec.30.2011.08.19.03.00.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 19 Aug 2011 03:00:02 -0700 (PDT)
From: walimis <walimisdev@gmail.com>
To: Bruce.Ashfield@windriver.com
Date: Fri, 19 Aug 2011 17:43:49 +0800
Message-Id: <1313747029-10209-1-git-send-email-walimisdev@gmail.com>
X-Mailer: git-send-email 1.7.0.4
X-Mailman-Approved-At: Fri, 19 Aug 2011 07:54:14 -0700
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH] meta: add APM Emulation option to beagleboard
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
X-List-Received-Date: Fri, 19 Aug 2011 10:00:05 -0000

From: Liming Wang <liming.wang@windriver.com>

apmd daemon needs this option to work, so add this to beagleboard
kernel config file.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
index 00485d2..56fce58 100644
--- a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
+++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
@@ -328,3 +328,8 @@ CONFIG_VIDEO_OMAP3_ISP=y
 # CONFIG_VIDEO_OMAP34XX_ISP_PREVIEWER is not set
 CONFIG_VIDEO_OMAP34XX_ISP_RESIZER=y
 # CONFIG_VIDEO_HELPER_CHIPS_AUTO is not set
+
+#
+# Advanced Power Management Emulation support
+#
+CONFIG_APM_EMULATION=y
-- 
1.7.0.4


